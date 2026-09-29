.class public Lnet/oneplus/h2launcher/Folder;
.super Landroid/widget/LinearLayout;
.source "Folder.java"

# interfaces
.implements Lnet/oneplus/h2launcher/DragSource;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lnet/oneplus/h2launcher/DropTarget;
.implements Lnet/oneplus/h2launcher/FolderInfo$FolderListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lnet/oneplus/h2launcher/DragController$DragListener;
.implements Lnet/oneplus/h2launcher/UninstallDropTarget$UninstallSource;
.implements Lnet/oneplus/h2launcher/Stats$LaunchSourceProvider;
.implements Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$AccessibilityDragSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/Folder$SuppressInfoChanges;
    }
.end annotation


# static fields
.field private static final BACKGROUND_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final ICON_OVERSCROLL_WIDTH_FACTOR:F = 0.4f

.field public static final ITEM_POS_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final ON_DRAG_ENTER_EXIT_CLOSE_DELAY:I = 0x4b0

.field private static final ON_EXIT_CLOSE_DELAY:I = 0x190

.field private static final REORDER_DELAY:I = 0xfa

.field public static final SCROLL_HINT_DURATION:I = 0x1f4

.field static final STATE_ANIMATING:I = 0x1

.field static final STATE_NONE:I = -0x1

.field static final STATE_OPEN:I = 0x2

.field static final STATE_SMALL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Launcher.Folder"

.field private static sDefaultFolderName:Ljava/lang/String;

.field private static sFolderNameHintColor:I

.field private static sFolderNameTextColor:I

.field static sHintText:Ljava/lang/String;


# instance fields
.field private mAdjustAnim:Landroid/animation/ValueAnimator;

.field mAutoScrollHelper:Lnet/oneplus/h2launcher/FolderAutoScrollHelper;

.field mContent:Lnet/oneplus/h2launcher/FolderContent;

.field private mCurrentAnimation:Landroid/animation/AnimatorSet;

.field private mCurrentDragInfo:Lnet/oneplus/h2launcher/ShortcutInfo;

.field private mCurrentDragView:Landroid/view/View;

.field private mDeferDropAfterUninstall:Z

.field mDeferredAction:Ljava/lang/Runnable;

.field private mDeleteFolderOnDropCompleted:Z

.field private mDestroyed:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field protected mDragController:Lnet/oneplus/h2launcher/DragController;

.field private mDragInProgress:Z

.field mEmptyCellRank:I

.field private mFirstEnterIconRearrange:Z

.field mFolderIcon:Lnet/oneplus/h2launcher/FolderIcon;

.field mFolderIconPivotX:F

.field mFolderIconPivotY:F

.field public mFolderName:Lnet/oneplus/h2launcher/ExtendedEditText;

.field public mFolderNameText:Landroid/widget/TextView;

.field private mFolderScrollBar:Lnet/oneplus/h2launcher/FolderScrollBar;

.field private final mHitRectExtendArea:F

.field public mInfo:Lnet/oneplus/h2launcher/FolderInfo;

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsDeferDragOnDragStart:Z

.field private mIsEditingName:Z

.field private mIsExternalDrag:Z

.field private mIsIconRearrangeMode:Z

.field private mItemAddedBackToSelfViaIcon:Z

.field final mItemInfoInReadingOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mItemsInReadingOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mItemsInvalidated:Z

.field protected final mLauncher:Lnet/oneplus/h2launcher/Launcher;

.field private final mOnExitAlarm:Lnet/oneplus/h2launcher/Alarm;

.field mOnExitAlarmListener:Lnet/oneplus/h2launcher/OnAlarmListener;

.field mPrevTargetRank:I

.field private mRearrangeOnClose:Z

.field private final mReorderAlarm:Lnet/oneplus/h2launcher/Alarm;

.field mReorderAlarmListener:Lnet/oneplus/h2launcher/OnAlarmListener;

.field private mReorderOnScrolledToEdge:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field mScrollView:Lnet/oneplus/h2launcher/FolderScrollView;

.field mState:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "STATE_NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "STATE_SMALL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "STATE_ANIMATING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "STATE_OPEN"
            .end subannotation
        }
    .end annotation
.end field

.field private mSuppressFolderDeletion:Z

.field mTargetRank:I

.field private mUninstallSuccessful:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const v3, 0x3e4ccccd    # 0.2f

    .line 87
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lnet/oneplus/h2launcher/Folder;->BACKGROUND_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 1274
    new-instance v0, Lnet/oneplus/h2launcher/Folder$14;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/Folder$14;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/Folder;->ITEM_POS_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 166
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    new-instance v1, Lnet/oneplus/h2launcher/Alarm;

    invoke-direct {v1}, Lnet/oneplus/h2launcher/Alarm;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mReorderAlarm:Lnet/oneplus/h2launcher/Alarm;

    .line 96
    new-instance v1, Lnet/oneplus/h2launcher/Alarm;

    invoke-direct {v1}, Lnet/oneplus/h2launcher/Alarm;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mOnExitAlarm:Lnet/oneplus/h2launcher/Alarm;

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mItemInfoInReadingOrder:Ljava/util/ArrayList;

    .line 116
    iput v3, p0, Lnet/oneplus/h2launcher/Folder;->mEmptyCellRank:I

    .line 118
    iput v3, p0, Lnet/oneplus/h2launcher/Folder;->mState:I

    .line 126
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Folder;->mReorderOnScrolledToEdge:Z

    .line 128
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Folder;->mRearrangeOnClose:Z

    .line 129
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Folder;->mItemsInvalidated:Z

    .line 133
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Folder;->mDragInProgress:Z

    .line 134
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Folder;->mDeleteFolderOnDropCompleted:Z

    .line 135
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Folder;->mSuppressFolderDeletion:Z

    .line 136
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Folder;->mItemAddedBackToSelfViaIcon:Z

    .line 139
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Folder;->mIsEditingName:Z

    .line 147
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Folder;->mIsDeferDragOnDragStart:Z

    .line 150
    iput-boolean v4, p0, Lnet/oneplus/h2launcher/Folder;->mFirstEnterIconRearrange:Z

    .line 151
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Folder;->mIsIconRearrangeMode:Z

    .line 157
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mAdjustAnim:Landroid/animation/ValueAnimator;

    .line 602
    new-instance v1, Lnet/oneplus/h2launcher/Folder$5;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/Folder$5;-><init>(Lnet/oneplus/h2launcher/Folder;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mReorderAlarmListener:Lnet/oneplus/h2launcher/OnAlarmListener;

    .line 673
    new-instance v1, Lnet/oneplus/h2launcher/Folder$6;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/Folder$6;-><init>(Lnet/oneplus/h2launcher/Folder;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mOnExitAlarmListener:Lnet/oneplus/h2launcher/OnAlarmListener;

    .line 167
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/Folder;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 169
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 171
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 173
    .local v0, "res":Landroid/content/res/Resources;
    sget-object v1, Lnet/oneplus/h2launcher/Folder;->sDefaultFolderName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 174
    const v1, 0x7f0b0054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lnet/oneplus/h2launcher/Folder;->sDefaultFolderName:Ljava/lang/String;

    .line 176
    :cond_0
    sget-object v1, Lnet/oneplus/h2launcher/Folder;->sHintText:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 177
    const v1, 0x7f0b0053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lnet/oneplus/h2launcher/Folder;->sHintText:Ljava/lang/String;

    .line 180
    :cond_1
    const v1, 0x7f0e023a

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 180
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    sput v1, Lnet/oneplus/h2launcher/Folder;->sFolderNameTextColor:I

    .line 182
    const v1, 0x7f0e0133

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    sput v1, Lnet/oneplus/h2launcher/Folder;->sFolderNameHintColor:I

    .line 184
    check-cast p1, Lnet/oneplus/h2launcher/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lnet/oneplus/h2launcher/Folder;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 188
    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/Folder;->setFocusableInTouchMode(Z)V

    .line 190
    const/high16 v1, 0x3e800000    # 0.25f

    iget-object v2, p0, Lnet/oneplus/h2launcher/Folder;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v2

    iget v2, v2, Lnet/oneplus/h2launcher/DeviceProfile;->iconSizePx:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iput v1, p0, Lnet/oneplus/h2launcher/Folder;->mHitRectExtendArea:F

    .line 191
    return-void
.end method

.method static synthetic access$002(Lnet/oneplus/h2launcher/Folder;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Folder;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/Folder;->mIsEditingName:Z

    return p1
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/Folder;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Folder;

    .prologue
    .line 61
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Folder;->adjustFolderPosition()V

    return-void
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/Folder;)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Folder;

    .prologue
    .line 61
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Folder;->mIsIconRearrangeMode:Z

    return v0
.end method

.method private adjustFolderPosition()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 384
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->getItemCount()I

    move-result v4

    const/16 v5, 0x8

    if-le v4, v5, :cond_0

    .line 402
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v4, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/FolderContent;->getItemHeight()F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v1, v4, 0x3

    .line 389
    .local v1, "minHeight":I
    iget-boolean v4, p0, Lnet/oneplus/h2launcher/Folder;->mIsEditingName:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/FolderContent;->getMinimumHeight()I

    move-result v2

    .line 390
    .local v2, "startMinHeight":I
    :goto_1
    iget-boolean v4, p0, Lnet/oneplus/h2launcher/Folder;->mIsEditingName:Z

    if-eqz v4, :cond_2

    move v0, v1

    .line 392
    .local v0, "endMinHeight":I
    :goto_2
    iget-object v4, p0, Lnet/oneplus/h2launcher/Folder;->mAdjustAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 393
    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v2, v4, v3

    const/4 v3, 0x1

    aput v0, v4, v3

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lnet/oneplus/h2launcher/Folder;->mAdjustAnim:Landroid/animation/ValueAnimator;

    .line 394
    iget-object v3, p0, Lnet/oneplus/h2launcher/Folder;->mAdjustAnim:Landroid/animation/ValueAnimator;

    new-instance v4, Lnet/oneplus/h2launcher/Folder$2;

    invoke-direct {v4, p0}, Lnet/oneplus/h2launcher/Folder$2;-><init>(Lnet/oneplus/h2launcher/Folder;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 400
    iget-object v3, p0, Lnet/oneplus/h2launcher/Folder;->mAdjustAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xaf

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ecccccd    # 0.4f

    const/4 v6, 0x0

    const v7, 0x3f19999a    # 0.6f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 401
    iget-object v3, p0, Lnet/oneplus/h2launcher/Folder;->mAdjustAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .end local v0    # "endMinHeight":I
    .end local v2    # "startMinHeight":I
    :cond_1
    move v2, v1

    .line 389
    goto :goto_1

    .restart local v2    # "startMinHeight":I
    :cond_2
    move v0, v3

    .line 390
    goto :goto_2
.end method

.method private beginDrag(Landroid/view/View;Z)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "accessible"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 242
    .local v1, "tag":Ljava/lang/Object;
    instance-of v4, v1, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v4, :cond_2

    move-object v0, v1

    .line 243
    check-cast v0, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 244
    .local v0, "item":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 262
    .end local v0    # "item":Lnet/oneplus/h2launcher/ShortcutInfo;
    :goto_0
    return v2

    .line 248
    .restart local v0    # "item":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_0
    iget-object v4, p0, Lnet/oneplus/h2launcher/Folder;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v4

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v4, p1, v5, p0, p2}, Lnet/oneplus/h2launcher/Workspace;->beginDragShared(Landroid/view/View;Landroid/graphics/Point;Lnet/oneplus/h2launcher/DragSource;Z)V

    .line 249
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v4

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/oos/StyleManager;->showSearchBar()Z

    move-result v4

    if-nez v4, :cond_1

    .line 250
    iget-object v4, p0, Lnet/oneplus/h2launcher/Folder;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->enterSpringLoadedDragMode()V

    .line 253
    :cond_1
    iput-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mCurrentDragInfo:Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 254
    iget v4, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->rank:I

    iput v4, p0, Lnet/oneplus/h2launcher/Folder;->mEmptyCellRank:I

    .line 255
    iput-object p1, p0, Lnet/oneplus/h2launcher/Folder;->mCurrentDragView:Landroid/view/View;

    .line 257
    iget-object v4, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    iget-object v5, p0, Lnet/oneplus/h2launcher/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/FolderContent;->removeItem(Landroid/view/View;)V

    .line 258
    iget-object v4, p0, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    iget-object v5, p0, Lnet/oneplus/h2launcher/Folder;->mCurrentDragInfo:Lnet/oneplus/h2launcher/ShortcutInfo;

    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/FolderInfo;->remove(Lnet/oneplus/h2launcher/ShortcutInfo;)V

    .line 259
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/Folder;->mDragInProgress:Z

    .line 260
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Folder;->mItemAddedBackToSelfViaIcon:Z

    .end local v0    # "item":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_2
    move v2, v3

    .line 262
    goto :goto_0
.end method

.method private clearDragInfo()V
    .locals 1

    .prologue
    .line 695
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mCurrentDragView:Landroid/view/View;

    .line 696
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/Folder;->mIsExternalDrag:Z

    .line 697
    return-void
.end method

.method public static fromXml(Lnet/oneplus/h2launcher/Launcher;)Lnet/oneplus/h2launcher/Folder;
    .locals 3
    .param p0, "launcher"    # Lnet/oneplus/h2launcher/Launcher;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 504
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400ce

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/Folder;

    return-object v0
.end method

.method private getTargetRank(Lnet/oneplus/h2launcher/DropTarget$DragObject;[F)I
    .locals 4
    .param p1, "d"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;
    .param p2, "recycle"    # [F

    .prologue
    .line 620
    invoke-virtual {p1, p2}, Lnet/oneplus/h2launcher/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object p2

    .line 621
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    const/4 v1, 0x0

    aget v1, p2, v1

    float-to-int v1, v1

    .line 622
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    aget v2, p2, v2

    float-to-int v2, v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/Folder;->mScrollView:Lnet/oneplus/h2launcher/FolderScrollView;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/FolderScrollView;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 621
    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/FolderContent;->findNearestArea(II)I

    move-result v0

    return v0
.end method

.method private performAutoScroll(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V
    .locals 10
    .param p1, "d"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;

    .prologue
    const/4 v9, 0x1

    .line 658
    iget-object v2, p0, Lnet/oneplus/h2launcher/Folder;->mReorderAlarm:Lnet/oneplus/h2launcher/Alarm;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Alarm;->cancelAlarm()V

    .line 659
    iget v2, p0, Lnet/oneplus/h2launcher/Folder;->mEmptyCellRank:I

    iput v2, p0, Lnet/oneplus/h2launcher/Folder;->mTargetRank:I

    .line 661
    iget-object v2, p0, Lnet/oneplus/h2launcher/Folder;->mAutoScrollHelper:Lnet/oneplus/h2launcher/FolderAutoScrollHelper;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/FolderAutoScrollHelper;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 662
    iget-object v2, p0, Lnet/oneplus/h2launcher/Folder;->mAutoScrollHelper:Lnet/oneplus/h2launcher/FolderAutoScrollHelper;

    invoke-virtual {v2, v9}, Lnet/oneplus/h2launcher/FolderAutoScrollHelper;->setEnabled(Z)Landroid/support/v4/widget/AutoScrollHelper;

    .line 664
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 665
    .local v0, "downTime":J
    const/4 v4, 0x2

    iget v2, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->x:I

    int-to-float v5, v2

    iget v2, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->y:I

    int-to-float v6, v2

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 667
    .local v8, "translatedEv":Landroid/view/MotionEvent;
    iget-object v2, p0, Lnet/oneplus/h2launcher/Folder;->mAutoScrollHelper:Lnet/oneplus/h2launcher/FolderAutoScrollHelper;

    invoke-virtual {v2, p0, v8}, Lnet/oneplus/h2launcher/FolderAutoScrollHelper;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 668
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 670
    iput-boolean v9, p0, Lnet/oneplus/h2launcher/Folder;->mReorderOnScrolledToEdge:Z

    .line 671
    return-void
.end method

.method private playIconRearrangeAnimation(Z)V
    .locals 18
    .param p1, "isEnter"    # Z

    .prologue
    .line 1346
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1349
    .local v2, "animation":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/Folder;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/Folder;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 1350
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/Folder;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1353
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/Folder;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1356
    .local v3, "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/Folder;->getWidth()I

    move-result v12

    .local v12, "folderWidth":I
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/Folder;->getHeight()I

    move-result v11

    .line 1357
    .local v11, "folderHeight":I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 1358
    .local v5, "backgroundWidth":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/Folder;->mFirstEnterIconRearrange:Z

    move/from16 v16, v0

    if-nez v16, :cond_4

    int-to-float v0, v5

    move/from16 v16, v0

    int-to-float v0, v12

    move/from16 v17, v0

    div-float v15, v16, v17

    .line 1359
    .local v15, "startScale":F
    :goto_0
    if-eqz p1, :cond_6

    const/high16 v10, 0x3f800000    # 1.0f

    .line 1360
    .local v10, "endScale":F
    :goto_1
    cmpl-float v16, v15, v10

    if-eqz v16, :cond_1

    .line 1361
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v15, v16, v17

    const/16 v17, 0x1

    aput v10, v16, v17

    invoke-static/range {v16 .. v16}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 1362
    .local v4, "backgroundScaleAnim":Landroid/animation/ValueAnimator;
    new-instance v16, Lnet/oneplus/h2launcher/Folder$15;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v11, v3}, Lnet/oneplus/h2launcher/Folder$15;-><init>(Lnet/oneplus/h2launcher/Folder;IILandroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1373
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1374
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnet/oneplus/h2launcher/Folder;->mFirstEnterIconRearrange:Z

    .line 1378
    .end local v4    # "backgroundScaleAnim":Landroid/animation/ValueAnimator;
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v13

    .line 1379
    .local v13, "startAlpha":I
    if-eqz p1, :cond_7

    const/16 v8, 0xff

    .line 1380
    .local v8, "endAlpha":I
    :goto_2
    if-eq v8, v13, :cond_2

    .line 1381
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v13, v16, v17

    const/16 v17, 0x1

    aput v8, v16, v17

    invoke-static/range {v16 .. v16}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 1382
    .local v6, "drawableAlphaAnim":Landroid/animation/ValueAnimator;
    new-instance v16, Lnet/oneplus/h2launcher/Folder$16;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lnet/oneplus/h2launcher/Folder$16;-><init>(Lnet/oneplus/h2launcher/Folder;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1389
    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1393
    .end local v6    # "drawableAlphaAnim":Landroid/animation/ValueAnimator;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/Folder;->getElevation()F

    move-result v14

    .line 1394
    .local v14, "startElevation":F
    if-eqz p1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0c02b0

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    move/from16 v0, v16

    int-to-float v9, v0

    .line 1395
    .local v9, "endElevation":F
    :goto_3
    if-eq v8, v13, :cond_3

    .line 1396
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v14, v16, v17

    const/16 v17, 0x1

    aput v9, v16, v17

    invoke-static/range {v16 .. v16}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 1397
    .local v7, "elevationAnim":Landroid/animation/ValueAnimator;
    new-instance v16, Lnet/oneplus/h2launcher/Folder$17;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/Folder$17;-><init>(Lnet/oneplus/h2launcher/Folder;)V

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1403
    invoke-virtual {v2, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1406
    .end local v7    # "elevationAnim":Landroid/animation/ValueAnimator;
    :cond_3
    const-wide/16 v16, 0xe1

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1407
    sget-object v16, Lnet/oneplus/h2launcher/Folder;->BACKGROUND_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1408
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1409
    move-object/from16 v0, p0

    iput-object v2, v0, Lnet/oneplus/h2launcher/Folder;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 1410
    return-void

    .line 1358
    .end local v8    # "endAlpha":I
    .end local v9    # "endElevation":F
    .end local v10    # "endScale":F
    .end local v13    # "startAlpha":I
    .end local v14    # "startElevation":F
    .end local v15    # "startScale":F
    :cond_4
    if-eqz p1, :cond_5

    const v15, 0x3f4ccccd    # 0.8f

    goto/16 :goto_0

    :cond_5
    const/high16 v15, 0x3f800000    # 1.0f

    goto/16 :goto_0

    .line 1359
    .restart local v15    # "startScale":F
    :cond_6
    const v10, 0x3f4ccccd    # 0.8f

    goto/16 :goto_1

    .line 1379
    .restart local v10    # "endScale":F
    .restart local v13    # "startAlpha":I
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 1394
    .restart local v8    # "endAlpha":I
    .restart local v14    # "startElevation":F
    :cond_8
    const/4 v9, 0x0

    goto :goto_3
.end method

.method private updateFolderNameText()V
    .locals 2

    .prologue
    .line 1413
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mFolderName:Lnet/oneplus/h2launcher/ExtendedEditText;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/ExtendedEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1414
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mFolderNameText:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mFolderName:Lnet/oneplus/h2launcher/ExtendedEditText;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/ExtendedEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1415
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mFolderNameText:Landroid/widget/TextView;

    sget v1, Lnet/oneplus/h2launcher/Folder;->sFolderNameHintColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1420
    :goto_0
    return-void

    .line 1417
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mFolderNameText:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mFolderName:Lnet/oneplus/h2launcher/ExtendedEditText;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/ExtendedEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1418
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mFolderNameText:Landroid/widget/TextView;

    sget v1, Lnet/oneplus/h2launcher/Folder;->sFolderNameTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public static updateHintText(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1432
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1433
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0b0053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lnet/oneplus/h2launcher/Folder;->sHintText:Ljava/lang/String;

    .line 1434
    return-void
.end method

.method private updateItemLocationsInDatabaseBatch()V
    .locals 9

    .prologue
    .line 844
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v3

    .line 845
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 846
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 847
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 848
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/ItemInfo;

    .line 849
    .local v1, "info":Lnet/oneplus/h2launcher/ItemInfo;
    iput v0, v1, Lnet/oneplus/h2launcher/ItemInfo;->rank:I

    .line 850
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 853
    .end local v1    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v4    # "v":Landroid/view/View;
    :cond_0
    iget-object v5, p0, Lnet/oneplus/h2launcher/Folder;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-object v6, p0, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    iget-wide v6, v6, Lnet/oneplus/h2launcher/FolderInfo;->id:J

    const/4 v8, 0x0

    invoke-static {v5, v2, v6, v7, v8}, Lnet/oneplus/h2launcher/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/ArrayList;JI)V

    .line 854
    return-void
.end method


# virtual methods
.method public acceptDrop(Lnet/oneplus/h2launcher/DropTarget$DragObject;)Z
    .locals 4
    .param p1, "d"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;

    .prologue
    const/4 v2, 0x1

    .line 589
    iget-object v0, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lnet/oneplus/h2launcher/ItemInfo;

    .line 590
    .local v0, "item":Lnet/oneplus/h2launcher/ItemInfo;
    iget v1, v0, Lnet/oneplus/h2launcher/ItemInfo;->itemType:I

    .line 591
    .local v1, "itemType":I
    if-eqz v1, :cond_0

    const/4 v3, 0x6

    if-eq v1, v3, :cond_0

    if-ne v1, v2, :cond_1

    .line 594
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->isFull()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public addItemLocationsInDatabase()V
    .locals 11

    .prologue
    .line 857
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v9

    .line 858
    .local v9, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 859
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 860
    .local v10, "v":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/ItemInfo;

    .line 861
    .local v1, "info":Lnet/oneplus/h2launcher/ItemInfo;
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-object v2, p0, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    iget-wide v2, v2, Lnet/oneplus/h2launcher/FolderInfo;->id:J

    const-wide/16 v4, 0x0

    iget v6, v1, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    iget v7, v1, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    invoke-static/range {v0 .. v7}, Lnet/oneplus/h2launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;JJII)V

    .line 858
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 864
    .end local v1    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v10    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public beginExternalDrag()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x1

    .line 530
    iget-object v3, p0, Lnet/oneplus/h2launcher/Folder;->mOnExitAlarm:Lnet/oneplus/h2launcher/Alarm;

    iget-object v4, p0, Lnet/oneplus/h2launcher/Folder;->mOnExitAlarmListener:Lnet/oneplus/h2launcher/OnAlarmListener;

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/Alarm;->setOnAlarmListener(Lnet/oneplus/h2launcher/OnAlarmListener;)V

    .line 531
    iget-object v3, p0, Lnet/oneplus/h2launcher/Folder;->mOnExitAlarm:Lnet/oneplus/h2launcher/Alarm;

    const-wide/16 v4, 0x4b0

    invoke-virtual {v3, v4, v5}, Lnet/oneplus/h2launcher/Alarm;->setAlarm(J)V

    .line 532
    iget-object v3, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/FolderContent;->getGridCountY()I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 533
    .local v1, "oldRowCount":I
    iget-object v3, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/FolderContent;->allocateRankForNewItem()I

    move-result v3

    iput v3, p0, Lnet/oneplus/h2launcher/Folder;->mEmptyCellRank:I

    .line 534
    iget-object v3, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/FolderContent;->getGridCountY()I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 535
    .local v0, "newRowCount":I
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Folder;->mIsExternalDrag:Z

    .line 536
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Folder;->mDragInProgress:Z

    .line 538
    if-eq v1, v0, :cond_2

    .line 539
    .local v2, "rowChanged":Z
    :goto_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->getWidth()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->getHeight()I

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_3

    .line 540
    :cond_0
    new-instance v3, Lnet/oneplus/h2launcher/Folder$4;

    invoke-direct {v3, p0}, Lnet/oneplus/h2launcher/Folder$4;-><init>(Lnet/oneplus/h2launcher/Folder;)V

    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/Folder;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 557
    :cond_1
    :goto_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/Folder;->mDragController:Lnet/oneplus/h2launcher/DragController;

    invoke-virtual {v3, p0}, Lnet/oneplus/h2launcher/DragController;->addDragListener(Lnet/oneplus/h2launcher/DragController$DragListener;)V

    .line 558
    return-void

    .line 538
    .end local v2    # "rowChanged":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 550
    .restart local v2    # "rowChanged":Z
    :cond_3
    iget-boolean v3, p0, Lnet/oneplus/h2launcher/Folder;->mIsIconRearrangeMode:Z

    if-nez v3, :cond_1

    .line 551
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->enterIconRearrangeMode()V

    goto :goto_1
.end method

.method public bind(Lnet/oneplus/h2launcher/FolderInfo;)V
    .locals 3
    .param p1, "info"    # Lnet/oneplus/h2launcher/FolderInfo;

    .prologue
    .line 464
    iput-object p1, p0, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    .line 465
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object v0

    .line 466
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    sget-object v1, Lnet/oneplus/h2launcher/Folder;->ITEM_POS_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 468
    iget-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/FolderContent;->bindItems(Ljava/util/List;)V

    .line 470
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/oneplus/h2launcher/Folder;->mItemsInvalidated:Z

    .line 471
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->updateTextViewFocus()V

    .line 472
    iget-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    invoke-virtual {v1, p0}, Lnet/oneplus/h2launcher/FolderInfo;->addListener(Lnet/oneplus/h2launcher/FolderInfo$FolderListener;)V

    .line 475
    iget-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mFolderIcon:Lnet/oneplus/h2launcher/FolderIcon;

    new-instance v2, Lnet/oneplus/h2launcher/Folder$3;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/Folder$3;-><init>(Lnet/oneplus/h2launcher/Folder;)V

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/FolderIcon;->post(Ljava/lang/Runnable;)Z

    .line 482
    return-void
.end method

.method public bindFolderName(Lnet/oneplus/h2launcher/ExtendedEditText;Landroid/widget/TextView;)V
    .locals 2
    .param p1, "folderName"    # Lnet/oneplus/h2launcher/ExtendedEditText;
    .param p2, "folderNameText"    # Landroid/widget/TextView;

    .prologue
    .line 485
    iput-object p1, p0, Lnet/oneplus/h2launcher/Folder;->mFolderName:Lnet/oneplus/h2launcher/ExtendedEditText;

    .line 486
    iput-object p2, p0, Lnet/oneplus/h2launcher/Folder;->mFolderNameText:Landroid/widget/TextView;

    .line 487
    sget-object v0, Lnet/oneplus/h2launcher/Folder;->sDefaultFolderName:Ljava/lang/String;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    iget-object v1, v1, Lnet/oneplus/h2launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mFolderName:Lnet/oneplus/h2launcher/ExtendedEditText;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    iget-object v1, v1, Lnet/oneplus/h2launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/ExtendedEditText;->setText(Ljava/lang/CharSequence;)V

    .line 493
    :goto_0
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Folder;->updateFolderNameText()V

    .line 494
    return-void

    .line 490
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mFolderName:Lnet/oneplus/h2launcher/ExtendedEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/ExtendedEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public close(Z)V
    .locals 3
    .param p1, "wasAnimated"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 562
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mDragController:Lnet/oneplus/h2launcher/DragController;

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/DragController;->removeDropTarget(Lnet/oneplus/h2launcher/DropTarget;)V

    .line 563
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->clearFocus()V

    .line 564
    if-eqz p1, :cond_0

    .line 565
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mFolderIcon:Lnet/oneplus/h2launcher/FolderIcon;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FolderIcon;->requestFocus()Z

    .line 568
    :cond_0
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Folder;->mRearrangeOnClose:Z

    if-eqz v0, :cond_1

    .line 569
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->rearrangeChildren()V

    .line 570
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/Folder;->mRearrangeOnClose:Z

    .line 572
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->getItemCount()I

    move-result v0

    if-gt v0, v2, :cond_2

    .line 573
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Folder;->mDragInProgress:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Folder;->mSuppressFolderDeletion:Z

    if-nez v0, :cond_4

    .line 574
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/Folder;->replaceFolderWithFinalItem(Z)V

    .line 580
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Folder;->mIsIconRearrangeMode:Z

    if-eqz v0, :cond_3

    .line 581
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->exitIconRearrangeMode()V

    .line 582
    :cond_3
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/Folder;->mSuppressFolderDeletion:Z

    .line 583
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Folder;->clearDragInfo()V

    .line 584
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->finishUpdateDynamicIconState()V

    .line 585
    iput v1, p0, Lnet/oneplus/h2launcher/Folder;->mState:I

    .line 586
    return-void

    .line 575
    :cond_4
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Folder;->mDragInProgress:Z

    if-eqz v0, :cond_2

    .line 576
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Folder;->mDeleteFolderOnDropCompleted:Z

    goto :goto_0
.end method

.method public completeDragExit()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 680
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/FolderInfo;->opened:Z

    if-eqz v0, :cond_1

    .line 681
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/Folder;->mRearrangeOnClose:Z

    .line 682
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0, p0, v1}, Lnet/oneplus/h2launcher/Launcher;->closeFolder(Lnet/oneplus/h2launcher/Folder;Z)V

    .line 683
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mDragController:Lnet/oneplus/h2launcher/DragController;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->enterSpringLoadedDragMode()V

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    iget v0, p0, Lnet/oneplus/h2launcher/Folder;->mState:I

    if-ne v0, v1, :cond_2

    .line 687
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/Folder;->mRearrangeOnClose:Z

    goto :goto_0

    .line 689
    :cond_2
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->rearrangeChildren()V

    .line 690
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Folder;->clearDragInfo()V

    goto :goto_0
.end method

.method public deferCompleteDropAfterUninstallActivity()V
    .locals 1

    .prologue
    .line 1299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/Folder;->mDeferDropAfterUninstall:Z

    .line 1300
    return-void
.end method

.method public dismissEditingName()V
    .locals 3

    .prologue
    .line 355
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 356
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Folder;->doneEditingFolderName(Z)V

    .line 357
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Folder;->adjustFolderPosition()V

    .line 358
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 447
    const/4 v0, 0x1

    return v0
.end method

.method public doneEditingFolderName(Z)V
    .locals 5
    .param p1, "commit"    # Z

    .prologue
    const/4 v4, 0x0

    .line 361
    iget-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mFolderName:Lnet/oneplus/h2launcher/ExtendedEditText;

    sget-object v2, Lnet/oneplus/h2launcher/Folder;->sHintText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/ExtendedEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mFolderName:Lnet/oneplus/h2launcher/ExtendedEditText;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/ExtendedEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "newTitle":Ljava/lang/String;
    iget-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/FolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-object v2, p0, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;)V

    .line 368
    if-eqz p1, :cond_0

    .line 369
    const/16 v1, 0x20

    .line 370
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0059

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 369
    invoke-virtual {p0, v1, v2}, Lnet/oneplus/h2launcher/Folder;->sendCustomAccessibilityEvent(ILjava/lang/String;)V

    .line 375
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mFolderName:Lnet/oneplus/h2launcher/ExtendedEditText;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/ExtendedEditText;->clearFocus()V

    .line 377
    iget-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mFolderName:Lnet/oneplus/h2launcher/ExtendedEditText;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/ExtendedEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1, v4, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 378
    iput-boolean v4, p0, Lnet/oneplus/h2launcher/Folder;->mIsEditingName:Z

    .line 380
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Folder;->updateFolderNameText()V

    .line 381
    return-void
.end method

.method public enableAccessibleDrag(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x1

    .line 272
    iget-object v2, p0, Lnet/oneplus/h2launcher/Folder;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getSearchDropTargetBar()Lnet/oneplus/h2launcher/SearchDropTargetBar;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/oneplus/h2launcher/SearchDropTargetBar;->enableAccessibleDrag(Z)V

    .line 273
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/FolderContent;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 274
    iget-object v2, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/FolderContent;->getPageAt(I)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lnet/oneplus/h2launcher/CellLayout;->enableAccessibleDrag(ZI)V

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    :cond_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/Folder;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v2

    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Lnet/oneplus/h2launcher/Workspace;->setAddNewPageOnDrag(Z)V

    .line 278
    return-void

    .line 277
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public enterIconRearrangeMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1330
    const-string v0, "Launcher.Folder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterIconRearrangeMode# width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    invoke-direct {p0, v3}, Lnet/oneplus/h2launcher/Folder;->playIconRearrangeAnimation(Z)V

    .line 1332
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/Folder;->mIsIconRearrangeMode:Z

    .line 1333
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mFolderScrollBar:Lnet/oneplus/h2launcher/FolderScrollBar;

    if-eqz v0, :cond_0

    .line 1334
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mFolderScrollBar:Lnet/oneplus/h2launcher/FolderScrollBar;

    invoke-virtual {v0, v3}, Lnet/oneplus/h2launcher/FolderScrollBar;->notifyFolderRearrange(Z)V

    .line 1335
    :cond_0
    return-void
.end method

.method public exitIconRearrangeMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1338
    const-string v0, "Launcher.Folder"

    const-string v1, "exitIconRearrangeMode"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Folder;->mIsIconRearrangeMode:Z

    .line 1340
    invoke-direct {p0, v2}, Lnet/oneplus/h2launcher/Folder;->playIconRearrangeAnimation(Z)V

    .line 1341
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mFolderScrollBar:Lnet/oneplus/h2launcher/FolderScrollBar;

    if-eqz v0, :cond_0

    .line 1342
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mFolderScrollBar:Lnet/oneplus/h2launcher/FolderScrollBar;

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/FolderScrollBar;->notifyFolderRearrange(Z)V

    .line 1343
    :cond_0
    return-void
.end method

.method public fillInLaunchSourceData(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "sourceData"    # Landroid/os/Bundle;

    .prologue
    .line 1234
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mFolderIcon:Lnet/oneplus/h2launcher/FolderIcon;

    invoke-static {v0, p1}, Lnet/oneplus/h2launcher/Stats$LaunchSourceUtils;->populateSourceDataFromAncestorProvider(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1235
    const-string v0, "sub_container"

    const-string v1, "folder"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    const-string v0, "sub_container_page"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1237
    return-void
.end method

.method public finishUpdateDynamicIconState()V
    .locals 1

    .prologue
    .line 1247
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FolderContent;->finishUpdateDynamicIconState()V

    .line 1248
    return-void
.end method

.method public focusSearch(I)Landroid/view/View;
    .locals 2
    .param p1, "direction"    # I

    .prologue
    .line 453
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getEditTextRegion()Landroid/view/View;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mFolderName:Lnet/oneplus/h2launcher/ExtendedEditText;

    return-object v0
.end method

.method public getFolderIcon()Lnet/oneplus/h2launcher/FolderIcon;
    .locals 1

    .prologue
    .line 1270
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mFolderIcon:Lnet/oneplus/h2launcher/FolderIcon;

    return-object v0
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1209
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/Folder;->getHitRect(Landroid/graphics/Rect;)V

    .line 1212
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mDragController:Lnet/oneplus/h2launcher/DragController;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1213
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p0, Lnet/oneplus/h2launcher/Folder;->mHitRectExtendArea:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 1214
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v1, p0, Lnet/oneplus/h2launcher/Folder;->mHitRectExtendArea:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1216
    :cond_0
    return-void
.end method

.method public getInfo()Lnet/oneplus/h2launcher/FolderInfo;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    return-object v0
.end method

.method public getIntrinsicIconScaleFactor()F
    .locals 1

    .prologue
    .line 810
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FolderContent;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemInfoInReadingOrder()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1195
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mItemInfoInReadingOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1196
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    new-instance v1, Lnet/oneplus/h2launcher/Folder$13;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/Folder$13;-><init>(Lnet/oneplus/h2launcher/Folder;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/FolderContent;->iterateOverItems(Lnet/oneplus/h2launcher/Workspace$ItemOperator;)Landroid/view/View;

    .line 1204
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mItemInfoInReadingOrder:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItemsInReadingOrder()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1180
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Folder;->mItemsInvalidated:Z

    if-eqz v0, :cond_0

    .line 1181
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1182
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    new-instance v1, Lnet/oneplus/h2launcher/Folder$12;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/Folder$12;-><init>(Lnet/oneplus/h2launcher/Folder;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/FolderContent;->iterateOverItems(Lnet/oneplus/h2launcher/Workspace$ItemOperator;)Landroid/view/View;

    .line 1189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/Folder;->mItemsInvalidated:Z

    .line 1191
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLocationInDragLayer([I)V
    .locals 0
    .param p1, "loc"    # [I

    .prologue
    .line 1221
    return-void
.end method

.method public getPivotXForIconAnimation()F
    .locals 1

    .prologue
    .line 881
    iget v0, p0, Lnet/oneplus/h2launcher/Folder;->mFolderIconPivotX:F

    return v0
.end method

.method public getPivotYForIconAnimation()F
    .locals 1

    .prologue
    .line 885
    iget v0, p0, Lnet/oneplus/h2launcher/Folder;->mFolderIconPivotY:F

    return v0
.end method

.method public getViewForInfo(Lnet/oneplus/h2launcher/ShortcutInfo;)Landroid/view/View;
    .locals 2
    .param p1, "item"    # Lnet/oneplus/h2launcher/ShortcutInfo;

    .prologue
    .line 1159
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    new-instance v1, Lnet/oneplus/h2launcher/Folder$11;

    invoke-direct {v1, p0, p1}, Lnet/oneplus/h2launcher/Folder$11;-><init>(Lnet/oneplus/h2launcher/Folder;Lnet/oneplus/h2launcher/ShortcutInfo;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/FolderContent;->iterateOverItems(Lnet/oneplus/h2launcher/Workspace$ItemOperator;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hideItem(Lnet/oneplus/h2launcher/ShortcutInfo;)V
    .locals 2
    .param p1, "info"    # Lnet/oneplus/h2launcher/ShortcutInfo;

    .prologue
    .line 1105
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/Folder;->getViewForInfo(Lnet/oneplus/h2launcher/ShortcutInfo;)Landroid/view/View;

    move-result-object v0

    .line 1106
    .local v0, "v":Landroid/view/View;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1107
    return-void
.end method

.method public invalidateFolderIcon()V
    .locals 1

    .prologue
    .line 1251
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mFolderIcon:Lnet/oneplus/h2launcher/FolderIcon;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FolderIcon;->invalidate()V

    .line 1252
    return-void
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 966
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Folder;->mDestroyed:Z

    return v0
.end method

.method public isDropEnabled()Z
    .locals 1

    .prologue
    .line 873
    const/4 v0, 0x1

    return v0
.end method

.method public isEditingName()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Folder;->mIsEditingName:Z

    return v0
.end method

.method public isFull()Z
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FolderContent;->isFull()Z

    move-result v0

    return v0
.end method

.method public isLayoutRtl()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 611
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isScrolledToTop()Z
    .locals 1

    .prologue
    .line 1428
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mScrollView:Lnet/oneplus/h2launcher/FolderScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mScrollView:Lnet/oneplus/h2launcher/FolderScrollView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FolderScrollView;->getScrollY()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToLastPage()V
    .locals 3

    .prologue
    .line 1441
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mScrollView:Lnet/oneplus/h2launcher/FolderScrollView;

    const/4 v1, 0x0

    iget-object v2, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/FolderContent;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/FolderScrollView;->smoothScrollTo(II)V

    .line 1442
    return-void
.end method

.method public notifyDrop()V
    .locals 1

    .prologue
    .line 867
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Folder;->mDragInProgress:Z

    if-eqz v0, :cond_0

    .line 868
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/Folder;->mItemAddedBackToSelfViaIcon:Z

    .line 870
    :cond_0
    return-void
.end method

.method public onAdd(Lnet/oneplus/h2launcher/ShortcutInfo;)V
    .locals 8
    .param p1, "item"    # Lnet/oneplus/h2launcher/ShortcutInfo;

    .prologue
    .line 1116
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/FolderContent;->allocateRankForNewItem()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lnet/oneplus/h2launcher/FolderContent;->createAndAddViewForRank(Lnet/oneplus/h2launcher/ShortcutInfo;I)Landroid/view/View;

    .line 1117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/Folder;->mItemsInvalidated:Z

    .line 1118
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    iget-wide v2, v1, Lnet/oneplus/h2launcher/FolderInfo;->id:J

    const-wide/16 v4, 0x0

    iget v6, p1, Lnet/oneplus/h2launcher/ShortcutInfo;->cellX:I

    iget v7, p1, Lnet/oneplus/h2launcher/ShortcutInfo;->cellY:I

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lnet/oneplus/h2launcher/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;JJII)V

    .line 1120
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 441
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 442
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 223
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->getInfo()Lnet/oneplus/h2launcher/FolderInfo;

    move-result-object v1

    iget-boolean v1, v1, Lnet/oneplus/h2launcher/FolderInfo;->opened:Z

    if-nez v1, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 225
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, v0, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1, p1}, Lnet/oneplus/h2launcher/Launcher;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreateWithContents(Ljava/util/List;)V
    .locals 3
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
    .local p1, "contents":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    const/4 v2, 0x1

    .line 1146
    const/4 v0, 0x0

    .line 1147
    .local v0, "i":I
    iget-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    invoke-virtual {v1, p1}, Lnet/oneplus/h2launcher/FolderContent;->bindItems(Ljava/util/List;)V

    .line 1148
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Folder;->mItemsInvalidated:Z

    .line 1150
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->updateColors()V

    .line 1151
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Folder;->updateItemLocationsInDatabaseBatch()V

    .line 1153
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->getItemCount()I

    move-result v1

    if-gt v1, v2, :cond_0

    .line 1154
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/Folder;->replaceFolderWithFinalItem(Z)V

    .line 1156
    :cond_0
    return-void
.end method

.method public onDragEnd()V
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Folder;->mIsExternalDrag:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Folder;->mDragInProgress:Z

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->completeDragExit()V

    .line 325
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mDragController:Lnet/oneplus/h2launcher/DragController;

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/DragController;->removeDragListener(Lnet/oneplus/h2launcher/DragController$DragListener;)V

    .line 326
    return-void
.end method

.method public onDragEnter(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V
    .locals 1
    .param p1, "d"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;

    .prologue
    .line 598
    const/4 v0, -0x1

    iput v0, p0, Lnet/oneplus/h2launcher/Folder;->mPrevTargetRank:I

    .line 599
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mOnExitAlarm:Lnet/oneplus/h2launcher/Alarm;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Alarm;->cancelAlarm()V

    .line 600
    return-void
.end method

.method public onDragExit(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V
    .locals 4
    .param p1, "d"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;

    .prologue
    .line 700
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mAutoScrollHelper:Lnet/oneplus/h2launcher/FolderAutoScrollHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/FolderAutoScrollHelper;->setEnabled(Z)Landroid/support/v4/widget/AutoScrollHelper;

    .line 704
    iget-boolean v0, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragComplete:Z

    if-nez v0, :cond_0

    .line 705
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mOnExitAlarm:Lnet/oneplus/h2launcher/Alarm;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mOnExitAlarmListener:Lnet/oneplus/h2launcher/OnAlarmListener;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Alarm;->setOnAlarmListener(Lnet/oneplus/h2launcher/OnAlarmListener;)V

    .line 706
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mOnExitAlarm:Lnet/oneplus/h2launcher/Alarm;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Lnet/oneplus/h2launcher/Alarm;->setAlarm(J)V

    .line 708
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mReorderAlarm:Lnet/oneplus/h2launcher/Alarm;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Alarm;->cancelAlarm()V

    .line 709
    return-void
.end method

.method public onDragOver(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V
    .locals 1
    .param p1, "d"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;

    .prologue
    .line 616
    const/16 v0, 0xfa

    invoke-virtual {p0, p1, v0}, Lnet/oneplus/h2launcher/Folder;->onDragOver(Lnet/oneplus/h2launcher/DropTarget$DragObject;I)V

    .line 617
    return-void
.end method

.method onDragOver(Lnet/oneplus/h2launcher/DropTarget$DragObject;I)V
    .locals 10
    .param p1, "d"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;
    .param p2, "reorderDelay"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 628
    const/4 v7, 0x2

    new-array v3, v7, [F

    .line 629
    .local v3, "r":[F
    invoke-direct {p0, p1, v3}, Lnet/oneplus/h2launcher/Folder;->getTargetRank(Lnet/oneplus/h2launcher/DropTarget$DragObject;[F)I

    move-result v7

    iput v7, p0, Lnet/oneplus/h2launcher/Folder;->mTargetRank:I

    .line 631
    iget v7, p0, Lnet/oneplus/h2launcher/Folder;->mTargetRank:I

    iget v8, p0, Lnet/oneplus/h2launcher/Folder;->mPrevTargetRank:I

    if-eq v7, v8, :cond_0

    .line 632
    iget-object v7, p0, Lnet/oneplus/h2launcher/Folder;->mReorderAlarm:Lnet/oneplus/h2launcher/Alarm;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Alarm;->cancelAlarm()V

    .line 633
    iget-object v7, p0, Lnet/oneplus/h2launcher/Folder;->mReorderAlarm:Lnet/oneplus/h2launcher/Alarm;

    iget-object v8, p0, Lnet/oneplus/h2launcher/Folder;->mReorderAlarmListener:Lnet/oneplus/h2launcher/OnAlarmListener;

    invoke-virtual {v7, v8}, Lnet/oneplus/h2launcher/Alarm;->setOnAlarmListener(Lnet/oneplus/h2launcher/OnAlarmListener;)V

    .line 634
    iget-object v7, p0, Lnet/oneplus/h2launcher/Folder;->mReorderAlarm:Lnet/oneplus/h2launcher/Alarm;

    const-wide/16 v8, 0xfa

    invoke-virtual {v7, v8, v9}, Lnet/oneplus/h2launcher/Alarm;->setAlarm(J)V

    .line 635
    iget v7, p0, Lnet/oneplus/h2launcher/Folder;->mTargetRank:I

    iput v7, p0, Lnet/oneplus/h2launcher/Folder;->mPrevTargetRank:I

    .line 638
    :cond_0
    aget v4, v3, v5

    .line 639
    .local v4, "y":F
    iget-object v7, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/FolderContent;->getItemHeight()F

    move-result v7

    const v8, 0x3ecccccd    # 0.4f

    mul-float v0, v7, v8

    .line 640
    .local v0, "cellOverlap":F
    cmpg-float v7, v4, v0

    if-gez v7, :cond_2

    move v2, v5

    .line 641
    .local v2, "isOutsideTopEdge":Z
    :goto_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v0

    cmpl-float v7, v4, v7

    if-lez v7, :cond_3

    move v1, v5

    .line 642
    .local v1, "isOutsideBottomEdge":Z
    :goto_1
    if-eqz v2, :cond_4

    .line 643
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/Folder;->performAutoScroll(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V

    .line 655
    :cond_1
    :goto_2
    return-void

    .end local v1    # "isOutsideBottomEdge":Z
    .end local v2    # "isOutsideTopEdge":Z
    :cond_2
    move v2, v6

    .line 640
    goto :goto_0

    .restart local v2    # "isOutsideTopEdge":Z
    :cond_3
    move v1, v6

    .line 641
    goto :goto_1

    .line 644
    .restart local v1    # "isOutsideBottomEdge":Z
    :cond_4
    if-eqz v1, :cond_5

    .line 645
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/Folder;->performAutoScroll(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V

    goto :goto_2

    .line 647
    :cond_5
    iget-object v5, p0, Lnet/oneplus/h2launcher/Folder;->mAutoScrollHelper:Lnet/oneplus/h2launcher/FolderAutoScrollHelper;

    invoke-virtual {v5, v6}, Lnet/oneplus/h2launcher/FolderAutoScrollHelper;->setEnabled(Z)Landroid/support/v4/widget/AutoScrollHelper;

    .line 648
    iget-boolean v5, p0, Lnet/oneplus/h2launcher/Folder;->mReorderOnScrolledToEdge:Z

    if-eqz v5, :cond_1

    .line 649
    iput-boolean v6, p0, Lnet/oneplus/h2launcher/Folder;->mReorderOnScrolledToEdge:Z

    .line 650
    iget-object v5, p0, Lnet/oneplus/h2launcher/Folder;->mReorderAlarm:Lnet/oneplus/h2launcher/Alarm;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Alarm;->cancelAlarm()V

    .line 651
    iget-object v5, p0, Lnet/oneplus/h2launcher/Folder;->mReorderAlarm:Lnet/oneplus/h2launcher/Alarm;

    iget-object v6, p0, Lnet/oneplus/h2launcher/Folder;->mReorderAlarmListener:Lnet/oneplus/h2launcher/OnAlarmListener;

    invoke-virtual {v5, v6}, Lnet/oneplus/h2launcher/Alarm;->setOnAlarmListener(Lnet/oneplus/h2launcher/OnAlarmListener;)V

    .line 652
    iget-object v5, p0, Lnet/oneplus/h2launcher/Folder;->mReorderAlarm:Lnet/oneplus/h2launcher/Alarm;

    const-wide/16 v6, 0x1

    invoke-virtual {v5, v6, v7}, Lnet/oneplus/h2launcher/Alarm;->setAlarm(J)V

    goto :goto_2
.end method

.method public onDragStart(Lnet/oneplus/h2launcher/DragSource;Ljava/lang/Object;I)V
    .locals 5
    .param p1, "source"    # Lnet/oneplus/h2launcher/DragSource;
    .param p2, "info"    # Ljava/lang/Object;
    .param p3, "dragAction"    # I

    .prologue
    const/4 v3, 0x1

    .line 300
    if-eq p1, p0, :cond_0

    .line 318
    .end local p2    # "info":Ljava/lang/Object;
    :goto_0
    return-void

    .line 304
    .restart local p2    # "info":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    iget-object v2, p0, Lnet/oneplus/h2launcher/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/FolderContent;->removeItem(Landroid/view/View;)V

    .line 305
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/Folder;->mIsIconRearrangeMode:Z

    if-nez v1, :cond_1

    .line 306
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->enterIconRearrangeMode()V

    .line 307
    :cond_1
    instance-of v1, p2, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v1, :cond_2

    .line 308
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/Folder;->mItemsInvalidated:Z

    .line 312
    new-instance v0, Lnet/oneplus/h2launcher/Folder$SuppressInfoChanges;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/Folder$SuppressInfoChanges;-><init>(Lnet/oneplus/h2launcher/Folder;)V

    .local v0, "s":Lnet/oneplus/h2launcher/Folder$SuppressInfoChanges;
    const/4 v2, 0x0

    .line 313
    :try_start_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    check-cast p2, Lnet/oneplus/h2launcher/ShortcutInfo;

    .end local p2    # "info":Ljava/lang/Object;
    invoke-virtual {v1, p2}, Lnet/oneplus/h2launcher/FolderInfo;->remove(Lnet/oneplus/h2launcher/ShortcutInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 314
    if-eqz v0, :cond_2

    if-eqz v2, :cond_3

    :try_start_1
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Folder$SuppressInfoChanges;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 316
    .end local v0    # "s":Lnet/oneplus/h2launcher/Folder$SuppressInfoChanges;
    :cond_2
    :goto_1
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/Folder;->mDragInProgress:Z

    .line 317
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/oneplus/h2launcher/Folder;->mItemAddedBackToSelfViaIcon:Z

    goto :goto_0

    .line 314
    .restart local v0    # "s":Lnet/oneplus/h2launcher/Folder$SuppressInfoChanges;
    :catch_0
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Folder$SuppressInfoChanges;->close()V

    goto :goto_1

    .line 312
    :catch_1
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 314
    :catchall_0
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_2
    if-eqz v0, :cond_4

    if-eqz v2, :cond_5

    :try_start_3
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Folder$SuppressInfoChanges;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_3
    throw v1

    :catch_2
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Folder$SuppressInfoChanges;->close()V

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_2
.end method

.method public onDrop(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V
    .locals 14
    .param p1, "d"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;

    .prologue
    .line 1005
    const/4 v8, 0x0

    .line 1009
    .local v8, "cleanUpRunnable":Ljava/lang/Runnable;
    iget-object v0, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragSource:Lnet/oneplus/h2launcher/DragSource;

    iget-object v2, p0, Lnet/oneplus/h2launcher/Folder;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragSource:Lnet/oneplus/h2launcher/DragSource;

    instance-of v0, v0, Lnet/oneplus/h2launcher/Folder;

    if-nez v0, :cond_0

    .line 1010
    new-instance v8, Lnet/oneplus/h2launcher/Folder$10;

    .end local v8    # "cleanUpRunnable":Ljava/lang/Runnable;
    invoke-direct {v8, p0}, Lnet/oneplus/h2launcher/Folder$10;-><init>(Lnet/oneplus/h2launcher/Folder;)V

    .line 1022
    .restart local v8    # "cleanUpRunnable":Ljava/lang/Runnable;
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mAutoScrollHelper:Lnet/oneplus/h2launcher/FolderAutoScrollHelper;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/FolderAutoScrollHelper;->setEnabled(Z)Landroid/support/v4/widget/AutoScrollHelper;

    .line 1025
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/Folder;->getTargetRank(Lnet/oneplus/h2launcher/DropTarget$DragObject;[F)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/Folder;->mTargetRank:I

    .line 1028
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mReorderAlarmListener:Lnet/oneplus/h2launcher/OnAlarmListener;

    iget-object v2, p0, Lnet/oneplus/h2launcher/Folder;->mReorderAlarm:Lnet/oneplus/h2launcher/Alarm;

    invoke-interface {v0, v2}, Lnet/oneplus/h2launcher/OnAlarmListener;->onAlarm(Lnet/oneplus/h2launcher/Alarm;)V

    .line 1030
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FolderContent;->completePendingPageChanges()V

    .line 1034
    iget-object v0, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lnet/oneplus/h2launcher/AppInfo;

    if-eqz v0, :cond_7

    .line 1036
    iget-object v0, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lnet/oneplus/h2launcher/AppInfo;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/AppInfo;->makeShortcut()Lnet/oneplus/h2launcher/ShortcutInfo;

    move-result-object v1

    .line 1041
    .local v1, "si":Lnet/oneplus/h2launcher/ShortcutInfo;
    :goto_0
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Folder;->mIsExternalDrag:Z

    if-eqz v0, :cond_8

    .line 1042
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    iget v2, p0, Lnet/oneplus/h2launcher/Folder;->mEmptyCellRank:I

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/FolderContent;->createAndAddViewForRank(Lnet/oneplus/h2launcher/ShortcutInfo;I)Landroid/view/View;

    move-result-object v9

    .line 1045
    .local v9, "currentDragView":Landroid/view/View;
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-object v2, p0, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    iget-wide v2, v2, Lnet/oneplus/h2launcher/FolderInfo;->id:J

    const-wide/16 v4, 0x0

    iget v6, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->cellX:I

    iget v7, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->cellY:I

    invoke-static/range {v0 .. v7}, Lnet/oneplus/h2launcher/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;JJII)V

    .line 1049
    iget-object v0, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragSource:Lnet/oneplus/h2launcher/DragSource;

    if-eq v0, p0, :cond_1

    .line 1050
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Folder;->updateItemLocationsInDatabaseBatch()V

    .line 1052
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/Folder;->mIsExternalDrag:Z

    .line 1060
    :cond_2
    :goto_1
    if-nez v9, :cond_9

    .line 1061
    const-string v0, "Launcher.Folder"

    const-string v2, "missing current drag view"

    invoke-static {v0, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    iget-object v0, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/DragView;->hasDrawn()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1064
    const/4 v0, 0x0

    iput-boolean v0, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 1082
    :cond_3
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/Folder;->mItemsInvalidated:Z

    .line 1083
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->rearrangeChildren()V

    .line 1084
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Folder;->mIsIconRearrangeMode:Z

    if-eqz v0, :cond_4

    .line 1085
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->exitIconRearrangeMode()V

    .line 1088
    :cond_4
    new-instance v10, Lnet/oneplus/h2launcher/Folder$SuppressInfoChanges;

    invoke-direct {v10, p0}, Lnet/oneplus/h2launcher/Folder$SuppressInfoChanges;-><init>(Lnet/oneplus/h2launcher/Folder;)V

    .local v10, "s":Lnet/oneplus/h2launcher/Folder$SuppressInfoChanges;
    const/4 v2, 0x0

    .line 1089
    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/FolderInfo;->add(Lnet/oneplus/h2launcher/ShortcutInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1090
    if-eqz v10, :cond_5

    if-eqz v2, :cond_b

    :try_start_1
    invoke-virtual {v10}, Lnet/oneplus/h2launcher/Folder$SuppressInfoChanges;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1093
    :cond_5
    :goto_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/Folder;->mDragInProgress:Z

    .line 1095
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FolderContent;->getPageCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_6

    .line 1097
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    const/4 v2, 0x4

    const/4 v3, 0x1

    iget-object v4, p0, Lnet/oneplus/h2launcher/Folder;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0, v2, v3, v4}, Lnet/oneplus/h2launcher/FolderInfo;->setOption(IZLandroid/content/Context;)V

    .line 1099
    :cond_6
    return-void

    .line 1039
    .end local v1    # "si":Lnet/oneplus/h2launcher/ShortcutInfo;
    .end local v9    # "currentDragView":Landroid/view/View;
    .end local v10    # "s":Lnet/oneplus/h2launcher/Folder$SuppressInfoChanges;
    :cond_7
    iget-object v1, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lnet/oneplus/h2launcher/ShortcutInfo;

    .restart local v1    # "si":Lnet/oneplus/h2launcher/ShortcutInfo;
    goto :goto_0

    .line 1054
    :cond_8
    iget-object v9, p0, Lnet/oneplus/h2launcher/Folder;->mCurrentDragView:Landroid/view/View;

    .line 1055
    .restart local v9    # "currentDragView":Landroid/view/View;
    if-eqz v9, :cond_2

    .line 1056
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    iget v2, p0, Lnet/oneplus/h2launcher/Folder;->mEmptyCellRank:I

    invoke-virtual {v0, v9, v1, v2}, Lnet/oneplus/h2launcher/FolderContent;->addViewForRank(Landroid/view/View;Lnet/oneplus/h2launcher/ShortcutInfo;I)V

    goto :goto_1

    .line 1067
    :cond_9
    iget-object v0, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/DragView;->hasDrawn()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1069
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->getScaleX()F

    move-result v11

    .line 1070
    .local v11, "scaleX":F
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->getScaleY()F

    move-result v12

    .line 1071
    .local v12, "scaleY":F
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Folder;->setScaleX(F)V

    .line 1072
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Folder;->setScaleY(F)V

    .line 1073
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v0

    iget-object v2, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v9, v8, v3}, Lnet/oneplus/h2launcher/DragLayer;->animateViewIntoPosition(Lnet/oneplus/h2launcher/DragView;Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V

    .line 1075
    invoke-virtual {p0, v11}, Lnet/oneplus/h2launcher/Folder;->setScaleX(F)V

    .line 1076
    invoke-virtual {p0, v12}, Lnet/oneplus/h2launcher/Folder;->setScaleY(F)V

    goto :goto_2

    .line 1078
    .end local v11    # "scaleX":F
    .end local v12    # "scaleY":F
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 1079
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1090
    .restart local v10    # "s":Lnet/oneplus/h2launcher/Folder$SuppressInfoChanges;
    :catch_0
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_b
    invoke-virtual {v10}, Lnet/oneplus/h2launcher/Folder$SuppressInfoChanges;->close()V

    goto :goto_3

    .line 1088
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1090
    :catchall_0
    move-exception v2

    move-object v13, v2

    move-object v2, v0

    move-object v0, v13

    :goto_4
    if-eqz v10, :cond_c

    if-eqz v2, :cond_d

    :try_start_3
    invoke-virtual {v10}, Lnet/oneplus/h2launcher/Folder$SuppressInfoChanges;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_c
    :goto_5
    throw v0

    :catch_2
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_d
    invoke-virtual {v10}, Lnet/oneplus/h2launcher/Folder$SuppressInfoChanges;->close()V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4
.end method

.method public onDropCompleted(Landroid/view/View;Lnet/oneplus/h2launcher/DropTarget$DragObject;ZZ)V
    .locals 13
    .param p1, "target"    # Landroid/view/View;
    .param p2, "d"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;
    .param p3, "isFlingToDelete"    # Z
    .param p4, "success"    # Z

    .prologue
    .line 726
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Folder;->mDeferDropAfterUninstall:Z

    if-eqz v0, :cond_1

    .line 727
    const-string v0, "Launcher.Folder"

    const-string v1, "Deferred handling drop because waiting for uninstall."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    new-instance v0, Lnet/oneplus/h2launcher/Folder$7;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/Folder$7;-><init>(Lnet/oneplus/h2launcher/Folder;Landroid/view/View;Lnet/oneplus/h2launcher/DropTarget$DragObject;ZZ)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mDeferredAction:Ljava/lang/Runnable;

    .line 806
    :cond_0
    :goto_0
    return-void

    .line 737
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mDeferredAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    const/4 v6, 0x1

    .line 738
    .local v6, "beingCalledAfterUninstall":Z
    :goto_1
    if-eqz p4, :cond_b

    if-eqz v6, :cond_2

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Folder;->mUninstallSuccessful:Z

    if-eqz v0, :cond_b

    :cond_2
    const/4 v10, 0x1

    .line 741
    .local v10, "successfulDrop":Z
    :goto_2
    const-string v1, "Launcher.Folder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDropCompleted# successfulDrop="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mCurrentDragView is null? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mCurrentDragView:Landroid/view/View;

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    if-eqz v10, :cond_d

    iget-boolean v0, p2, Lnet/oneplus/h2launcher/DropTarget$DragObject;->edit:Z

    if-nez v0, :cond_d

    .line 746
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Folder;->mDeleteFolderOnDropCompleted:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_4

    :cond_3
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Folder;->mItemAddedBackToSelfViaIcon:Z

    if-nez v0, :cond_4

    if-eq p1, p0, :cond_4

    .line 747
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Folder;->replaceFolderWithFinalItem(Z)V

    .line 752
    :cond_4
    if-eq p1, p0, :cond_5

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Folder;->mIsDeferDragOnDragStart:Z

    if-eqz v0, :cond_5

    .line 753
    const-string v0, "Launcher.Folder"

    const-string v1, "onDropCompleted# perform rearrange for deferred drag"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->rearrangeChildren()V

    .line 771
    :cond_5
    :goto_4
    if-eq p1, p0, :cond_8

    .line 772
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mOnExitAlarm:Lnet/oneplus/h2launcher/Alarm;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 773
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mOnExitAlarm:Lnet/oneplus/h2launcher/Alarm;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Alarm;->cancelAlarm()V

    .line 774
    if-nez v10, :cond_6

    .line 775
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/Folder;->mSuppressFolderDeletion:Z

    .line 777
    :cond_6
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->completeDragExit()V

    .line 780
    :cond_7
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Folder;->mIsIconRearrangeMode:Z

    if-eqz v0, :cond_8

    .line 781
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->exitIconRearrangeMode()V

    .line 784
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/Folder;->mDeleteFolderOnDropCompleted:Z

    .line 785
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/Folder;->mDragInProgress:Z

    .line 786
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/Folder;->mItemAddedBackToSelfViaIcon:Z

    .line 787
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mCurrentDragView:Landroid/view/View;

    .line 788
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/Folder;->mIsDeferDragOnDragStart:Z

    .line 792
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Folder;->updateItemLocationsInDatabaseBatch()V

    .line 796
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/FolderContent;->itemsPerPage()I

    move-result v1

    if-gt v0, v1, :cond_9

    .line 798
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    const/4 v1, 0x4

    const/4 v2, 0x0

    iget-object v3, p0, Lnet/oneplus/h2launcher/Folder;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/FolderInfo;->setOption(IZLandroid/content/Context;)V

    .line 801
    :cond_9
    if-nez p3, :cond_0

    .line 803
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const/16 v1, 0x12c

    const/4 v2, 0x0

    invoke-virtual {v0, v10, v1, v2}, Lnet/oneplus/h2launcher/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    goto/16 :goto_0

    .line 737
    .end local v6    # "beingCalledAfterUninstall":Z
    .end local v10    # "successfulDrop":Z
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 738
    .restart local v6    # "beingCalledAfterUninstall":Z
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 741
    .restart local v10    # "successfulDrop":Z
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 758
    :cond_d
    iget-object v8, p2, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v8, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 759
    .local v8, "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mCurrentDragView:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_e

    iget-object v7, p0, Lnet/oneplus/h2launcher/Folder;->mCurrentDragView:Landroid/view/View;

    .line 761
    .local v7, "icon":Landroid/view/View;
    :goto_5
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v11

    .line 762
    .local v11, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget v0, v8, Lnet/oneplus/h2launcher/ShortcutInfo;->rank:I

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v11, v0, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 763
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v11, v1}, Lnet/oneplus/h2launcher/FolderContent;->arrangeChildren(Ljava/util/ArrayList;I)V

    .line 764
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/Folder;->mItemsInvalidated:Z

    .line 766
    new-instance v9, Lnet/oneplus/h2launcher/Folder$SuppressInfoChanges;

    invoke-direct {v9, p0}, Lnet/oneplus/h2launcher/Folder$SuppressInfoChanges;-><init>(Lnet/oneplus/h2launcher/Folder;)V

    .local v9, "s":Lnet/oneplus/h2launcher/Folder$SuppressInfoChanges;
    const/4 v1, 0x0

    .line 767
    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mFolderIcon:Lnet/oneplus/h2launcher/FolderIcon;

    invoke-virtual {v0, p2}, Lnet/oneplus/h2launcher/FolderIcon;->onDrop(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 768
    if-eqz v9, :cond_5

    if-eqz v1, :cond_f

    :try_start_1
    invoke-virtual {v9}, Lnet/oneplus/h2launcher/Folder$SuppressInfoChanges;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 759
    .end local v7    # "icon":Landroid/view/View;
    .end local v9    # "s":Lnet/oneplus/h2launcher/Folder$SuppressInfoChanges;
    .end local v11    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_e
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    .line 760
    invoke-virtual {v0, v8}, Lnet/oneplus/h2launcher/FolderContent;->createNewView(Lnet/oneplus/h2launcher/ShortcutInfo;)Landroid/view/View;

    move-result-object v7

    goto :goto_5

    .line 768
    .restart local v7    # "icon":Landroid/view/View;
    .restart local v9    # "s":Lnet/oneplus/h2launcher/Folder$SuppressInfoChanges;
    .restart local v11    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_f
    invoke-virtual {v9}, Lnet/oneplus/h2launcher/Folder$SuppressInfoChanges;->close()V

    goto/16 :goto_4

    .line 766
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 768
    :catchall_0
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    :goto_6
    if-eqz v9, :cond_10

    if-eqz v1, :cond_11

    :try_start_3
    invoke-virtual {v9}, Lnet/oneplus/h2launcher/Folder$SuppressInfoChanges;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_10
    :goto_7
    throw v0

    :catch_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_11
    invoke-virtual {v9}, Lnet/oneplus/h2launcher/Folder$SuppressInfoChanges;->close()V

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_6
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 405
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 406
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->dismissEditingName()V

    .line 407
    const/4 v0, 0x1

    .line 409
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 202
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 203
    const v1, 0x7f1101d4

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/FolderContent;

    iput-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    .line 204
    iget-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    invoke-virtual {v1, p0}, Lnet/oneplus/h2launcher/FolderContent;->setFolder(Lnet/oneplus/h2launcher/Folder;)V

    .line 206
    const v1, 0x7f1101d3

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/FolderScrollView;

    iput-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mScrollView:Lnet/oneplus/h2launcher/FolderScrollView;

    .line 208
    new-instance v1, Lnet/oneplus/h2launcher/FolderAutoScrollHelper;

    iget-object v2, p0, Lnet/oneplus/h2launcher/Folder;->mScrollView:Lnet/oneplus/h2launcher/FolderScrollView;

    invoke-direct {v1, v2}, Lnet/oneplus/h2launcher/FolderAutoScrollHelper;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mAutoScrollHelper:Lnet/oneplus/h2launcher/FolderAutoScrollHelper;

    .line 210
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 211
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 212
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 214
    :cond_0
    return-void
.end method

.method public onFlingToDelete(Lnet/oneplus/h2launcher/DropTarget$DragObject;Landroid/graphics/PointF;)V
    .locals 0
    .param p1, "d"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;
    .param p2, "vec"    # Landroid/graphics/PointF;

    .prologue
    .line 836
    return-void
.end method

.method public onFlingToDeleteCompleted()V
    .locals 0

    .prologue
    .line 841
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1320
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1321
    const-string v0, "Launcher.Folder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action down on folder("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    iget-object v2, v2, Lnet/oneplus/h2launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    iget-wide v2, v2, Lnet/oneplus/h2launcher/FolderInfo;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lnet/oneplus/h2launcher/DragLayer;

    if-eqz v0, :cond_0

    .line 1323
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Folder;->requestDisallowInterceptTouchEvent(Z)V

    .line 1326
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onItemsChanged()V
    .locals 1

    .prologue
    .line 1170
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->updateTextViewFocus()V

    .line 1171
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mFolderScrollBar:Lnet/oneplus/h2launcher/FolderScrollBar;

    if-eqz v0, :cond_0

    .line 1172
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mFolderScrollBar:Lnet/oneplus/h2launcher/FolderScrollBar;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FolderScrollBar;->notifyFolderItemChanged()V

    .line 1174
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 232
    const-string v1, "Launcher.Folder"

    const-string v2, "onLongClick"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Folder;->requestDisallowInterceptTouchEvent(Z)V

    .line 234
    iget-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->isDraggingEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 237
    :cond_0
    :goto_0
    return v0

    .line 235
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->isIconRearrangementMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->getInfo()Lnet/oneplus/h2launcher/FolderInfo;

    move-result-object v1

    iget-boolean v1, v1, Lnet/oneplus/h2launcher/FolderInfo;->opened:Z

    if-eqz v1, :cond_0

    .line 237
    invoke-virtual {p0, p1, v0}, Lnet/oneplus/h2launcher/Folder;->startDrag(Landroid/view/View;Z)Z

    move-result v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 195
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0251

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/Utilities;->getDimensionPixelNormalized(Landroid/content/Context;I)I

    move-result v0

    .line 196
    .local v0, "maxHeight":I
    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 197
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 198
    return-void
.end method

.method public onRemove(Lnet/oneplus/h2launcher/ShortcutInfo;)V
    .locals 1
    .param p1, "item"    # Lnet/oneplus/h2launcher/ShortcutInfo;

    .prologue
    .line 1123
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lnet/oneplus/h2launcher/Folder;->onRemove(Lnet/oneplus/h2launcher/ShortcutInfo;Z)V

    .line 1124
    return-void
.end method

.method public onRemove(Lnet/oneplus/h2launcher/ShortcutInfo;Z)V
    .locals 3
    .param p1, "item"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .param p2, "animate"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1127
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Folder;->mItemsInvalidated:Z

    .line 1128
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/Folder;->getViewForInfo(Lnet/oneplus/h2launcher/ShortcutInfo;)Landroid/view/View;

    move-result-object v0

    .line 1129
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/FolderContent;->removeItem(Landroid/view/View;)V

    .line 1130
    iget v1, p0, Lnet/oneplus/h2launcher/Folder;->mState:I

    if-ne v1, v2, :cond_1

    .line 1131
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Folder;->mRearrangeOnClose:Z

    .line 1135
    :goto_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->getItemCount()I

    move-result v1

    if-gt v1, v2, :cond_0

    .line 1136
    iget-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    iget-boolean v1, v1, Lnet/oneplus/h2launcher/FolderInfo;->opened:Z

    if-eqz v1, :cond_2

    .line 1137
    iget-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1, p0, v2}, Lnet/oneplus/h2launcher/Launcher;->closeFolder(Lnet/oneplus/h2launcher/Folder;Z)V

    .line 1142
    :cond_0
    :goto_1
    return-void

    .line 1133
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->rearrangeChildren()V

    goto :goto_0

    .line 1139
    :cond_2
    invoke-virtual {p0, p2}, Lnet/oneplus/h2launcher/Folder;->replaceFolderWithFinalItem(Z)V

    goto :goto_1
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1177
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 422
    const/4 v0, 0x1

    return v0
.end method

.method public onUninstallActivityReturned(Z)V
    .locals 1
    .param p1, "success"    # Z

    .prologue
    .line 1290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/Folder;->mDeferDropAfterUninstall:Z

    .line 1291
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/Folder;->mUninstallSuccessful:Z

    .line 1292
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mDeferredAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1293
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mDeferredAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1295
    :cond_0
    return-void
.end method

.method public open()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 508
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FolderContent;->completePendingPageChanges()V

    .line 509
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Folder;->mDragInProgress:Z

    if-nez v0, :cond_0

    .line 511
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mScrollView:Lnet/oneplus/h2launcher/FolderScrollView;

    invoke-virtual {v0, v1, v1}, Lnet/oneplus/h2launcher/FolderScrollView;->scrollTo(II)V

    .line 517
    :cond_0
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/Folder;->mDeleteFolderOnDropCompleted:Z

    .line 520
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mDragController:Lnet/oneplus/h2launcher/DragController;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 521
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mDragController:Lnet/oneplus/h2launcher/DragController;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/DragController;->forceTouchMove()V

    .line 524
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FolderContent;->verifyVisibleHighResIcons()V

    .line 525
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FolderContent;->setFocusOnFirstChild()V

    .line 526
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->updateCurrentPageDynamicIconState()V

    .line 527
    return-void
.end method

.method public prepareAccessibilityDrop()V
    .locals 2

    .prologue
    .line 717
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mReorderAlarm:Lnet/oneplus/h2launcher/Alarm;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mReorderAlarm:Lnet/oneplus/h2launcher/Alarm;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Alarm;->cancelAlarm()V

    .line 719
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mReorderAlarmListener:Lnet/oneplus/h2launcher/OnAlarmListener;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mReorderAlarm:Lnet/oneplus/h2launcher/Alarm;

    invoke-interface {v0, v1}, Lnet/oneplus/h2launcher/OnAlarmListener;->onAlarm(Lnet/oneplus/h2launcher/Alarm;)V

    .line 721
    :cond_0
    return-void
.end method

.method public rearrangeChildren()V
    .locals 1

    .prologue
    .line 892
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Folder;->rearrangeChildren(I)V

    .line 893
    return-void
.end method

.method public rearrangeChildren(I)V
    .locals 3
    .param p1, "itemCount"    # I

    .prologue
    .line 902
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v0

    .line 903
    .local v0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lnet/oneplus/h2launcher/FolderContent;->arrangeChildren(Ljava/util/ArrayList;I)V

    .line 904
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/oneplus/h2launcher/Folder;->mItemsInvalidated:Z

    .line 905
    return-void
.end method

.method replaceFolderWithFinalItem(Z)V
    .locals 5
    .param p1, "animate"    # Z

    .prologue
    .line 913
    const-string v2, "Launcher.Folder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "replaceFolderWithFinalItem("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") folder id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    new-instance v1, Lnet/oneplus/h2launcher/Folder$8;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/Folder$8;-><init>(Lnet/oneplus/h2launcher/Folder;)V

    .line 952
    .local v1, "onCompleteRunnable":Ljava/lang/Runnable;
    iget-object v2, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/FolderContent;->getLastItem()Landroid/view/View;

    move-result-object v0

    .line 953
    .local v0, "finalChild":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 954
    if-eqz p1, :cond_0

    .line 955
    iget-object v2, p0, Lnet/oneplus/h2launcher/Folder;->mFolderIcon:Lnet/oneplus/h2launcher/FolderIcon;

    invoke-virtual {v2, v0, v1}, Lnet/oneplus/h2launcher/FolderIcon;->performDestroyAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 962
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Folder;->mDestroyed:Z

    .line 963
    return-void

    .line 957
    :cond_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 960
    :cond_1
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public resizeView()V
    .locals 2

    .prologue
    .line 1259
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->getItemCount()I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 1267
    :cond_0
    return-void
.end method

.method sendCustomAccessibilityEvent(ILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 329
    .line 330
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Folder;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 331
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 333
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/Folder;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 334
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 337
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method public setDragController(Lnet/oneplus/h2launcher/DragController;)V
    .locals 0
    .param p1, "dragController"    # Lnet/oneplus/h2launcher/DragController;

    .prologue
    .line 426
    iput-object p1, p0, Lnet/oneplus/h2launcher/Folder;->mDragController:Lnet/oneplus/h2launcher/DragController;

    .line 427
    return-void
.end method

.method public setFolderIcon(Lnet/oneplus/h2launcher/FolderIcon;)V
    .locals 0
    .param p1, "icon"    # Lnet/oneplus/h2launcher/FolderIcon;

    .prologue
    .line 430
    iput-object p1, p0, Lnet/oneplus/h2launcher/Folder;->mFolderIcon:Lnet/oneplus/h2launcher/FolderIcon;

    .line 431
    return-void
.end method

.method public setFolderScrollBar(Lnet/oneplus/h2launcher/FolderScrollBar;)V
    .locals 2
    .param p1, "scrollBar"    # Lnet/oneplus/h2launcher/FolderScrollBar;

    .prologue
    .line 1423
    iput-object p1, p0, Lnet/oneplus/h2launcher/Folder;->mFolderScrollBar:Lnet/oneplus/h2launcher/FolderScrollBar;

    .line 1424
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mFolderScrollBar:Lnet/oneplus/h2launcher/FolderScrollBar;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Folder;->mScrollView:Lnet/oneplus/h2launcher/FolderScrollView;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/FolderScrollBar;->setFolderScrollView(Lnet/oneplus/h2launcher/FolderScrollView;)V

    .line 1425
    return-void
.end method

.method public setScaledSize()V
    .locals 1

    .prologue
    .line 1437
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FolderContent;->setScaledSize()V

    .line 1438
    return-void
.end method

.method public showItem(Lnet/oneplus/h2launcher/ShortcutInfo;)V
    .locals 2
    .param p1, "info"    # Lnet/oneplus/h2launcher/ShortcutInfo;

    .prologue
    .line 1110
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/Folder;->getViewForInfo(Lnet/oneplus/h2launcher/ShortcutInfo;)Landroid/view/View;

    move-result-object v0

    .line 1111
    .local v0, "v":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1112
    return-void
.end method

.method public startDrag(Lnet/oneplus/h2launcher/CellLayout$CellInfo;Z)V
    .locals 1
    .param p1, "cellInfo"    # Lnet/oneplus/h2launcher/CellLayout$CellInfo;
    .param p2, "accessible"    # Z

    .prologue
    .line 267
    iget-object v0, p1, Lnet/oneplus/h2launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lnet/oneplus/h2launcher/Folder;->beginDrag(Landroid/view/View;Z)Z

    .line 268
    return-void
.end method

.method public startDrag(Landroid/view/View;Z)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "accessible"    # Z

    .prologue
    .line 281
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 282
    .local v1, "tag":Ljava/lang/Object;
    instance-of v2, v1, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 283
    check-cast v0, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 284
    .local v0, "item":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 285
    const/4 v2, 0x0

    .line 295
    .end local v0    # "item":Lnet/oneplus/h2launcher/ShortcutInfo;
    :goto_0
    return v2

    .line 288
    .restart local v0    # "item":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_0
    iget v2, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->rank:I

    iput v2, p0, Lnet/oneplus/h2launcher/Folder;->mEmptyCellRank:I

    .line 289
    iput-object p1, p0, Lnet/oneplus/h2launcher/Folder;->mCurrentDragView:Landroid/view/View;

    .line 291
    iget-object v2, p0, Lnet/oneplus/h2launcher/Folder;->mDragController:Lnet/oneplus/h2launcher/DragController;

    invoke-virtual {v2, p0}, Lnet/oneplus/h2launcher/DragController;->addDragListener(Lnet/oneplus/h2launcher/DragController$DragListener;)V

    .line 293
    iget-object v2, p0, Lnet/oneplus/h2launcher/Folder;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v2

    invoke-virtual {v2, p1, p0, p2}, Lnet/oneplus/h2launcher/Workspace;->beginDragShared(Landroid/view/View;Lnet/oneplus/h2launcher/DragSource;Z)V

    .line 295
    .end local v0    # "item":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public startEditingFolderName()V
    .locals 1

    .prologue
    .line 344
    new-instance v0, Lnet/oneplus/h2launcher/Folder$1;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/Folder$1;-><init>(Lnet/oneplus/h2launcher/Folder;)V

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Folder;->post(Ljava/lang/Runnable;)Z

    .line 352
    return-void
.end method

.method public supportsAppInfoDropTarget()Z
    .locals 1

    .prologue
    .line 820
    const/4 v0, 0x1

    return v0
.end method

.method public supportsDeleteDropTarget()Z
    .locals 1

    .prologue
    .line 825
    const/4 v0, 0x1

    return v0
.end method

.method public supportsEditDropTarget()Z
    .locals 1

    .prologue
    .line 830
    const/4 v0, 0x1

    return v0
.end method

.method public supportsFlingToDelete()Z
    .locals 1

    .prologue
    .line 815
    const/4 v0, 0x1

    return v0
.end method

.method public updateColors()V
    .locals 0

    .prologue
    .line 220
    return-void
.end method

.method public updateCurrentPageDynamicIconState()V
    .locals 3

    .prologue
    .line 1240
    const-string v0, "Launcher.Folder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DynamicIcon Folder updateDynamicIconState shouldUpdateDynamicIconState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/Folder;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->shouldUpdateDynamicIconState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->shouldUpdateDynamicIconState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1242
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FolderContent;->updateCurrentPageDynamicIconState()V

    .line 1244
    :cond_0
    return-void
.end method

.method public updateTextViewFocus()V
    .locals 3

    .prologue
    .line 972
    iget-object v2, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/FolderContent;->getFirstItem()Landroid/view/View;

    move-result-object v0

    .line 973
    .local v0, "firstChild":Landroid/view/View;
    iget-object v2, p0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/FolderContent;->getLastItem()Landroid/view/View;

    move-result-object v1

    .line 974
    .local v1, "lastChild":Landroid/view/View;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 984
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/Folder;->setNextFocusDownId(I)V

    .line 985
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/Folder;->setNextFocusRightId(I)V

    .line 986
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/Folder;->setNextFocusLeftId(I)V

    .line 987
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/Folder;->setNextFocusUpId(I)V

    .line 989
    new-instance v2, Lnet/oneplus/h2launcher/Folder$9;

    invoke-direct {v2, p0, v1}, Lnet/oneplus/h2launcher/Folder$9;-><init>(Lnet/oneplus/h2launcher/Folder;Landroid/view/View;)V

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/Folder;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1001
    :cond_0
    return-void
.end method

.class public Lnet/oneplus/h2launcher/BubbleTextView;
.super Landroid/widget/TextView;
.source "BubbleTextView.java"

# interfaces
.implements Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar$FastScrollFocusableView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/BubbleTextView$BubbleTextShadowHandler;
    }
.end annotation


# static fields
.field private static final DISPLAY_ALL_APPS:I = 0x1

.field private static final DISPLAY_FOLDER:I = 0x2

.field private static final DISPLAY_WORKSPACE:I = 0x0

.field private static final FAST_SCROLL_FOCUS_FADE_IN_DURATION:I = 0xaf

.field private static final FAST_SCROLL_FOCUS_FADE_OUT_DURATION:I = 0x7d

.field private static final FAST_SCROLL_FOCUS_MAX_SCALE:F = 1.15f

.field private static final FAST_SCROLL_FOCUS_MODE_DRAW_CIRCLE_BG:I = 0x2

.field private static final FAST_SCROLL_FOCUS_MODE_NONE:I = 0x0

.field private static final FAST_SCROLL_FOCUS_MODE_SCALE_ICON:I = 0x1

.field private static sPreloaderThemes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/res/Resources$Theme;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

.field private final mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundSizeChanged:Z

.field private final mCustomShadowsEnabled:Z

.field private final mDeferShadowGenerationOnTouch:Z

.field private mDisableRelayout:Z

.field private final mDisplay:I

.field private mFastScrollFocusAnimator:Landroid/animation/ObjectAnimator;

.field private mFastScrollFocusBgPaint:Landroid/graphics/Paint;

.field private mFastScrollFocusFraction:F

.field private mFastScrollFocused:Z

.field private final mFastScrollMode:I

.field protected mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconLoadRequest:Lnet/oneplus/h2launcher/IconCache$IconLoadRequest;

.field protected mIconSize:I

.field private mIconSizeScale:F

.field private mIgnorePressedStateChange:Z

.field private mIsInIconRearrangementView:Z

.field protected final mLauncher:Lnet/oneplus/h2launcher/Launcher;

.field private final mLayoutHorizontal:Z

.field private final mLongPressHelper:Lnet/oneplus/h2launcher/CheckLongPressHelper;

.field private final mOutlineHelper:Lnet/oneplus/h2launcher/HolographicOutlineHelper;

.field private mPressedBackground:Landroid/graphics/Bitmap;

.field private mSlop:F

.field protected mStayPressed:Z

.field private final mStylusEventHelper:Lnet/oneplus/h2launcher/StylusEventHelper;

.field private mTextColor:I

.field private final mTextShadowColor:I

.field private final mTextShadowDy:I

.field private final mTextShadowRadius:I

.field private final mTopPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lnet/oneplus/h2launcher/BubbleTextView;->sPreloaderThemes:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnet/oneplus/h2launcher/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    const/4 v4, 0x0

    iput-object v4, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 87
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIconSizeScale:F

    .line 96
    iput-boolean v6, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mDisableRelayout:Z

    .line 102
    iput v7, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mFastScrollMode:I

    move-object v4, p1

    .line 122
    check-cast v4, Lnet/oneplus/h2launcher/Launcher;

    iput-object v4, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 123
    iget-object v4, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v2

    .line 125
    .local v2, "grid":Lnet/oneplus/h2launcher/DeviceProfile;
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/LauncherAppState;->getAssetCache()Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v4

    iput-object v4, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    .line 127
    sget-object v4, Lnet/oneplus/h2launcher/R$styleable;->BubbleTextView:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 129
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x4

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mCustomShadowsEnabled:Z

    .line 130
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mLayoutHorizontal:Z

    .line 131
    const/4 v4, 0x3

    .line 132
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mDeferShadowGenerationOnTouch:Z

    .line 134
    invoke-virtual {v0, v8, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mDisplay:I

    .line 135
    iget v1, v2, Lnet/oneplus/h2launcher/DeviceProfile;->iconSizePx:I

    .line 136
    .local v1, "defaultIconSize":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00a1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 137
    .local v3, "textSize":I
    iget v4, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mDisplay:I

    if-nez v4, :cond_1

    .line 138
    int-to-float v4, v3

    invoke-virtual {p0, v6, v4}, Lnet/oneplus/h2launcher/BubbleTextView;->setTextSize(IF)V

    .line 146
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mTopPadding:I

    .line 147
    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIconSize:I

    .line 150
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 152
    new-instance v4, Lnet/oneplus/h2launcher/CheckLongPressHelper;

    invoke-direct {v4, p0}, Lnet/oneplus/h2launcher/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mLongPressHelper:Lnet/oneplus/h2launcher/CheckLongPressHelper;

    .line 153
    new-instance v4, Lnet/oneplus/h2launcher/StylusEventHelper;

    invoke-direct {v4, p0}, Lnet/oneplus/h2launcher/StylusEventHelper;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mStylusEventHelper:Lnet/oneplus/h2launcher/StylusEventHelper;

    .line 155
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->obtain(Landroid/content/Context;)Lnet/oneplus/h2launcher/HolographicOutlineHelper;

    move-result-object v4

    iput-object v4, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mOutlineHelper:Lnet/oneplus/h2launcher/HolographicOutlineHelper;

    .line 157
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0095

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mTextShadowColor:I

    .line 158
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f001b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mTextShadowRadius:I

    .line 159
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f001a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mTextShadowDy:I

    .line 160
    invoke-direct {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->applyShadowStyle()V

    .line 169
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/LauncherAppState;->getAccessibilityDelegate()Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;

    move-result-object v4

    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/BubbleTextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 170
    invoke-static {p0}, Lcom/oneplus/sdk/wrapper/android/view/OpView;->enableQuickClick(Landroid/view/View;)I

    .line 171
    return-void

    .line 139
    :cond_1
    iget v4, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mDisplay:I

    if-ne v4, v7, :cond_2

    .line 140
    iget v4, v2, Lnet/oneplus/h2launcher/DeviceProfile;->allAppsIconTextSizeSp:F

    invoke-virtual {p0, v8, v4}, Lnet/oneplus/h2launcher/BubbleTextView;->setTextSize(IF)V

    .line 141
    iget v1, v2, Lnet/oneplus/h2launcher/DeviceProfile;->allAppsIconSizePx:I

    goto :goto_0

    .line 142
    :cond_2
    iget v4, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mDisplay:I

    if-ne v4, v8, :cond_0

    .line 143
    int-to-float v4, v3

    invoke-virtual {p0, v6, v4}, Lnet/oneplus/h2launcher/BubbleTextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/BubbleTextView;Lnet/oneplus/h2launcher/AppInfo;Lnet/oneplus/h2launcher/FastBitmapDrawable;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/BubbleTextView;
    .param p1, "x1"    # Lnet/oneplus/h2launcher/AppInfo;
    .param p2, "x2"    # Lnet/oneplus/h2launcher/FastBitmapDrawable;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/BubbleTextView;->setIconAndText(Lnet/oneplus/h2launcher/AppInfo;Lnet/oneplus/h2launcher/FastBitmapDrawable;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$101(Lnet/oneplus/h2launcher/BubbleTextView;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/BubbleTextView;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method private applyShadowStyle()V
    .locals 4

    .prologue
    .line 711
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mCustomShadowsEnabled:Z

    if-eqz v0, :cond_0

    .line 712
    iget v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mTextShadowRadius:I

    int-to-float v0, v0

    const/4 v1, 0x0

    iget v2, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mTextShadowDy:I

    int-to-float v2, v2

    iget v3, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mTextShadowColor:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lnet/oneplus/h2launcher/BubbleTextView;->setShadowLayer(FFFI)V

    .line 714
    :cond_0
    return-void
.end method

.method private getPreloaderTheme()Landroid/content/res/Resources$Theme;
    .locals 8

    .prologue
    .line 554
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 555
    .local v1, "tag":Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v3, v1, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v3, :cond_1

    check-cast v1, Lnet/oneplus/h2launcher/ShortcutInfo;

    .end local v1    # "tag":Ljava/lang/Object;
    iget-wide v4, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->container:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_1

    const v0, 0x7f0a02a3

    .line 558
    .local v0, "style":I
    :goto_0
    sget-object v3, Lnet/oneplus/h2launcher/BubbleTextView;->sPreloaderThemes:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Resources$Theme;

    .line 559
    .local v2, "theme":Landroid/content/res/Resources$Theme;
    if-nez v2, :cond_0

    .line 560
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 561
    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 562
    sget-object v3, Lnet/oneplus/h2launcher/BubbleTextView;->sPreloaderThemes:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 564
    :cond_0
    return-object v2

    .line 555
    .end local v0    # "style":I
    .end local v2    # "theme":Landroid/content/res/Resources$Theme;
    :cond_1
    const v0, 0x7f0a02a2

    goto :goto_0
.end method

.method private setIconAndText(Lnet/oneplus/h2launcher/AppInfo;Lnet/oneplus/h2launcher/FastBitmapDrawable;Ljava/lang/String;)V
    .locals 2
    .param p1, "info"    # Lnet/oneplus/h2launcher/AppInfo;
    .param p2, "drawable"    # Lnet/oneplus/h2launcher/FastBitmapDrawable;
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    .line 274
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/AppInfo;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/AppInfo;->isDisabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->setGhostModeEnabled(Z)V

    .line 278
    :cond_0
    iget v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIconSizeScale:F

    iget v1, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIconSize:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, p2, v0}, Lnet/oneplus/h2launcher/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 279
    invoke-virtual {p0, p3}, Lnet/oneplus/h2launcher/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p1, Lnet/oneplus/h2launcher/AppInfo;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p1, Lnet/oneplus/h2launcher/AppInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/BubbleTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 284
    :cond_1
    invoke-static {p0, p1}, Lnet/oneplus/h2launcher/BubbleTextView;->access$101(Lnet/oneplus/h2launcher/BubbleTextView;Ljava/lang/Object;)V

    .line 287
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->verifyHighRes()V

    .line 288
    return-void
.end method


# virtual methods
.method public applyFromApplicationInfo(Lnet/oneplus/h2launcher/AppInfo;)V
    .locals 1
    .param p1, "info"    # Lnet/oneplus/h2launcher/AppInfo;

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/oneplus/h2launcher/BubbleTextView;->applyFromApplicationInfo(Lnet/oneplus/h2launcher/AppInfo;Z)V

    .line 245
    return-void
.end method

.method public applyFromApplicationInfo(Lnet/oneplus/h2launcher/AppInfo;Z)V
    .locals 1
    .param p1, "info"    # Lnet/oneplus/h2launcher/AppInfo;
    .param p2, "promiseStateChanged"    # Z

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/BubbleTextView;->applyFromApplicationInfo(Lnet/oneplus/h2launcher/AppInfo;ZZ)V

    .line 249
    return-void
.end method

.method public applyFromApplicationInfo(Lnet/oneplus/h2launcher/AppInfo;ZZ)V
    .locals 3
    .param p1, "info"    # Lnet/oneplus/h2launcher/AppInfo;
    .param p2, "promiseStateChanged"    # Z
    .param p3, "applyInBackground"    # Z

    .prologue
    .line 252
    new-instance v0, Lnet/oneplus/h2launcher/BubbleTextView$1;

    invoke-direct {v0, p0, p1, p2}, Lnet/oneplus/h2launcher/BubbleTextView$1;-><init>(Lnet/oneplus/h2launcher/BubbleTextView;Lnet/oneplus/h2launcher/AppInfo;Z)V

    .line 265
    .local v0, "applyRunnable":Ljava/lang/Runnable;
    if-eqz p3, :cond_0

    .line 266
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/util/TaskWorker;->post(Ljava/lang/Runnable;)V

    .line 271
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-object v2, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {p1, v2, p2}, Lnet/oneplus/h2launcher/AppInfo;->getIcon(Lnet/oneplus/h2launcher/AssetCache;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/Launcher;->createIconDrawable(Landroid/graphics/Bitmap;)Lnet/oneplus/h2launcher/FastBitmapDrawable;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    .line 269
    invoke-virtual {p1, v2, p2}, Lnet/oneplus/h2launcher/AppInfo;->getLabel(Lnet/oneplus/h2launcher/AssetCache;Z)Ljava/lang/String;

    move-result-object v2

    .line 268
    invoke-direct {p0, p1, v1, v2}, Lnet/oneplus/h2launcher/BubbleTextView;->setIconAndText(Lnet/oneplus/h2launcher/AppInfo;Lnet/oneplus/h2launcher/FastBitmapDrawable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public applyFromPackageItemInfo(Lnet/oneplus/h2launcher/model/PackageItemInfo;)V
    .locals 2
    .param p1, "info"    # Lnet/oneplus/h2launcher/model/PackageItemInfo;

    .prologue
    .line 291
    iget-object v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/model/PackageItemInfo;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Launcher;->createIconDrawable(Landroid/graphics/Bitmap;)Lnet/oneplus/h2launcher/FastBitmapDrawable;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIconSize:I

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 292
    iget-object v0, p1, Lnet/oneplus/h2launcher/model/PackageItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v0, p1, Lnet/oneplus/h2launcher/model/PackageItemInfo;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p1, Lnet/oneplus/h2launcher/model/PackageItemInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/BubbleTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 298
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 301
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->verifyHighRes()V

    .line 302
    return-void
.end method

.method public applyFromShortcutInfo(Lnet/oneplus/h2launcher/ShortcutInfo;)V
    .locals 1
    .param p1, "info"    # Lnet/oneplus/h2launcher/ShortcutInfo;

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/oneplus/h2launcher/BubbleTextView;->applyFromShortcutInfo(Lnet/oneplus/h2launcher/ShortcutInfo;Z)V

    .line 188
    return-void
.end method

.method public applyFromShortcutInfo(Lnet/oneplus/h2launcher/ShortcutInfo;Z)V
    .locals 1
    .param p1, "info"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .param p2, "promiseStateChanged"    # Z

    .prologue
    .line 191
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/BubbleTextView;->applyFromShortcutInfo(Lnet/oneplus/h2launcher/ShortcutInfo;ZZ)V

    .line 192
    return-void
.end method

.method public applyFromShortcutInfo(Lnet/oneplus/h2launcher/ShortcutInfo;ZZ)V
    .locals 1
    .param p1, "info"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .param p2, "promiseStateChanged"    # Z
    .param p3, "animateChange"    # Z

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnet/oneplus/h2launcher/BubbleTextView;->applyFromShortcutInfo(Lnet/oneplus/h2launcher/ShortcutInfo;ZZZ)V

    .line 197
    return-void
.end method

.method public applyFromShortcutInfo(Lnet/oneplus/h2launcher/ShortcutInfo;ZZZ)V
    .locals 8
    .param p1, "info"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .param p2, "promiseStateChanged"    # Z
    .param p3, "animateChange"    # Z
    .param p4, "inIconRearrangeView"    # Z

    .prologue
    .line 201
    iput-boolean p4, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIsInIconRearrangementView:Z

    .line 203
    instance-of v6, p1, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    if-eqz v6, :cond_4

    .line 204
    iget-object v6, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {p1, v6, p2}, Lnet/oneplus/h2launcher/ShortcutInfo;->getIcon(Lnet/oneplus/h2launcher/AssetCache;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "b":Landroid/graphics/Bitmap;
    move-object v6, p1

    .line 205
    check-cast v6, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    invoke-interface {v6}, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;->refreshConfig()V

    move-object v6, p1

    .line 206
    check-cast v6, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    invoke-interface {v6}, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;->getStaticDrawable()Lnet/oneplus/h2launcher/FastBitmapDrawable;

    move-result-object v2

    .line 207
    .local v2, "iconDrawable":Lnet/oneplus/h2launcher/FastBitmapDrawable;
    iget-object v6, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnet/oneplus/h2launcher/AssetCache;->containsDynamicIconCache(Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, p1

    .line 208
    check-cast v6, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    invoke-interface {v6}, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;->updateIconCache()V

    .line 214
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/ShortcutInfo;->isDisabled()Z

    move-result v6

    invoke-virtual {v2, v6}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->setGhostModeEnabled(Z)V

    .line 216
    iget-boolean v6, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIsInIconRearrangementView:Z

    if-eqz v6, :cond_5

    .line 217
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p0, v6}, Lnet/oneplus/h2launcher/BubbleTextView;->setIconSizeScale(F)V

    .line 218
    iget-object v6, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0095

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 219
    .local v3, "iconSize":I
    iput v3, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIconSize:I

    .line 220
    iget-object v6, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v1

    .line 221
    .local v1, "grid":Lnet/oneplus/h2launcher/DeviceProfile;
    iget v6, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIconSize:I

    invoke-virtual {p0, v2, v6}, Lnet/oneplus/h2launcher/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 223
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 224
    .local v4, "res":Landroid/content/res/Resources;
    const v6, 0x7f0c0097

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 225
    .local v5, "textSize":I
    const/4 v6, 0x0

    int-to-float v7, v5

    invoke-virtual {p0, v6, v7}, Lnet/oneplus/h2launcher/BubbleTextView;->setTextSize(IF)V

    .line 227
    const v6, 0x7f0c0096

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lnet/oneplus/h2launcher/BubbleTextView;->setCompoundDrawablePadding(I)V

    .line 232
    .end local v1    # "grid":Lnet/oneplus/h2launcher/DeviceProfile;
    .end local v3    # "iconSize":I
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v5    # "textSize":I
    :goto_1
    iget-object v6, p1, Lnet/oneplus/h2launcher/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v6, :cond_1

    .line 233
    iget-object v6, p1, Lnet/oneplus/h2launcher/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Lnet/oneplus/h2launcher/BubbleTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 235
    :cond_1
    iget-object v6, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {p1, v6, p2}, Lnet/oneplus/h2launcher/ShortcutInfo;->getLabel(Lnet/oneplus/h2launcher/AssetCache;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lnet/oneplus/h2launcher/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/BubbleTextView;->setTag(Ljava/lang/Object;)V

    .line 238
    if-nez p2, :cond_2

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/ShortcutInfo;->isPromise()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    if-eqz p3, :cond_3

    .line 239
    invoke-virtual {p0, p2}, Lnet/oneplus/h2launcher/BubbleTextView;->applyState(Z)V

    .line 241
    :cond_3
    return-void

    .line 211
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v2    # "iconDrawable":Lnet/oneplus/h2launcher/FastBitmapDrawable;
    :cond_4
    iget-object v6, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {p1, v6, p2}, Lnet/oneplus/h2launcher/ShortcutInfo;->getIcon(Lnet/oneplus/h2launcher/AssetCache;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 212
    .restart local v0    # "b":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v6, v0}, Lnet/oneplus/h2launcher/Launcher;->createIconDrawable(Landroid/graphics/Bitmap;)Lnet/oneplus/h2launcher/FastBitmapDrawable;

    move-result-object v2

    .restart local v2    # "iconDrawable":Lnet/oneplus/h2launcher/FastBitmapDrawable;
    goto :goto_0

    .line 229
    :cond_5
    iget v6, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIconSize:I

    int-to-float v6, v6

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lnet/oneplus/h2launcher/Utilities;->getIconScaleValue(Landroid/content/Context;)F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {p0, v2, v6}, Lnet/oneplus/h2launcher/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public applyIconSizeScale(F)V
    .locals 3
    .param p1, "iconSizeScale"    # F

    .prologue
    .line 180
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIsInIconRearrangementView:Z

    if-nez v0, :cond_0

    .line 181
    iput p1, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIconSizeScale:F

    .line 182
    iget-object v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIconSize:I

    int-to-float v1, v1

    iget v2, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIconSizeScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 184
    :cond_0
    return-void
.end method

.method public applyState(Z)V
    .locals 6
    .param p1, "promiseStateChanged"    # Z

    .prologue
    .line 529
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v4, :cond_0

    .line 530
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 531
    .local v0, "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/ShortcutInfo;->isPromise()Z

    move-result v1

    .line 532
    .local v1, "isPromise":Z
    if-eqz v1, :cond_2

    const/4 v4, 0x4

    .line 533
    invoke-virtual {v0, v4}, Lnet/oneplus/h2launcher/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 534
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/ShortcutInfo;->getInstallProgress()I

    move-result v3

    .line 536
    .local v3, "progressLevel":I
    :goto_0
    iget-object v4, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 538
    iget-object v4, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    instance-of v4, v4, Lnet/oneplus/h2launcher/PreloadIconDrawable;

    if-eqz v4, :cond_3

    .line 539
    iget-object v2, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    check-cast v2, Lnet/oneplus/h2launcher/PreloadIconDrawable;

    .line 545
    .local v2, "preloadDrawable":Lnet/oneplus/h2launcher/PreloadIconDrawable;
    :goto_1
    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/PreloadIconDrawable;->setLevel(I)Z

    .line 546
    if-eqz p1, :cond_0

    .line 547
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/PreloadIconDrawable;->maybePerformFinishedAnimation()V

    .line 551
    .end local v0    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    .end local v1    # "isPromise":Z
    .end local v2    # "preloadDrawable":Lnet/oneplus/h2launcher/PreloadIconDrawable;
    .end local v3    # "progressLevel":I
    :cond_0
    return-void

    .line 534
    .restart local v0    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    .restart local v1    # "isPromise":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/16 v3, 0x64

    goto :goto_0

    .line 541
    .restart local v3    # "progressLevel":I
    :cond_3
    new-instance v2, Lnet/oneplus/h2launcher/PreloadIconDrawable;

    iget-object v4, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->getPreloaderTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lnet/oneplus/h2launcher/PreloadIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    .line 542
    .restart local v2    # "preloadDrawable":Lnet/oneplus/h2launcher/PreloadIconDrawable;
    iget v4, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIconSize:I

    invoke-virtual {p0, v2, v4}, Lnet/oneplus/h2launcher/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 523
    invoke-super {p0}, Landroid/widget/TextView;->cancelLongPress()V

    .line 525
    iget-object v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mLongPressHelper:Lnet/oneplus/h2launcher/CheckLongPressHelper;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CheckLongPressHelper;->cancelLongPress()V

    .line 526
    return-void
.end method

.method clearPressedBackground()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 423
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/BubbleTextView;->setPressed(Z)V

    .line 424
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/BubbleTextView;->setStayPressed(Z)V

    .line 425
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 455
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mCustomShadowsEnabled:Z

    if-nez v0, :cond_0

    .line 466
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 479
    :goto_0
    return-void

    .line 472
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->getCurrentTextColor()I

    move-result v0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 473
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->clearShadowLayer()V

    .line 474
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 478
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getFastScrollFocus()F
    .locals 1

    .prologue
    .line 670
    iget v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mFastScrollFocusFraction:F

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isLayoutHorizontal()Z
    .locals 1

    .prologue
    .line 348
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mLayoutHorizontal:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 483
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 485
    iget-object v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 487
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lnet/oneplus/h2launcher/PreloadIconDrawable;

    if-eqz v0, :cond_1

    .line 488
    iget-object v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lnet/oneplus/h2launcher/PreloadIconDrawable;

    invoke-direct {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->getPreloaderTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/PreloadIconDrawable;->applyPreloaderTheme(Landroid/content/res/Resources$Theme;)V

    .line 490
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mSlop:F

    .line 491
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 495
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 496
    iget-object v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 497
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 429
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 432
    iget-object v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mOutlineHelper:Lnet/oneplus/h2launcher/HolographicOutlineHelper;

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->createMediumDropShadow(Lnet/oneplus/h2launcher/BubbleTextView;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    .line 434
    :cond_0
    const/4 v0, 0x1

    .line 436
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 444
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIgnorePressedStateChange:Z

    .line 445
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 447
    .local v0, "result":Z
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    .line 448
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIgnorePressedStateChange:Z

    .line 449
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->updateIconState()V

    .line 450
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 361
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 364
    .local v0, "result":Z
    iget-object v1, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mStylusEventHelper:Lnet/oneplus/h2launcher/StylusEventHelper;

    invoke-virtual {v1, p1}, Lnet/oneplus/h2launcher/StylusEventHelper;->checkAndPerformStylusEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    iget-object v1, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mLongPressHelper:Lnet/oneplus/h2launcher/CheckLongPressHelper;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CheckLongPressHelper;->cancelLongPress()V

    .line 366
    const/4 v0, 0x1

    .line 369
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 399
    :cond_1
    :goto_0
    return v0

    .line 374
    :pswitch_0
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mDeferShadowGenerationOnTouch:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 375
    iget-object v1, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mOutlineHelper:Lnet/oneplus/h2launcher/HolographicOutlineHelper;

    invoke-virtual {v1, p0}, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->createMediumDropShadow(Lnet/oneplus/h2launcher/BubbleTextView;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    .line 379
    :cond_2
    iget-object v1, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mStylusEventHelper:Lnet/oneplus/h2launcher/StylusEventHelper;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/StylusEventHelper;->inStylusButtonPressed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 380
    iget-object v1, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mLongPressHelper:Lnet/oneplus/h2launcher/CheckLongPressHelper;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CheckLongPressHelper;->postCheckForLongPress()V

    goto :goto_0

    .line 387
    :pswitch_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->isPressed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 388
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    .line 391
    :cond_3
    iget-object v1, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mLongPressHelper:Lnet/oneplus/h2launcher/CheckLongPressHelper;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 394
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mSlop:F

    invoke-static {p0, v1, v2, v3}, Lnet/oneplus/h2launcher/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result v1

    if-nez v1, :cond_1

    .line 395
    iget-object v1, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mLongPressHelper:Lnet/oneplus/h2launcher/CheckLongPressHelper;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 369
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public reapplyItemInfo(Lnet/oneplus/h2launcher/ItemInfo;)V
    .locals 6
    .param p1, "info"    # Lnet/oneplus/h2launcher/ItemInfo;

    .prologue
    .line 608
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 609
    const/4 v2, 0x0

    iput-object v2, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIconLoadRequest:Lnet/oneplus/h2launcher/IconCache$IconLoadRequest;

    .line 610
    const/4 v2, 0x1

    iput-boolean v2, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mDisableRelayout:Z

    .line 611
    instance-of v2, p1, Lnet/oneplus/h2launcher/AppInfo;

    if-eqz v2, :cond_2

    .line 612
    check-cast p1, Lnet/oneplus/h2launcher/AppInfo;

    .end local p1    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/BubbleTextView;->applyFromApplicationInfo(Lnet/oneplus/h2launcher/AppInfo;)V

    .line 625
    :cond_0
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mDisableRelayout:Z

    .line 627
    :cond_1
    return-void

    .line 613
    .restart local p1    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    :cond_2
    instance-of v2, p1, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v2, :cond_3

    move-object v2, p1

    .line 614
    check-cast v2, Lnet/oneplus/h2launcher/ShortcutInfo;

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/BubbleTextView;->applyFromShortcutInfo(Lnet/oneplus/h2launcher/ShortcutInfo;)V

    .line 615
    iget v2, p1, Lnet/oneplus/h2launcher/ItemInfo;->rank:I

    invoke-static {}, Lnet/oneplus/h2launcher/FolderIcon;->getNumItemsInPreview()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-wide v2, p1, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 616
    iget-object v2, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v1

    .line 617
    .local v1, "workspace":Lnet/oneplus/h2launcher/Workspace;
    if-eqz v1, :cond_0

    .line 618
    iget-wide v2, p1, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    invoke-virtual {v1, v2, v3}, Lnet/oneplus/h2launcher/Workspace;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v0

    .line 619
    .local v0, "folderIcon":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 622
    .end local v0    # "folderIcon":Landroid/view/View;
    .end local v1    # "workspace":Lnet/oneplus/h2launcher/Workspace;
    :cond_3
    instance-of v2, p1, Lnet/oneplus/h2launcher/model/PackageItemInfo;

    if-eqz v2, :cond_0

    .line 623
    check-cast p1, Lnet/oneplus/h2launcher/model/PackageItemInfo;

    .end local p1    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/BubbleTextView;->applyFromPackageItemInfo(Lnet/oneplus/h2launcher/model/PackageItemInfo;)V

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 599
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mDisableRelayout:Z

    if-nez v0, :cond_0

    .line 600
    invoke-super {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 602
    :cond_0
    return-void
.end method

.method public setFastScrollFocus(F)V
    .locals 3
    .param p1, "fraction"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3e199998    # 0.14999998f

    .line 660
    iput p1, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mFastScrollFocusFraction:F

    .line 662
    mul-float v0, p1, v1

    add-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/BubbleTextView;->setScaleX(F)V

    .line 663
    mul-float v0, p1, v1

    add-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/BubbleTextView;->setScaleY(F)V

    .line 667
    return-void
.end method

.method public setFastScrollFocused(ZZ)V
    .locals 5
    .param p1, "focused"    # Z
    .param p2, "animated"    # Z

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 679
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mFastScrollFocused:Z

    if-eq v2, p1, :cond_1

    .line 680
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mFastScrollFocused:Z

    .line 682
    if-eqz p2, :cond_5

    .line 684
    iget-object v2, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mFastScrollFocusAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_0

    .line 685
    iget-object v2, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mFastScrollFocusAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 687
    :cond_0
    const-string v2, "fastScrollFocus"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    :goto_0
    aput v0, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mFastScrollFocusAnimator:Landroid/animation/ObjectAnimator;

    .line 689
    if-eqz p1, :cond_3

    .line 690
    iget-object v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mFastScrollFocusAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 694
    :goto_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mFastScrollFocusAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_4

    const-wide/16 v0, 0xaf

    :goto_2
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 696
    iget-object v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mFastScrollFocusAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 701
    :cond_1
    :goto_3
    return-void

    :cond_2
    move v0, v1

    .line 687
    goto :goto_0

    .line 692
    :cond_3
    iget-object v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mFastScrollFocusAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1

    .line 694
    :cond_4
    const-wide/16 v0, 0x7d

    goto :goto_2

    .line 698
    :cond_5
    if-eqz p1, :cond_6

    :goto_4
    iput v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mFastScrollFocusFraction:F

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_4
.end method

.method protected setFrame(IIII)Z
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 313
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->getLeft()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->getRight()I

    move-result v0

    if-ne v0, p3, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->getTop()I

    move-result v0

    if-ne v0, p2, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->getBottom()I

    move-result v0

    if-eq v0, p4, :cond_1

    .line 314
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mBackgroundSizeChanged:Z

    .line 316
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 572
    iput-object p1, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 573
    return-object p1
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "iconSize"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 581
    iput-object p1, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 582
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 583
    iget-object v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v2, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 585
    :cond_0
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mLayoutHorizontal:Z

    if-eqz v0, :cond_2

    .line 586
    sget-boolean v0, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_JB_MR1:Z

    if-eqz v0, :cond_1

    .line 587
    iget-object v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v1, v1, v1}, Lnet/oneplus/h2launcher/BubbleTextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 594
    :goto_0
    return-object p1

    .line 589
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v1, v1, v1}, Lnet/oneplus/h2launcher/BubbleTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 592
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0, v1, v1}, Lnet/oneplus/h2launcher/BubbleTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setIconSizeScale(F)V
    .locals 1
    .param p1, "iconSizeScale"    # F

    .prologue
    .line 174
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIsInIconRearrangementView:Z

    if-nez v0, :cond_0

    .line 175
    iput p1, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIconSizeScale:F

    .line 177
    :cond_0
    return-void
.end method

.method public setLongPressTimeout(I)V
    .locals 1
    .param p1, "longPressTimeout"    # I

    .prologue
    .line 308
    iget-object v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mLongPressHelper:Lnet/oneplus/h2launcher/CheckLongPressHelper;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/CheckLongPressHelper;->setLongPressTimeout(I)V

    .line 309
    return-void
.end method

.method public setPadding(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 718
    iget v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mDisplay:I

    if-nez v0, :cond_0

    .line 719
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/ItemInfo;

    invoke-static {v1, v0}, Lnet/oneplus/h2launcher/Utilities;->getIconTopOffset(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;)I

    move-result v0

    add-int/2addr p2, v0

    .line 721
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 722
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 334
    invoke-super {p0, p1}, Landroid/widget/TextView;->setPressed(Z)V

    .line 336
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIgnorePressedStateChange:Z

    if-nez v0, :cond_0

    .line 337
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->updateIconState()V

    .line 339
    :cond_0
    return-void
.end method

.method setStayPressed(Z)V
    .locals 3
    .param p1, "stayPressed"    # Z

    .prologue
    .line 403
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mStayPressed:Z

    .line 404
    if-nez p1, :cond_2

    .line 405
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    .line 413
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 414
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lnet/oneplus/h2launcher/BubbleTextView$BubbleTextShadowHandler;

    if-eqz v1, :cond_1

    .line 415
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/BubbleTextView$BubbleTextShadowHandler;

    iget-object v2, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    invoke-interface {v1, p0, v2}, Lnet/oneplus/h2launcher/BubbleTextView$BubbleTextShadowHandler;->setPressedIcon(Lnet/oneplus/h2launcher/BubbleTextView;Landroid/graphics/Bitmap;)V

    .line 419
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->updateIconState()V

    .line 420
    return-void

    .line 407
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_2
    iget-object v1, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 408
    iget-object v1, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mOutlineHelper:Lnet/oneplus/h2launcher/HolographicOutlineHelper;

    invoke-virtual {v1, p0}, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->createMediumDropShadow(Lnet/oneplus/h2launcher/BubbleTextView;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 326
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 327
    check-cast v0, Lnet/oneplus/h2launcher/ItemInfo;

    invoke-static {v0}, Lnet/oneplus/h2launcher/LauncherModel;->checkItemInfo(Lnet/oneplus/h2launcher/ItemInfo;)V

    .line 329
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 330
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 501
    iput p1, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mTextColor:I

    .line 502
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 503
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 507
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mTextColor:I

    .line 508
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 509
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 512
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 513
    .local v0, "res":Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    .line 514
    iget v1, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mTextColor:I

    invoke-super {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 515
    invoke-direct {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->applyShadowStyle()V

    .line 519
    :goto_0
    return-void

    .line 517
    :cond_0
    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-super {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method protected updateIconState()V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lnet/oneplus/h2launcher/FastBitmapDrawable;

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lnet/oneplus/h2launcher/FastBitmapDrawable;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mStayPressed:Z

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->setPressed(Z)V

    .line 355
    :cond_1
    return-void

    .line 353
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 321
    iget-object v0, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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

.method public verifyHighRes()V
    .locals 2

    .prologue
    .line 633
    iget-object v1, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIconLoadRequest:Lnet/oneplus/h2launcher/IconCache$IconLoadRequest;

    if-eqz v1, :cond_0

    .line 634
    iget-object v1, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIconLoadRequest:Lnet/oneplus/h2launcher/IconCache$IconLoadRequest;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/IconCache$IconLoadRequest;->cancel()V

    .line 635
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIconLoadRequest:Lnet/oneplus/h2launcher/IconCache$IconLoadRequest;

    .line 637
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lnet/oneplus/h2launcher/AppInfo;

    if-eqz v1, :cond_2

    .line 638
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/AppInfo;

    .line 639
    .local v0, "info":Lnet/oneplus/h2launcher/AppInfo;
    iget-boolean v1, v0, Lnet/oneplus/h2launcher/AppInfo;->usingLowResIcon:Z

    if-eqz v1, :cond_1

    .line 640
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherAppState;->getAssetCache()Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v1

    .line 641
    invoke-virtual {v1, p0, v0}, Lnet/oneplus/h2launcher/AssetCache;->updateIconInBackground(Lnet/oneplus/h2launcher/BubbleTextView;Lnet/oneplus/h2launcher/ItemInfo;)Lnet/oneplus/h2launcher/IconCache$IconLoadRequest;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIconLoadRequest:Lnet/oneplus/h2launcher/IconCache$IconLoadRequest;

    .line 656
    .end local v0    # "info":Lnet/oneplus/h2launcher/AppInfo;
    :cond_1
    :goto_0
    return-void

    .line 643
    :cond_2
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v1, :cond_3

    .line 644
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 645
    .local v0, "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    iget-boolean v1, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->usingLowResIcon:Z

    if-eqz v1, :cond_1

    .line 646
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherAppState;->getAssetCache()Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v1

    .line 647
    invoke-virtual {v1, p0, v0}, Lnet/oneplus/h2launcher/AssetCache;->updateIconInBackground(Lnet/oneplus/h2launcher/BubbleTextView;Lnet/oneplus/h2launcher/ItemInfo;)Lnet/oneplus/h2launcher/IconCache$IconLoadRequest;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIconLoadRequest:Lnet/oneplus/h2launcher/IconCache$IconLoadRequest;

    goto :goto_0

    .line 649
    .end local v0    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_3
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lnet/oneplus/h2launcher/model/PackageItemInfo;

    if-eqz v1, :cond_1

    .line 650
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/model/PackageItemInfo;

    .line 651
    .local v0, "info":Lnet/oneplus/h2launcher/model/PackageItemInfo;
    iget-boolean v1, v0, Lnet/oneplus/h2launcher/model/PackageItemInfo;->usingLowResIcon:Z

    if-eqz v1, :cond_1

    .line 652
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherAppState;->getAssetCache()Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v1

    .line 653
    invoke-virtual {v1, p0, v0}, Lnet/oneplus/h2launcher/AssetCache;->updateIconInBackground(Lnet/oneplus/h2launcher/BubbleTextView;Lnet/oneplus/h2launcher/ItemInfo;)Lnet/oneplus/h2launcher/IconCache$IconLoadRequest;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/BubbleTextView;->mIconLoadRequest:Lnet/oneplus/h2launcher/IconCache$IconLoadRequest;

    goto :goto_0
.end method

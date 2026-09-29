.class public Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;
.super Lnet/oneplus/h2launcher/FolderIcon;
.source "IconRearrangementAddFolderIcon.java"


# static fields
.field public static final ALPHA_ANIMATION_DRUATION:I = 0x64

.field public static final ALPHA_DISABLE:F = 0.2f

.field public static final ALPHA_ENABLE:F = 1.0f

.field public static final ALPHA_HIDE:F = 0.0f

.field public static final TEXTVIEW_ALPHA_ANIMATION_DRUATION:I = 0x190


# instance fields
.field private mEnableAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

.field protected mFakeFolderAnimationName:Lnet/oneplus/h2launcher/BubbleTextView;

.field private mFakeIconDrawableList:[Landroid/graphics/drawable/Drawable;

.field private mLastAlpha:F

.field mUseDarkColor:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/FolderIcon;-><init>(Landroid/content/Context;)V

    .line 38
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mLastAlpha:F

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/FolderIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mLastAlpha:F

    .line 42
    return-void
.end method

.method private computePreviewDrawingParams(II)V
    .locals 9
    .param p1, "drawableSize"    # I
    .param p2, "totalSize"    # I

    .prologue
    .line 98
    iget v7, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mIntrinsicIconSize:I

    if-ne v7, p1, :cond_0

    iget v7, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mTotalWidth:I

    if-eq v7, p2, :cond_1

    .line 99
    :cond_0
    iget-object v7, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v2

    .line 100
    .local v2, "grid":Lnet/oneplus/h2launcher/DeviceProfile;
    iput p1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mIntrinsicIconSize:I

    .line 101
    iput p2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mTotalWidth:I

    .line 103
    iget-object v7, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v5, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 104
    .local v5, "previewSize":I
    sget v4, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->sPreviewPadding:I

    .line 106
    .local v4, "previewPadding":I
    mul-int/lit8 v7, v4, 0x2

    sub-int v7, v5, v7

    iput v7, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mAvailableSpaceInPreview:I

    .line 108
    iget-object v7, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0093

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFourGridIconSize:I

    .line 109
    iget-object v7, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0092

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFourGridIconGap:I

    .line 111
    iget v7, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFourGridIconSize:I

    mul-int/lit8 v7, v7, 0x2

    iget v8, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFourGridIconGap:I

    add-int v0, v7, v8

    .line 113
    .local v0, "actualWidth":I
    iget v7, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mAvailableSpaceInPreview:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    const v8, 0x3fe66666    # 1.8f

    mul-float/2addr v7, v8

    float-to-int v1, v7

    .line 115
    .local v1, "adjustedAvailableSpace":I
    iget v7, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mIntrinsicIconSize:I

    int-to-float v7, v7

    const v8, 0x3f970a3e    # 1.1800001f

    mul-float/2addr v7, v8

    float-to-int v6, v7

    .line 117
    .local v6, "unscaledHeight":I
    const/high16 v7, 0x3f800000    # 1.0f

    int-to-float v8, v1

    mul-float/2addr v7, v8

    int-to-float v8, v6

    div-float/2addr v7, v8

    iput v7, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mBaselineIconScale:F

    .line 119
    iget v7, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mIntrinsicIconSize:I

    int-to-float v7, v7

    iget v8, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mBaselineIconScale:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mBaselineIconSize:I

    .line 120
    iget v7, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mBaselineIconSize:I

    int-to-float v7, v7

    const v8, 0x3e3851ec    # 0.18f

    mul-float/2addr v7, v8

    iput v7, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mMaxPerspectiveShift:F

    .line 122
    iget v7, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mTotalWidth:I

    sub-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x2

    iput v7, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mPreviewOffsetX:I

    .line 124
    iget-object v7, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 125
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->getPaddingTop()I

    move-result v7

    iget v8, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v8

    sub-int v8, v5, v0

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iput v7, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mPreviewOffsetY:I

    .line 127
    .end local v0    # "actualWidth":I
    .end local v1    # "adjustedAvailableSpace":I
    .end local v2    # "grid":Lnet/oneplus/h2launcher/DeviceProfile;
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "previewPadding":I
    .end local v5    # "previewSize":I
    .end local v6    # "unscaledHeight":I
    :cond_1
    return-void
.end method

.method public static fromXml(ILnet/oneplus/h2launcher/Launcher;Landroid/view/ViewGroup;)Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;
    .locals 11
    .param p0, "resId"    # I
    .param p1, "launcher"    # Lnet/oneplus/h2launcher/Launcher;
    .param p2, "group"    # Landroid/view/ViewGroup;

    .prologue
    const v10, 0x7f0c0094

    const/4 v9, 0x0

    .line 51
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 52
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v1

    .line 53
    .local v1, "grid":Lnet/oneplus/h2launcher/DeviceProfile;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 55
    .local v5, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    invoke-virtual {v7, p0, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;

    .line 57
    .local v2, "icon":Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;
    invoke-virtual {v2, v9}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->setClipToPadding(Z)V

    .line 58
    const v7, 0x7f110119

    .line 59
    invoke-virtual {v2, v7}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lnet/oneplus/h2launcher/BubbleTextView;

    iput-object v7, v2, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFolderName:Lnet/oneplus/h2launcher/BubbleTextView;

    .line 60
    const v7, 0x7f110138

    .line 61
    invoke-virtual {v2, v7}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lnet/oneplus/h2launcher/BubbleTextView;

    iput-object v7, v2, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFakeFolderAnimationName:Lnet/oneplus/h2launcher/BubbleTextView;

    .line 63
    invoke-virtual {v2, v9}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->setClipToPadding(Z)V

    .line 64
    const v7, 0x7f0c0097

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 66
    .local v6, "textSize":I
    iget-object v7, v2, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFolderName:Lnet/oneplus/h2launcher/BubbleTextView;

    invoke-virtual {v7, v9}, Lnet/oneplus/h2launcher/BubbleTextView;->setCompoundDrawablePadding(I)V

    .line 67
    iget-object v7, v2, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFolderName:Lnet/oneplus/h2launcher/BubbleTextView;

    int-to-float v8, v6

    invoke-virtual {v7, v9, v8}, Lnet/oneplus/h2launcher/BubbleTextView;->setTextSize(IF)V

    .line 68
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v8, 0x7f0c0096

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int v4, v7, v8

    .line 69
    .local v4, "paddingTop":I
    iget-object v7, v2, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFolderName:Lnet/oneplus/h2launcher/BubbleTextView;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/BubbleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 70
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 72
    iget-object v7, v2, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFakeFolderAnimationName:Lnet/oneplus/h2launcher/BubbleTextView;

    invoke-virtual {v7, v9}, Lnet/oneplus/h2launcher/BubbleTextView;->setCompoundDrawablePadding(I)V

    .line 73
    iget-object v7, v2, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFakeFolderAnimationName:Lnet/oneplus/h2launcher/BubbleTextView;

    int-to-float v8, v6

    invoke-virtual {v7, v9, v8}, Lnet/oneplus/h2launcher/BubbleTextView;->setTextSize(IF)V

    .line 74
    iget-object v7, v2, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFakeFolderAnimationName:Lnet/oneplus/h2launcher/BubbleTextView;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/BubbleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 75
    .restart local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 78
    const v7, 0x7f110118

    invoke-virtual {v2, v7}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v2, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    .line 79
    iget-object v7, v2, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 80
    .restart local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 81
    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 83
    iput-object p1, v2, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 85
    new-instance v7, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    invoke-direct {v7, p1, v2}, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;-><init>(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/FolderIcon;)V

    iput-object v7, v2, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFolderRingAnimator:Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    .line 87
    iput-object p1, v2, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 88
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->initFolderBackground()V

    .line 90
    iget-object v7, v2, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    const v8, 0x7f02005b

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 91
    iget-object v7, v2, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 92
    iget-object v7, v2, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    const v8, 0x7f0200cf

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    invoke-virtual {v2, v9}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->setEnabled(Z)V

    .line 94
    return-object v2
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 131
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/FolderIcon;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 133
    iget-object v2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFakeIconDrawableList:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFakeIconDrawableList:[Landroid/graphics/drawable/Drawable;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 134
    iget-object v2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFakeIconDrawableList:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 135
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->getMeasuredWidth()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->computePreviewDrawingParams(II)V

    .line 136
    iget-object v2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFakeIconDrawableList:[Landroid/graphics/drawable/Drawable;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 137
    iget-object v2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mParams:Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    invoke-virtual {p0, v1, v2}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->computePreviewItemDrawingParams(ILnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;)Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mParams:Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    .line 138
    iget-object v2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mParams:Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFakeIconDrawableList:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v1

    iput-object v3, v2, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    .line 139
    iget-object v2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mParams:Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    invoke-virtual {p0, p1, v2}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->drawPreviewItem(Landroid/graphics/Canvas;Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;)V

    .line 136
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 142
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public getCreateTextFadeAnimation(Z)Landroid/animation/Animator;
    .locals 10
    .param p1, "showCreateButton"    # Z

    .prologue
    const-wide/16 v8, 0x190

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 216
    if-eqz p1, :cond_0

    .line 217
    new-instance v2, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFolderName:Lnet/oneplus/h2launcher/BubbleTextView;

    invoke-direct {v2, v3}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 218
    .local v2, "showAnim":Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    new-instance v1, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFakeFolderAnimationName:Lnet/oneplus/h2launcher/BubbleTextView;

    invoke-direct {v1, v3}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 219
    .local v1, "hideAnim":Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFolderName:Lnet/oneplus/h2launcher/BubbleTextView;

    invoke-virtual {v3, v5}, Lnet/oneplus/h2launcher/BubbleTextView;->setAlpha(F)V

    .line 220
    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFakeFolderAnimationName:Lnet/oneplus/h2launcher/BubbleTextView;

    invoke-virtual {v3, v6}, Lnet/oneplus/h2launcher/BubbleTextView;->setAlpha(F)V

    .line 221
    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFolderName:Lnet/oneplus/h2launcher/BubbleTextView;

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/BubbleTextView;->setVisibility(I)V

    .line 222
    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFakeFolderAnimationName:Lnet/oneplus/h2launcher/BubbleTextView;

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/BubbleTextView;->setVisibility(I)V

    .line 231
    :goto_0
    invoke-virtual {v2, v6}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->alpha(F)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    .line 232
    invoke-virtual {v1, v5}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->alpha(F)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    .line 233
    invoke-virtual {v1, v8, v9}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 234
    invoke-virtual {v2, v8, v9}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 235
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 236
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v2, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 237
    return-object v0

    .line 224
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v1    # "hideAnim":Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    .end local v2    # "showAnim":Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    :cond_0
    new-instance v2, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFakeFolderAnimationName:Lnet/oneplus/h2launcher/BubbleTextView;

    invoke-direct {v2, v3}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 225
    .restart local v2    # "showAnim":Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    new-instance v1, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFolderName:Lnet/oneplus/h2launcher/BubbleTextView;

    invoke-direct {v1, v3}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 226
    .restart local v1    # "hideAnim":Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFolderName:Lnet/oneplus/h2launcher/BubbleTextView;

    invoke-virtual {v3, v6}, Lnet/oneplus/h2launcher/BubbleTextView;->setAlpha(F)V

    .line 227
    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFakeFolderAnimationName:Lnet/oneplus/h2launcher/BubbleTextView;

    invoke-virtual {v3, v5}, Lnet/oneplus/h2launcher/BubbleTextView;->setAlpha(F)V

    .line 228
    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFolderName:Lnet/oneplus/h2launcher/BubbleTextView;

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/BubbleTextView;->setVisibility(I)V

    .line 229
    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFakeFolderAnimationName:Lnet/oneplus/h2launcher/BubbleTextView;

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/BubbleTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getFakeIconDrawableLength()I
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFakeIconDrawableList:[Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 195
    const/4 v0, 0x0

    .line 197
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFakeIconDrawableList:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    goto :goto_0
.end method

.method public performAlphaAnimation(F)V
    .locals 4
    .param p1, "targetAlpha"    # F

    .prologue
    .line 201
    iget v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mLastAlpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 202
    iput p1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mLastAlpha:F

    .line 203
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mEnableAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mEnableAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mEnableAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->cancel()V

    .line 206
    :cond_0
    new-instance v0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mEnableAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    .line 207
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mEnableAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->alpha(F)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    .line 208
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mEnableAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 209
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mEnableAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->start()V

    .line 211
    :cond_1
    return-void
.end method

.method public setCreateTextVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 241
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFolderName:Lnet/oneplus/h2launcher/BubbleTextView;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/BubbleTextView;->setVisibility(I)V

    .line 242
    if-nez p1, :cond_0

    .line 243
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFolderName:Lnet/oneplus/h2launcher/BubbleTextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/BubbleTextView;->setAlpha(F)V

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFolderName:Lnet/oneplus/h2launcher/BubbleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/BubbleTextView;->setAlpha(F)V

    goto :goto_0
.end method

.method public setEnableNoAnimation(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->setClickable(Z)V

    .line 159
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mEnableAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mEnableAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mEnableAnimator:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->cancel()V

    .line 162
    :cond_0
    if-eqz p1, :cond_1

    .line 163
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->setAlpha(F)V

    .line 167
    :goto_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->getAlpha()F

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mLastAlpha:F

    .line 168
    return-void

    .line 165
    :cond_1
    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->setAlpha(F)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 171
    invoke-virtual {p0, p1, p1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->setEnabled(ZZ)V

    .line 172
    return-void
.end method

.method public setEnabled(ZZ)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "clickAble"    # Z

    .prologue
    .line 175
    invoke-virtual {p0, p2}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->setClickable(Z)V

    .line 176
    if-eqz p1, :cond_0

    .line 177
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->performAlphaAnimation(F)V

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->performAlphaAnimation(F)V

    goto :goto_0
.end method

.method public setFakeIconDrawable([Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "fakeIconDrawableList"    # [Landroid/graphics/drawable/Drawable;

    .prologue
    .line 184
    iput-object p1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFakeIconDrawableList:[Landroid/graphics/drawable/Drawable;

    .line 185
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFakeIconDrawableList:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFakeIconDrawableList:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 186
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    const v1, 0x7f0200cf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    :goto_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->invalidate()V

    .line 191
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setNewFolderTextVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 250
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFakeFolderAnimationName:Lnet/oneplus/h2launcher/BubbleTextView;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/BubbleTextView;->setVisibility(I)V

    .line 251
    if-nez p1, :cond_0

    .line 252
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFakeFolderAnimationName:Lnet/oneplus/h2launcher/BubbleTextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/BubbleTextView;->setAlpha(F)V

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFakeFolderAnimationName:Lnet/oneplus/h2launcher/BubbleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/BubbleTextView;->setAlpha(F)V

    goto :goto_0
.end method

.method public setSingleLine(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 154
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->mFolderName:Lnet/oneplus/h2launcher/BubbleTextView;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/BubbleTextView;->setSingleLine(Z)V

    .line 155
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 151
    return-void
.end method

.method public setTextColor(Z)V
    .locals 0
    .param p1, "useDarkColor"    # Z

    .prologue
    .line 147
    return-void
.end method

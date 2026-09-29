.class public Lcom/oneplus/lib/widget/OPProgressBar;
.super Landroid/view/View;
.source "OPProgressBar.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;,
        Lcom/oneplus/lib/widget/OPProgressBar$AccessibilityEventSender;,
        Lcom/oneplus/lib/widget/OPProgressBar$SavedState;,
        Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;,
        Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;
    }
.end annotation


# static fields
.field private static final MAX_LEVEL:I = 0x2710

.field private static final TIMEOUT_SEND_ACCESSIBILITY_EVENT:I = 0xc8


# instance fields
.field private mAccessibilityEventSender:Lcom/oneplus/lib/widget/OPProgressBar$AccessibilityEventSender;

.field private mAnimation:Landroid/view/animation/AlphaAnimation;

.field private mAttached:Z

.field private mBehavior:I

.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field private mDuration:I

.field private mHasAnimation:Z

.field private mInDrawing:Z

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMax:I

.field mMaxHeight:I

.field mMaxWidth:I

.field mMinHeight:I

.field mMinWidth:I

.field mMirrorForRtl:Z

.field private mNoInvalidate:Z

.field private mOnlyIndeterminate:Z

.field protected mPaddingBottom:I

.field protected mPaddingLeft:I

.field protected mPaddingRight:I

.field protected mPaddingTop:I

.field private mProgress:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

.field private final mRefreshData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshIsPosted:Z

.field private mRefreshProgressRunnable:Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;

.field mSampleTile:Landroid/graphics/Bitmap;

.field private mSecondaryProgress:I

.field private mShouldStartAnimationDrawable:Z

.field private mTransformation:Landroid/view/animation/Transformation;

.field private mUiThreadId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 246
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/OPProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 247
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 250
    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/OPProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 251
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/OPProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 255
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v9, -0x1

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 258
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 231
    iput-boolean v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMirrorForRtl:Z

    .line 233
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mRefreshData:Ljava/util/ArrayList;

    .line 260
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getPaddingRight()I

    move-result v6

    iput v6, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mPaddingRight:I

    .line 261
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getPaddingTop()I

    move-result v6

    iput v6, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mPaddingTop:I

    .line 262
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getPaddingLeft()I

    move-result v6

    iput v6, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mPaddingLeft:I

    .line 263
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getPaddingBottom()I

    move-result v6

    iput v6, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mPaddingBottom:I

    .line 264
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mUiThreadId:J

    .line 265
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->initProgressBar()V

    .line 267
    sget-object v6, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar:[I

    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 270
    .local v0, "a":Landroid/content/res/TypedArray;
    iput-boolean v5, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mNoInvalidate:Z

    .line 272
    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_progressDrawable:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 273
    .local v2, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 277
    invoke-static {v2}, Lcom/oneplus/lib/widget/OPProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 278
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/OPProgressBar;->setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    .line 285
    :cond_0
    :goto_0
    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_indeterminateDuration:I

    iget v7, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mDuration:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mDuration:I

    .line 287
    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_minWidth:I

    iget v7, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMinWidth:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMinWidth:I

    .line 288
    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_maxWidth:I

    iget v7, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMaxWidth:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMaxWidth:I

    .line 289
    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_minHeight:I

    iget v7, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMinHeight:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMinHeight:I

    .line 290
    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_maxHeight:I

    iget v7, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMaxHeight:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMaxHeight:I

    .line 292
    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_indeterminateBehavior:I

    iget v7, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mBehavior:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mBehavior:I

    .line 294
    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_interpolator:I

    const v7, 0x10a000b

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 297
    .local v3, "resID":I
    if-lez v3, :cond_1

    .line 298
    invoke-virtual {p0, p1, v3}, Lcom/oneplus/lib/widget/OPProgressBar;->setInterpolator(Landroid/content/Context;I)V

    .line 301
    :cond_1
    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_max:I

    iget v7, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMax:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/oneplus/lib/widget/OPProgressBar;->setMax(I)V

    .line 303
    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_progress:I

    iget v7, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgress:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/oneplus/lib/widget/OPProgressBar;->setProgress(I)V

    .line 305
    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_secondaryProgress:I

    iget v7, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mSecondaryProgress:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/oneplus/lib/widget/OPProgressBar;->setSecondaryProgress(I)V

    .line 308
    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_indeterminateDrawable:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 310
    .local v1, "indeterminateDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 311
    invoke-static {v1}, Lcom/oneplus/lib/widget/OPProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 312
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/OPProgressBar;->setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    .line 318
    :cond_2
    :goto_1
    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_indeterminateOnly:I

    iget-boolean v7, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mOnlyIndeterminate:Z

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mOnlyIndeterminate:Z

    .line 321
    iput-boolean v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mNoInvalidate:Z

    .line 323
    iget-boolean v6, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mOnlyIndeterminate:Z

    if-nez v6, :cond_3

    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_indeterminate:I

    iget-boolean v7, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminate:Z

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    move v4, v5

    :cond_4
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/OPProgressBar;->setIndeterminate(Z)V

    .line 326
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_mirrorForRtl:I

    iget-boolean v6, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMirrorForRtl:Z

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMirrorForRtl:Z

    .line 328
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_progressTintMode:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 329
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v4, :cond_5

    .line 330
    new-instance v4, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    invoke-direct {v4, v8}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    .line 332
    :cond_5
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_progressTintMode:I

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-static {v6, v8}, Lcom/oneplus/lib/util/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, v4, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 334
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-boolean v5, v4, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    .line 337
    :cond_6
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_progressTint:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 338
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v4, :cond_7

    .line 339
    new-instance v4, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    invoke-direct {v4, v8}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    .line 341
    :cond_7
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_progressTint:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v4, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    .line 343
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-boolean v5, v4, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    .line 346
    :cond_8
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_progressBackgroundTintMode:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 347
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v4, :cond_9

    .line 348
    new-instance v4, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    invoke-direct {v4, v8}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    .line 350
    :cond_9
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_progressBackgroundTintMode:I

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-static {v6, v8}, Lcom/oneplus/lib/util/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, v4, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 352
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-boolean v5, v4, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    .line 355
    :cond_a
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_progressBackgroundTint:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 356
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v4, :cond_b

    .line 357
    new-instance v4, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    invoke-direct {v4, v8}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    .line 359
    :cond_b
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_progressBackgroundTint:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v4, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    .line 361
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-boolean v5, v4, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    .line 364
    :cond_c
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_secondaryProgressTintMode:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 365
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v4, :cond_d

    .line 366
    new-instance v4, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    invoke-direct {v4, v8}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    .line 368
    :cond_d
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_secondaryProgressTintMode:I

    .line 369
    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 368
    invoke-static {v6, v8}, Lcom/oneplus/lib/util/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, v4, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 370
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-boolean v5, v4, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    .line 373
    :cond_e
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_secondaryProgressTint:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 374
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v4, :cond_f

    .line 375
    new-instance v4, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    invoke-direct {v4, v8}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    .line 377
    :cond_f
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_secondaryProgressTint:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v4, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    .line 379
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-boolean v5, v4, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    .line 382
    :cond_10
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_indeterminateTintMode:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 383
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v4, :cond_11

    .line 384
    new-instance v4, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    invoke-direct {v4, v8}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    .line 386
    :cond_11
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_indeterminateTintMode:I

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-static {v6, v8}, Lcom/oneplus/lib/util/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, v4, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 388
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-boolean v5, v4, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    .line 391
    :cond_12
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_indeterminateTint:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 392
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v4, :cond_13

    .line 393
    new-instance v4, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    invoke-direct {v4, v8}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    .line 395
    :cond_13
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_indeterminateTint:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v4, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    .line 397
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-boolean v5, v4, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    .line 400
    :cond_14
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 402
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->applyProgressTints()V

    .line 403
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->applyIndeterminateTint()V

    .line 406
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_15

    .line 407
    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/OPProgressBar;->setImportantForAccessibility(I)V

    .line 409
    :cond_15
    return-void

    .line 280
    .end local v1    # "indeterminateDrawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "resID":I
    :cond_16
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/OPProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 314
    .restart local v1    # "indeterminateDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "resID":I
    :cond_17
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/OPProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/OPProgressBar;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/OPProgressBar;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mRefreshData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/OPProgressBar;IIZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/OPProgressBar;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 194
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/widget/OPProgressBar;->doRefreshProgress(IIZZ)V

    return-void
.end method

.method static synthetic access$302(Lcom/oneplus/lib/widget/OPProgressBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/OPProgressBar;
    .param p1, "x1"    # Z

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mRefreshIsPosted:Z

    return p1
.end method

.method private applyIndeterminateTint()V
    .locals 3

    .prologue
    .line 722
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-eqz v1, :cond_3

    .line 723
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    .line 724
    .local v0, "tintInfo":Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;
    iget-boolean v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    if-eqz v1, :cond_3

    .line 725
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 727
    iget-boolean v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    if-eqz v1, :cond_1

    .line 728
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 731
    :cond_1
    iget-boolean v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    if-eqz v1, :cond_2

    .line 732
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 737
    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 738
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 742
    .end local v0    # "tintInfo":Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;
    :cond_3
    return-void
.end method

.method private applyPrimaryProgressTint()V
    .locals 3

    .prologue
    .line 838
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    if-eqz v1, :cond_3

    .line 840
    :cond_0
    const v1, 0x102000d

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/oneplus/lib/widget/OPProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 841
    .local v0, "target":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 842
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    if-eqz v1, :cond_1

    .line 843
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-object v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 845
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    if-eqz v1, :cond_2

    .line 846
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-object v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 851
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 852
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 856
    .end local v0    # "target":Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void
.end method

.method private applyProgressBackgroundTint()V
    .locals 3

    .prologue
    .line 863
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    if-eqz v1, :cond_3

    .line 865
    :cond_0
    const/high16 v1, 0x1020000

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/oneplus/lib/widget/OPProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 866
    .local v0, "target":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 867
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    if-eqz v1, :cond_1

    .line 868
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-object v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 870
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    if-eqz v1, :cond_2

    .line 871
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-object v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 876
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 877
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 881
    .end local v0    # "target":Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void
.end method

.method private applyProgressTints()V
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    .line 827
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->applyPrimaryProgressTint()V

    .line 828
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->applyProgressBackgroundTint()V

    .line 829
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->applySecondaryProgressTint()V

    .line 831
    :cond_0
    return-void
.end method

.method private applySecondaryProgressTint()V
    .locals 3

    .prologue
    .line 888
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    if-eqz v1, :cond_3

    .line 890
    :cond_0
    const v1, 0x102000f

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/oneplus/lib/widget/OPProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 891
    .local v0, "target":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 892
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    if-eqz v1, :cond_1

    .line 893
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-object v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 895
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    if-eqz v1, :cond_2

    .line 896
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-object v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 901
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 902
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 906
    .end local v0    # "target":Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void
.end method

.method private declared-synchronized doRefreshProgress(IIZZ)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z
    .param p4, "callBackToApp"    # Z

    .prologue
    .line 1282
    monitor-enter p0

    :try_start_0
    iget v5, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMax:I

    if-lez v5, :cond_2

    int-to-float v5, p2

    iget v6, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMax:I

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 1283
    .local v4, "scale":F
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1284
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4

    .line 1285
    const/4 v3, 0x0

    .line 1287
    .local v3, "progressDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v5, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_0

    .line 1288
    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    move-object v5, v0

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1289
    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->canResolveLayoutDirection()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1290
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getLayoutDirection()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1294
    :cond_0
    const v5, 0x461c4000    # 10000.0f

    mul-float/2addr v5, v4

    float-to-int v2, v5

    .line 1295
    .local v2, "level":I
    if-eqz v3, :cond_3

    .end local v3    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1300
    .end local v2    # "level":I
    :goto_2
    if-eqz p4, :cond_1

    const v5, 0x102000d

    if-ne p1, v5, :cond_1

    .line 1301
    invoke-virtual {p0, v4, p3, p2}, Lcom/oneplus/lib/widget/OPProgressBar;->onProgressRefresh(FZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1303
    :cond_1
    monitor-exit p0

    return-void

    .line 1282
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v4    # "scale":F
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "level":I
    .restart local v3    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "scale":F
    :cond_3
    move-object v3, v1

    .line 1295
    goto :goto_1

    .line 1297
    .end local v2    # "level":I
    .end local v3    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1282
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v4    # "scale":F
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private getTintTarget(IZ)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "layerId"    # I
    .param p2, "shouldFallback"    # Z

    .prologue
    .line 1160
    const/4 v1, 0x0

    .line 1162
    .local v1, "layer":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 1163
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 1164
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 1166
    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 1167
    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1170
    :cond_0
    if-eqz p2, :cond_1

    if-nez v1, :cond_1

    .line 1171
    move-object v1, v0

    .line 1175
    :cond_1
    return-object v1
.end method

.method private initProgressBar()V
    .locals 4

    .prologue
    const/16 v3, 0x30

    const/16 v2, 0x18

    const/4 v1, 0x0

    .line 558
    const/16 v0, 0x64

    iput v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMax:I

    .line 559
    iput v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgress:I

    .line 560
    iput v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mSecondaryProgress:I

    .line 561
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminate:Z

    .line 562
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mOnlyIndeterminate:Z

    .line 563
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mDuration:I

    .line 564
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mBehavior:I

    .line 565
    iput v2, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMinWidth:I

    .line 566
    iput v3, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMaxWidth:I

    .line 567
    iput v2, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMinHeight:I

    .line 568
    iput v3, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMaxHeight:I

    .line 569
    return-void
.end method

.method private static needsTileify(Landroid/graphics/drawable/Drawable;)Z
    .locals 6
    .param p0, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 419
    instance-of v5, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_3

    move-object v2, p0

    .line 420
    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 421
    .local v2, "orig":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    .line 422
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 423
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5}, Lcom/oneplus/lib/widget/OPProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 447
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "orig":Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    :goto_1
    return v3

    .line 422
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "orig":Landroid/graphics/drawable/LayerDrawable;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v3, v4

    .line 427
    goto :goto_1

    .line 443
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "orig":Landroid/graphics/drawable/LayerDrawable;
    :cond_3
    instance-of v5, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v5, :cond_0

    move v3, v4

    .line 447
    goto :goto_1
.end method

.method private declared-synchronized refreshProgress(IIZ)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 1312
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mUiThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 1313
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/oneplus/lib/widget/OPProgressBar;->doRefreshProgress(IIZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1326
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1315
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mRefreshProgressRunnable:Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;

    if-nez v1, :cond_2

    .line 1316
    new-instance v1, Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;-><init>(Lcom/oneplus/lib/widget/OPProgressBar;Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mRefreshProgressRunnable:Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;

    .line 1319
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->obtain(IIZ)Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;

    move-result-object v0

    .line 1320
    .local v0, "rd":Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1321
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mAttached:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mRefreshIsPosted:Z

    if-nez v1, :cond_0

    .line 1322
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mRefreshProgressRunnable:Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/OPProgressBar;->post(Ljava/lang/Runnable;)Z

    .line 1323
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mRefreshIsPosted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1312
    .end local v0    # "rd":Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private scheduleAccessibilityEventSender()V
    .locals 4

    .prologue
    .line 1875
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mAccessibilityEventSender:Lcom/oneplus/lib/widget/OPProgressBar$AccessibilityEventSender;

    if-nez v0, :cond_0

    .line 1876
    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$AccessibilityEventSender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/widget/OPProgressBar$AccessibilityEventSender;-><init>(Lcom/oneplus/lib/widget/OPProgressBar;Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mAccessibilityEventSender:Lcom/oneplus/lib/widget/OPProgressBar$AccessibilityEventSender;

    .line 1880
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mAccessibilityEventSender:Lcom/oneplus/lib/widget/OPProgressBar$AccessibilityEventSender;

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcom/oneplus/lib/widget/OPProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1881
    return-void

    .line 1878
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mAccessibilityEventSender:Lcom/oneplus/lib/widget/OPProgressBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 11
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "clip"    # Z

    .prologue
    const/4 v9, 0x1

    .line 458
    instance-of v8, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v8, :cond_3

    move-object v5, p1

    .line 459
    check-cast v5, Landroid/graphics/drawable/LayerDrawable;

    .line 460
    .local v5, "orig":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    .line 461
    .local v0, "N":I
    new-array v6, v0, [Landroid/graphics/drawable/Drawable;

    .line 463
    .local v6, "outDrawables":[Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 464
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v4

    .line 465
    .local v4, "id":I
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const v8, 0x102000d

    if-eq v4, v8, :cond_0

    const v8, 0x102000f

    if-ne v4, v8, :cond_1

    :cond_0
    move v8, v9

    :goto_1
    invoke-direct {p0, v10, v8}, Lcom/oneplus/lib/widget/OPProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    aput-object v8, v6, v3

    .line 463
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 465
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 469
    .end local v4    # "id":I
    :cond_2
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 470
    .local v2, "clone":Landroid/graphics/drawable/LayerDrawable;
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_5

    .line 471
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v8

    invoke-virtual {v2, v3, v8}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 472
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/LayerDrawable;->getLayerGravity(I)I

    move-result v8

    invoke-virtual {v2, v3, v8}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 473
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/LayerDrawable;->getLayerWidth(I)I

    move-result v8

    invoke-virtual {v2, v3, v8}, Landroid/graphics/drawable/LayerDrawable;->setLayerWidth(II)V

    .line 474
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/LayerDrawable;->getLayerHeight(I)I

    move-result v8

    invoke-virtual {v2, v3, v8}, Landroid/graphics/drawable/LayerDrawable;->setLayerHeight(II)V

    .line 475
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetLeft(I)I

    move-result v8

    invoke-virtual {v2, v3, v8}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetLeft(II)V

    .line 476
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetRight(I)I

    move-result v8

    invoke-virtual {v2, v3, v8}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetRight(II)V

    .line 477
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetTop(I)I

    move-result v8

    invoke-virtual {v2, v3, v8}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetTop(II)V

    .line 478
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetBottom(I)I

    move-result v8

    invoke-virtual {v2, v3, v8}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetBottom(II)V

    .line 479
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetStart(I)I

    move-result v8

    invoke-virtual {v2, v3, v8}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetStart(II)V

    .line 480
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetEnd(I)I

    move-result v8

    invoke-virtual {v2, v3, v8}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetEnd(II)V

    .line 470
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 497
    .end local v0    # "N":I
    .end local v2    # "clone":Landroid/graphics/drawable/LayerDrawable;
    .end local v3    # "i":I
    .end local v5    # "orig":Landroid/graphics/drawable/LayerDrawable;
    .end local v6    # "outDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_3
    instance-of v8, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v8, :cond_6

    move-object v1, p1

    .line 498
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 499
    .local v1, "bitmap":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 500
    .local v7, "tileBitmap":Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    if-nez v8, :cond_4

    .line 501
    iput-object v7, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    .line 504
    :cond_4
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 505
    .local v2, "clone":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v8, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v2, v8, v10}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 507
    if-eqz p2, :cond_5

    .line 508
    new-instance p1, Landroid/graphics/drawable/ClipDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x3

    invoke-direct {p1, v2, v8, v9}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object v2, p1

    .line 514
    .end local v1    # "bitmap":Landroid/graphics/drawable/BitmapDrawable;
    .end local v2    # "clone":Landroid/graphics/drawable/BitmapDrawable;
    .end local v7    # "tileBitmap":Landroid/graphics/Bitmap;
    :cond_5
    :goto_3
    return-object v2

    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_6
    move-object v2, p1

    goto :goto_3
.end method

.method private tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/16 v7, 0x2710

    .line 528
    instance-of v5, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v5, :cond_1

    move-object v1, p1

    .line 529
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 530
    .local v1, "background":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    .line 531
    .local v0, "N":I
    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 532
    .local v4, "newBg":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 534
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 535
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/oneplus/lib/widget/OPProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 536
    .local v2, "frame":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 537
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 534
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 539
    .end local v2    # "frame":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    .line 540
    move-object p1, v4

    .line 542
    .end local v0    # "N":I
    .end local v1    # "background":Landroid/graphics/drawable/AnimationDrawable;
    .end local v3    # "i":I
    .end local v4    # "newBg":Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    return-object p1
.end method

.method private updateDrawableBounds(II)V
    .locals 15
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 1621
    iget v12, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mPaddingRight:I

    iget v13, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mPaddingLeft:I

    add-int/2addr v12, v13

    sub-int p1, p1, v12

    .line 1622
    iget v12, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mPaddingTop:I

    iget v13, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mPaddingBottom:I

    add-int/2addr v12, v13

    sub-int p2, p2, v12

    .line 1624
    move/from16 v8, p1

    .line 1625
    .local v8, "right":I
    move/from16 v1, p2

    .line 1626
    .local v1, "bottom":I
    const/4 v10, 0x0

    .line 1627
    .local v10, "top":I
    const/4 v7, 0x0

    .line 1629
    .local v7, "left":I
    iget-object v12, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_2

    .line 1631
    iget-boolean v12, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mOnlyIndeterminate:Z

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v12, v12, Landroid/graphics/drawable/AnimationDrawable;

    if-nez v12, :cond_0

    .line 1634
    iget-object v12, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 1635
    .local v6, "intrinsicWidth":I
    iget-object v12, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 1636
    .local v5, "intrinsicHeight":I
    int-to-float v12, v6

    int-to-float v13, v5

    div-float v4, v12, v13

    .line 1637
    .local v4, "intrinsicAspect":F
    move/from16 v0, p1

    int-to-float v12, v0

    move/from16 v0, p2

    int-to-float v13, v0

    div-float v2, v12, v13

    .line 1638
    .local v2, "boundAspect":F
    cmpl-float v12, v4, v2

    if-eqz v12, :cond_0

    .line 1639
    cmpl-float v12, v2, v4

    if-lez v12, :cond_4

    .line 1641
    move/from16 v0, p2

    int-to-float v12, v0

    mul-float/2addr v12, v4

    float-to-int v11, v12

    .line 1642
    .local v11, "width":I
    sub-int v12, p1, v11

    div-int/lit8 v7, v12, 0x2

    .line 1643
    add-int v8, v7, v11

    .line 1652
    .end local v2    # "boundAspect":F
    .end local v4    # "intrinsicAspect":F
    .end local v5    # "intrinsicHeight":I
    .end local v6    # "intrinsicWidth":I
    .end local v11    # "width":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->isLayoutRtl()Z

    move-result v12

    if-eqz v12, :cond_1

    iget-boolean v12, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMirrorForRtl:Z

    if-eqz v12, :cond_1

    .line 1653
    move v9, v7

    .line 1654
    .local v9, "tempLeft":I
    sub-int v7, p1, v8

    .line 1655
    sub-int v8, p1, v9

    .line 1657
    .end local v9    # "tempLeft":I
    :cond_1
    iget-object v12, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v7, v10, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1660
    :cond_2
    iget-object v12, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_3

    .line 1661
    iget-object v12, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1663
    :cond_3
    return-void

    .line 1646
    .restart local v2    # "boundAspect":F
    .restart local v4    # "intrinsicAspect":F
    .restart local v5    # "intrinsicHeight":I
    .restart local v6    # "intrinsicWidth":I
    :cond_4
    move/from16 v0, p1

    int-to-float v12, v0

    const/high16 v13, 0x3f800000    # 1.0f

    div-float/2addr v13, v4

    mul-float/2addr v12, v13

    float-to-int v3, v12

    .line 1647
    .local v3, "height":I
    sub-int v12, p2, v3

    div-int/lit8 v10, v12, 0x2

    .line 1648
    add-int v1, v10, v3

    goto :goto_0
.end method

.method private updateDrawableState()V
    .locals 2

    .prologue
    .line 1740
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getDrawableState()[I

    move-result-object v0

    .line 1742
    .local v0, "state":[I
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1743
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1746
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1747
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1749
    :cond_1
    return-void
.end method


# virtual methods
.method drawTrack(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 1676
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1677
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 1680
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1682
    .local v1, "saveCount":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMirrorForRtl:Z

    if-eqz v3, :cond_2

    .line 1683
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getWidth()I

    move-result v3

    iget v6, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mPaddingRight:I

    sub-int/2addr v3, v6

    int-to-float v3, v3

    iget v6, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mPaddingTop:I

    int-to-float v6, v6

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1684
    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1689
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getDrawingTime()J

    move-result-wide v4

    .line 1690
    .local v4, "time":J
    iget-boolean v3, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mHasAnimation:Z

    if-eqz v3, :cond_0

    .line 1691
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v6, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 1692
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v2

    .line 1694
    .local v2, "scale":F
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mInDrawing:Z

    .line 1695
    const v3, 0x461c4000    # 10000.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1697
    iput-boolean v7, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mInDrawing:Z

    .line 1699
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->postInvalidateOnAnimation()V

    .line 1702
    .end local v2    # "scale":F
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1703
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1705
    iget-boolean v3, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mShouldStartAnimationDrawable:Z

    if-eqz v3, :cond_1

    instance-of v3, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v3, :cond_1

    .line 1706
    check-cast v0, Landroid/graphics/drawable/Animatable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 1707
    iput-boolean v7, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mShouldStartAnimationDrawable:Z

    .line 1710
    .end local v1    # "saveCount":I
    .end local v4    # "time":J
    :cond_1
    return-void

    .line 1686
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "saveCount":I
    :cond_2
    iget v3, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mPaddingLeft:I

    int-to-float v3, v3

    iget v6, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mPaddingTop:I

    int-to-float v6, v6

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 1697
    .restart local v2    # "scale":F
    .restart local v4    # "time":J
    :catchall_0
    move-exception v3

    iput-boolean v7, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mInDrawing:Z

    throw v3
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1753
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 1755
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1756
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1759
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1760
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1762
    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 1735
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 1736
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->updateDrawableState()V

    .line 1737
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1864
    const-class v0, Lcom/oneplus/lib/widget/OPProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 518
    const/16 v1, 0x8

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 519
    .local v0, "roundedCorners":[F
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object v1

    .line 518
    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method public getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIndeterminateTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-object v0, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIndeterminateTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-object v0, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public declared-synchronized getMax()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 1437
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 1406
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProgressBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-object v0, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProgressBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-object v0, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getProgressTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-object v0, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-object v0, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getSecondaryProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 1423
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mSecondaryProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSecondaryProgressTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-object v0, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecondaryProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-object v0, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized incrementProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 1472
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1473
    monitor-exit p0

    return-void

    .line 1472
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized incrementSecondaryProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 1483
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mSecondaryProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPProgressBar;->setSecondaryProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1484
    monitor-exit p0

    return-void

    .line 1483
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1599
    iget-boolean v3, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mInDrawing:Z

    if-nez v3, :cond_0

    .line 1600
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1601
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1602
    .local v0, "dirty":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getScrollX()I

    move-result v3

    iget v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mPaddingLeft:I

    add-int v1, v3, v4

    .line 1603
    .local v1, "scrollX":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getScrollY()I

    move-result v3

    iget v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mPaddingTop:I

    add-int v2, v3, v4

    .line 1605
    .local v2, "scrollY":I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/oneplus/lib/widget/OPProgressBar;->invalidate(IIII)V

    .line 1611
    .end local v0    # "dirty":Landroid/graphics/Rect;
    .end local v1    # "scrollX":I
    .end local v2    # "scrollY":I
    :cond_0
    :goto_0
    return-void

    .line 1608
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public declared-synchronized isIndeterminate()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 578
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isLayoutRtl()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1915
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 1212
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1213
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1214
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1215
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1826
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1827
    iget-boolean v3, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminate:Z

    if-eqz v3, :cond_0

    .line 1828
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->startAnimation()V

    .line 1830
    :cond_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mRefreshData:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 1831
    monitor-enter p0

    .line 1832
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1833
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1834
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;

    .line 1835
    .local v2, "rd":Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;
    iget v3, v2, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->id:I

    iget v4, v2, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->progress:I

    iget-boolean v5, v2, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->fromUser:Z

    const/4 v6, 0x1

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/oneplus/lib/widget/OPProgressBar;->doRefreshProgress(IIZZ)V

    .line 1836
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->recycle()V

    .line 1833
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1838
    .end local v2    # "rd":Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;
    :cond_1
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1839
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1841
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_2
    iput-boolean v7, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mAttached:Z

    .line 1842
    return-void

    .line 1839
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1846
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    .line 1847
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->stopAnimation()V

    .line 1849
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mRefreshProgressRunnable:Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;

    if-eqz v0, :cond_1

    .line 1850
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mRefreshProgressRunnable:Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1851
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mRefreshIsPosted:Z

    .line 1853
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mAccessibilityEventSender:Lcom/oneplus/lib/widget/OPProgressBar$AccessibilityEventSender;

    if-eqz v0, :cond_2

    .line 1854
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mAccessibilityEventSender:Lcom/oneplus/lib/widget/OPProgressBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1858
    :cond_2
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1859
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mAttached:Z

    .line 1860
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1667
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1669
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->drawTrack(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1670
    monitor-exit p0

    return-void

    .line 1667
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1714
    monitor-enter p0

    const/4 v2, 0x0

    .line 1715
    .local v2, "dw":I
    const/4 v1, 0x0

    .line 1717
    .local v1, "dh":I
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1718
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1719
    iget v5, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMinWidth:I

    iget v6, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1720
    iget v5, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMinHeight:I

    iget v6, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1723
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->updateDrawableState()V

    .line 1725
    iget v5, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mPaddingLeft:I

    iget v6, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mPaddingRight:I

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 1726
    iget v5, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mPaddingTop:I

    iget v6, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mPaddingBottom:I

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 1728
    const/4 v5, 0x0

    invoke-static {v2, p1, v5}, Lcom/oneplus/lib/widget/OPProgressBar;->resolveSizeAndState(III)I

    move-result v4

    .line 1729
    .local v4, "measuredWidth":I
    const/4 v5, 0x0

    invoke-static {v1, p2, v5}, Lcom/oneplus/lib/widget/OPProgressBar;->resolveSizeAndState(III)I

    move-result v3

    .line 1730
    .local v3, "measuredHeight":I
    invoke-virtual {p0, v4, v3}, Lcom/oneplus/lib/widget/OPProgressBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1731
    monitor-exit p0

    return-void

    .line 1714
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "measuredHeight":I
    .end local v4    # "measuredWidth":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method onProgressRefresh(FZI)V
    .locals 0
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z
    .param p3, "progress"    # I

    .prologue
    .line 1309
    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1222
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1223
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1225
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1226
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1228
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 1229
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1231
    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1817
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/OPProgressBar$SavedState;

    .line 1818
    .local v0, "ss":Lcom/oneplus/lib/widget/OPProgressBar$SavedState;
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1820
    iget v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$SavedState;->progress:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/OPProgressBar;->setProgress(I)V

    .line 1821
    iget v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$SavedState;->secondaryProgress:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/OPProgressBar;->setSecondaryProgress(I)V

    .line 1822
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1806
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1807
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$SavedState;

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/OPProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1809
    .local v0, "ss":Lcom/oneplus/lib/widget/OPProgressBar$SavedState;
    iget v2, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgress:I

    iput v2, v0, Lcom/oneplus/lib/widget/OPProgressBar$SavedState;->progress:I

    .line 1810
    iget v2, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mSecondaryProgress:I

    iput v2, v0, Lcom/oneplus/lib/widget/OPProgressBar$SavedState;->secondaryProgress:I

    .line 1812
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1615
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/OPProgressBar;->updateDrawableBounds(II)V

    .line 1616
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 1585
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 1587
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    .line 1589
    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 1590
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->stopAnimation()V

    .line 1595
    :cond_1
    :goto_0
    return-void

    .line 1592
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->startAnimation()V

    goto :goto_0
.end method

.method public postInvalidate()V
    .locals 1

    .prologue
    .line 1235
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mNoInvalidate:Z

    if-nez v0, :cond_0

    .line 1236
    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    .line 1238
    :cond_0
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z

    .prologue
    .line 592
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mOnlyIndeterminate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminate:Z

    if-eq p1, v0, :cond_1

    .line 593
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminate:Z

    .line 595
    if-eqz p1, :cond_2

    .line 597
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 598
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->startAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 600
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 601
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->stopAnimation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 592
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 627
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3

    .line 628
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 630
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPProgressBar;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 633
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 635
    if-eqz p1, :cond_2

    .line 636
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 637
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 638
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 639
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 641
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->applyIndeterminateTint()V

    .line 644
    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_3

    .line 645
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 646
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->postInvalidate()V

    .line 649
    :cond_3
    return-void
.end method

.method public setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 756
    if-eqz p1, :cond_0

    .line 757
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 760
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 761
    return-void
.end method

.method public setIndeterminateTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 667
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 668
    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-object p1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    .line 671
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    .line 673
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->applyIndeterminateTint()V

    .line 674
    return-void
.end method

.method public setIndeterminateTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 698
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 699
    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-object p1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 702
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    .line 704
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->applyIndeterminateTint()V

    .line 705
    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resID"    # I

    .prologue
    .line 1545
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1546
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 1555
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1556
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .param p1, "max"    # I

    .prologue
    .line 1450
    monitor-enter p0

    if-gez p1, :cond_0

    .line 1451
    const/4 p1, 0x0

    .line 1453
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMax:I

    if-eq p1, v0, :cond_2

    .line 1454
    iput p1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMax:I

    .line 1455
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->postInvalidate()V

    .line 1457
    iget v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgress:I

    if-le v0, p1, :cond_1

    .line 1458
    iput p1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgress:I

    .line 1460
    :cond_1
    const v0, 0x102000d

    iget v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/lib/widget/OPProgressBar;->refreshProgress(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1462
    :cond_2
    monitor-exit p0

    return-void

    .line 1450
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 1340
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/OPProgressBar;->setProgress(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1341
    monitor-exit p0

    return-void

    .line 1340
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setProgress(IZ)Z
    .locals 3
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1344
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 1358
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 1349
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iget v2, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMax:I

    invoke-static {p1, v1, v2}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result p1

    .line 1351
    iget v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgress:I

    if-eq p1, v1, :cond_0

    .line 1356
    iput p1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgress:I

    .line 1357
    const v0, 0x102000d

    iget v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgress:I

    invoke-direct {p0, v0, v1, p2}, Lcom/oneplus/lib/widget/OPProgressBar;->refreshProgress(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1358
    const/4 v0, 0x1

    goto :goto_0

    .line 1344
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1011
    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    .line 1013
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-object p1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    .line 1014
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    .line 1016
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1017
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->applyProgressBackgroundTint()V

    .line 1019
    :cond_1
    return-void
.end method

.method public setProgressBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1046
    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    .line 1048
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-object p1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1049
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    .line 1051
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1052
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->applyProgressBackgroundTint()V

    .line 1054
    :cond_1
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 784
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v1, p1, :cond_5

    .line 785
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 786
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 787
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/OPProgressBar;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 790
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 792
    if-eqz p1, :cond_3

    .line 793
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 794
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getLayoutDirection()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 795
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 796
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 800
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 801
    .local v0, "drawableHeight":I
    iget v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMaxHeight:I

    if-ge v1, v0, :cond_2

    .line 802
    iput v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMaxHeight:I

    .line 803
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->requestLayout()V

    .line 806
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->applyProgressTints()V

    .line 809
    .end local v0    # "drawableHeight":I
    :cond_3
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminate:Z

    if-nez v1, :cond_4

    .line 810
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 811
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->postInvalidate()V

    .line 814
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/oneplus/lib/widget/OPProgressBar;->updateDrawableBounds(II)V

    .line 815
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->updateDrawableState()V

    .line 817
    const v1, 0x102000d

    iget v2, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgress:I

    invoke-direct {p0, v1, v2, v3, v3}, Lcom/oneplus/lib/widget/OPProgressBar;->doRefreshProgress(IIZZ)V

    .line 818
    const v1, 0x102000f

    iget v2, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mSecondaryProgress:I

    invoke-direct {p0, v1, v2, v3, v3}, Lcom/oneplus/lib/widget/OPProgressBar;->doRefreshProgress(IIZZ)V

    .line 820
    :cond_5
    return-void
.end method

.method public setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1190
    if-eqz p1, :cond_0

    .line 1191
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/OPProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1194
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1195
    return-void
.end method

.method public setProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 929
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 930
    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    .line 932
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-object p1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    .line 933
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    .line 935
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 936
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->applyPrimaryProgressTint()V

    .line 938
    :cond_1
    return-void
.end method

.method public setProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 964
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 965
    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    .line 967
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-object p1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 968
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    .line 970
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 971
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->applyPrimaryProgressTint()V

    .line 973
    :cond_1
    return-void
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .locals 3
    .param p1, "secondaryProgress"    # I

    .prologue
    .line 1374
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 1390
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1378
    :cond_1
    if-gez p1, :cond_2

    .line 1379
    const/4 p1, 0x0

    .line 1382
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMax:I

    if-le p1, v0, :cond_3

    .line 1383
    iget p1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMax:I

    .line 1386
    :cond_3
    iget v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mSecondaryProgress:I

    if-eq p1, v0, :cond_0

    .line 1387
    iput p1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mSecondaryProgress:I

    .line 1388
    const v0, 0x102000f

    iget v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mSecondaryProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/lib/widget/OPProgressBar;->refreshProgress(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1374
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1089
    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    .line 1091
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-object p1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    .line 1092
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    .line 1094
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1095
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->applySecondaryProgressTint()V

    .line 1097
    :cond_1
    return-void
.end method

.method public setSecondaryProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1126
    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    .line 1128
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-object p1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1129
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    .line 1131
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1132
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->applySecondaryProgressTint()V

    .line 1134
    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 1569
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 1570
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1572
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    .line 1574
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1575
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->stopAnimation()V

    .line 1581
    :cond_1
    :goto_0
    return-void

    .line 1577
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->startAnimation()V

    goto :goto_0
.end method

.method startAnimation()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1490
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1523
    :goto_0
    return-void

    .line 1494
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_1

    .line 1495
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mShouldStartAnimationDrawable:Z

    .line 1496
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mHasAnimation:Z

    .line 1522
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->postInvalidate()V

    goto :goto_0

    .line 1498
    :cond_1
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mHasAnimation:Z

    .line 1500
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    .line 1501
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1504
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    if-nez v0, :cond_3

    .line 1505
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    .line 1510
    :goto_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_4

    .line 1511
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    .line 1516
    :goto_3
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mBehavior:I

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 1517
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 1518
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1519
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1520
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    goto :goto_1

    .line 1507
    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    goto :goto_2

    .line 1513
    :cond_4
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->reset()V

    goto :goto_3
.end method

.method stopAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1529
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mHasAnimation:Z

    .line 1530
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 1531
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 1532
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mShouldStartAnimationDrawable:Z

    .line 1534
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->postInvalidate()V

    .line 1535
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    .line 1207
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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

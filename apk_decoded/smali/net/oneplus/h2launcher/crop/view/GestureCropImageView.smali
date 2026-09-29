.class public Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;
.super Lnet/oneplus/h2launcher/crop/view/CropImageView;
.source "GestureCropImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/crop/view/GestureCropImageView$RotateListener;,
        Lnet/oneplus/h2launcher/crop/view/GestureCropImageView$GestureListener;,
        Lnet/oneplus/h2launcher/crop/view/GestureCropImageView$ScaleListener;
    }
.end annotation


# static fields
.field private static final DOUBLE_TAP_ZOOM_DURATION:I = 0xc8


# instance fields
.field private mDoubleTapScaleSteps:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsRotateEnabled:Z

.field private mIsScaleEnabled:Z

.field private mMidPntX:F

.field private mMidPntY:F

.field private mRotateDetector:Lnet/oneplus/h2launcher/crop/util/RotationGestureDetector;

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 28
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/crop/view/CropImageView;-><init>(Landroid/content/Context;)V

    .line 24
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->mIsRotateEnabled:Z

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->mIsScaleEnabled:Z

    .line 25
    const/4 v0, 0x5

    iput v0, p0, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->mDoubleTapScaleSteps:I

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x1

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/crop/view/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->mIsRotateEnabled:Z

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->mIsScaleEnabled:Z

    .line 25
    const/4 v0, 0x5

    iput v0, p0, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->mDoubleTapScaleSteps:I

    .line 37
    return-void
.end method

.method static synthetic access$300(Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;)F
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    .prologue
    .line 14
    iget v0, p0, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->mMidPntX:F

    return v0
.end method

.method static synthetic access$400(Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;)F
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    .prologue
    .line 14
    iget v0, p0, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->mMidPntY:F

    return v0
.end method

.method private setupGestureListeners()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 112
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView$GestureListener;

    invoke-direct {v2, p0, v4}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView$GestureListener;-><init>(Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;Lnet/oneplus/h2launcher/crop/view/GestureCropImageView$1;)V

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 113
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView$ScaleListener;

    invoke-direct {v2, p0, v4}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView$ScaleListener;-><init>(Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;Lnet/oneplus/h2launcher/crop/view/GestureCropImageView$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 114
    new-instance v0, Lnet/oneplus/h2launcher/crop/util/RotationGestureDetector;

    new-instance v1, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView$RotateListener;

    invoke-direct {v1, p0, v4}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView$RotateListener;-><init>(Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;Lnet/oneplus/h2launcher/crop/view/GestureCropImageView$1;)V

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/crop/util/RotationGestureDetector;-><init>(Lnet/oneplus/h2launcher/crop/util/RotationGestureDetector$OnRotationGestureListener;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->mRotateDetector:Lnet/oneplus/h2launcher/crop/util/RotationGestureDetector;

    .line 115
    return-void
.end method


# virtual methods
.method public getDoubleTapScaleSteps()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->mDoubleTapScaleSteps:I

    return v0
.end method

.method protected getDoubleTapTargetScale()F
    .locals 6

    .prologue
    .line 108
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->getCurrentScale()F

    move-result v0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->getMaxScale()F

    move-result v1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->getMinScale()F

    move-result v2

    div-float/2addr v1, v2

    float-to-double v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    iget v4, p0, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->mDoubleTapScaleSteps:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method protected init()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Lnet/oneplus/h2launcher/crop/view/CropImageView;->init()V

    .line 99
    invoke-direct {p0}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->setupGestureListeners()V

    .line 100
    return-void
.end method

.method public isRotateEnabled()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->mIsRotateEnabled:Z

    return v0
.end method

.method public isScaleEnabled()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->mIsScaleEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x1

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->cancelAllAnimations()V

    .line 75
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 76
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v0, v1

    div-float/2addr v0, v3

    iput v0, p0, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->mMidPntX:F

    .line 77
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v0, v1

    div-float/2addr v0, v3

    iput v0, p0, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->mMidPntY:F

    .line 80
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 82
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->mIsScaleEnabled:Z

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 86
    :cond_2
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->mIsRotateEnabled:Z

    if-eqz v0, :cond_3

    .line 87
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->mRotateDetector:Lnet/oneplus/h2launcher/crop/util/RotationGestureDetector;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/crop/util/RotationGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 90
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v2, :cond_4

    .line 91
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->setImageToWrapCropBounds()V

    .line 93
    :cond_4
    return v2
.end method

.method public setDoubleTapScaleSteps(I)V
    .locals 0
    .param p1, "doubleTapScaleSteps"    # I

    .prologue
    .line 56
    iput p1, p0, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->mDoubleTapScaleSteps:I

    .line 57
    return-void
.end method

.method public setRotateEnabled(Z)V
    .locals 0
    .param p1, "rotateEnabled"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->mIsRotateEnabled:Z

    .line 49
    return-void
.end method

.method public setScaleEnabled(Z)V
    .locals 0
    .param p1, "scaleEnabled"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->mIsScaleEnabled:Z

    .line 41
    return-void
.end method

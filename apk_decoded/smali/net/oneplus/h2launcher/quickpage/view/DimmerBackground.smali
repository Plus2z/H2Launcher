.class public Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;
.super Landroid/view/View;
.source "DimmerBackground.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground$Callback;
    }
.end annotation


# static fields
.field public static final TYPE_INPUT:I = 0x2

.field public static final TYPE_LONG_PRESS:I = 0x1

.field public static final TYPE_MENU:I


# instance fields
.field private mAnimDuration:I

.field private mBackground:Landroid/graphics/drawable/TransitionDrawable;

.field private mCallback:Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground$Callback;

.field private mInnerPath:Landroid/graphics/RectF;

.field private mShouldReverseAnimation:Z

.field private mShowing:Z

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->mType:I

    .line 44
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->init()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->mType:I

    .line 39
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->init()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->mType:I

    .line 34
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->init()V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;

    .prologue
    .line 13
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->mType:I

    return v0
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;

    .prologue
    .line 13
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->mInnerPath:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;)Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground$Callback;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;

    .prologue
    .line 13
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->mCallback:Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground$Callback;

    return-object v0
.end method

.method static synthetic access$300(Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;

    .prologue
    .line 13
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->mShowing:Z

    return v0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->setLayerType(ILandroid/graphics/Paint;)V

    .line 50
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->mInnerPath:Landroid/graphics/RectF;

    .line 52
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground$1;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground$1;-><init>(Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;)V

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 73
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->mShowing:Z

    .line 137
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground$2;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground$2;-><init>(Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 145
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->mShowing:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 78
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->mBackground:Landroid/graphics/drawable/TransitionDrawable;

    .line 79
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->mBackground:Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 81
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->mAnimDuration:I

    .line 83
    return-void
.end method

.method public setCallback(Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground$Callback;)V
    .locals 0
    .param p1, "callback"    # Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground$Callback;

    .prologue
    .line 86
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->mCallback:Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground$Callback;

    .line 87
    return-void
.end method

.method public setInnerPath(IIII)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->mInnerPath:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 116
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->invalidate()V

    .line 117
    return-void
.end method

.method public setType(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 90
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->mType:I

    if-ne v0, p1, :cond_0

    .line 112
    :goto_0
    return-void

    .line 91
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 111
    :goto_1
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->mType:I

    goto :goto_0

    .line 93
    :pswitch_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->mBackground:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->mShouldReverseAnimation:Z

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->mBackground:Landroid/graphics/drawable/TransitionDrawable;

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->mAnimDuration:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    .line 96
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->mShouldReverseAnimation:Z

    .line 99
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->setElevation(F)V

    goto :goto_1

    .line 102
    :pswitch_1
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->setBackgroundColor(I)V

    .line 103
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->mShouldReverseAnimation:Z

    .line 105
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->setElevation(F)V

    goto :goto_1

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public show()V
    .locals 2

    .prologue
    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->mShowing:Z

    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->setVisibility(I)V

    .line 126
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 127
    return-void
.end method

.method public showNoAnimation()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->mShowing:Z

    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->setVisibility(I)V

    .line 132
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->setAlpha(F)V

    .line 133
    return-void
.end method

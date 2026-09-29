.class public Lnet/oneplus/h2launcher/FocusIndicatorView;
.super Landroid/view/View;
.source "FocusIndicatorView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/FocusIndicatorView$ViewAnimState;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:J = 0x96L

.field static final DEFAULT_LAYOUT_SIZE:I = 0x64

.field private static final MIN_VISIBLE_ALPHA:F = 0.2f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentAnimation:Landroid/animation/ObjectAnimator;

.field private final mIndicatorPos:[I

.field private mInitiated:Z

.field private mLastFocusedView:Landroid/view/View;

.field private mPendingCall:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetState:Lnet/oneplus/h2launcher/FocusIndicatorView$ViewAnimState;

.field private final mTargetViewPos:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lnet/oneplus/h2launcher/FocusIndicatorView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/FocusIndicatorView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/FocusIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x2

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-array v0, v1, [I

    iput-object v0, p0, Lnet/oneplus/h2launcher/FocusIndicatorView;->mIndicatorPos:[I

    .line 39
    new-array v0, v1, [I

    iput-object v0, p0, Lnet/oneplus/h2launcher/FocusIndicatorView;->mTargetViewPos:[I

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FocusIndicatorView;->setAlpha(F)V

    .line 56
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FocusIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e012d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FocusIndicatorView;->setBackgroundColor(I)V

    .line 57
    return-void
.end method

.method private applyState(Lnet/oneplus/h2launcher/FocusIndicatorView$ViewAnimState;)V
    .locals 1
    .param p1, "state"    # Lnet/oneplus/h2launcher/FocusIndicatorView$ViewAnimState;

    .prologue
    .line 140
    iget v0, p1, Lnet/oneplus/h2launcher/FocusIndicatorView$ViewAnimState;->x:F

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FocusIndicatorView;->setTranslationX(F)V

    .line 141
    iget v0, p1, Lnet/oneplus/h2launcher/FocusIndicatorView$ViewAnimState;->y:F

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FocusIndicatorView;->setTranslationY(F)V

    .line 142
    iget v0, p1, Lnet/oneplus/h2launcher/FocusIndicatorView$ViewAnimState;->scaleX:F

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FocusIndicatorView;->setScaleX(F)V

    .line 143
    iget v0, p1, Lnet/oneplus/h2launcher/FocusIndicatorView$ViewAnimState;->scaleY:F

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FocusIndicatorView;->setScaleY(F)V

    .line 144
    return-void
.end method

.method private static computeLocationRelativeToParent(Landroid/view/View;Landroid/view/View;[I)V
    .locals 7
    .param p0, "v"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "pos"    # [I

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 159
    aput v3, p2, v6

    aput v3, p2, v3

    .line 160
    invoke-static {p0, p1, p2}, Lnet/oneplus/h2launcher/FocusIndicatorView;->computeLocationRelativeToParentHelper(Landroid/view/View;Landroid/view/View;[I)V

    .line 164
    aget v0, p2, v3

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v1

    sub-float v1, v4, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v5

    add-float/2addr v0, v1

    float-to-int v0, v0

    aput v0, p2, v3

    .line 165
    aget v0, p2, v6

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v1

    sub-float v1, v4, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v5

    add-float/2addr v0, v1

    float-to-int v0, v0

    aput v0, p2, v6

    .line 166
    return-void
.end method

.method private static computeLocationRelativeToParentHelper(Landroid/view/View;Landroid/view/View;[I)V
    .locals 6
    .param p0, "child"    # Landroid/view/View;
    .param p1, "commonParent"    # Landroid/view/View;
    .param p2, "shift"    # [I

    .prologue
    const/4 v5, 0x0

    .line 170
    aget v2, p2, v5

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, p2, v5

    .line 171
    const/4 v2, 0x1

    aget v3, p2, v2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v3, v4

    aput v3, p2, v2

    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 174
    .local v1, "parent":Landroid/view/View;
    if-nez v1, :cond_1

    .line 175
    sget-object v2, Lnet/oneplus/h2launcher/FocusIndicatorView;->TAG:Ljava/lang/String;

    const-string v3, "the child has no parent"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    instance-of v2, v1, Lnet/oneplus/h2launcher/PagedView;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 180
    check-cast v0, Lnet/oneplus/h2launcher/PagedView;

    .line 181
    .local v0, "page":Lnet/oneplus/h2launcher/PagedView;
    aget v2, p2, v5

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v0, v3}, Lnet/oneplus/h2launcher/PagedView;->getScrollForPage(I)I

    move-result v3

    sub-int/2addr v2, v3

    aput v2, p2, v5

    .line 184
    .end local v0    # "page":Lnet/oneplus/h2launcher/PagedView;
    :cond_2
    if-eq v1, p1, :cond_0

    .line 185
    invoke-static {v1, p1, p2}, Lnet/oneplus/h2launcher/FocusIndicatorView;->computeLocationRelativeToParentHelper(Landroid/view/View;Landroid/view/View;[I)V

    goto :goto_0
.end method

.method private endCurrentAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    iget-object v0, p0, Lnet/oneplus/h2launcher/FocusIndicatorView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lnet/oneplus/h2launcher/FocusIndicatorView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 131
    iput-object v1, p0, Lnet/oneplus/h2launcher/FocusIndicatorView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    .line 133
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/FocusIndicatorView;->mTargetState:Lnet/oneplus/h2launcher/FocusIndicatorView$ViewAnimState;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lnet/oneplus/h2launcher/FocusIndicatorView;->mTargetState:Lnet/oneplus/h2launcher/FocusIndicatorView$ViewAnimState;

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/FocusIndicatorView;->applyState(Lnet/oneplus/h2launcher/FocusIndicatorView$ViewAnimState;)V

    .line 135
    iput-object v1, p0, Lnet/oneplus/h2launcher/FocusIndicatorView;->mTargetState:Lnet/oneplus/h2launcher/FocusIndicatorView$ViewAnimState;

    .line 137
    :cond_1
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 148
    iget-object v0, p0, Lnet/oneplus/h2launcher/FocusIndicatorView;->mPendingCall:Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lnet/oneplus/h2launcher/FocusIndicatorView;->mPendingCall:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lnet/oneplus/h2launcher/FocusIndicatorView;->mPendingCall:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/FocusIndicatorView;->onFocusChange(Landroid/view/View;Z)V

    .line 151
    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v5, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 73
    iput-object v5, p0, Lnet/oneplus/h2launcher/FocusIndicatorView;->mPendingCall:Landroid/util/Pair;

    .line 74
    iget-boolean v3, p0, Lnet/oneplus/h2launcher/FocusIndicatorView;->mInitiated:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FocusIndicatorView;->getWidth()I

    move-result v3

    if-nez v3, :cond_1

    .line 77
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    iput-object v3, p0, Lnet/oneplus/h2launcher/FocusIndicatorView;->mPendingCall:Landroid/util/Pair;

    .line 78
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FocusIndicatorView;->invalidate()V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-boolean v3, p0, Lnet/oneplus/h2launcher/FocusIndicatorView;->mInitiated:Z

    if-nez v3, :cond_2

    .line 84
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FocusIndicatorView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v4, p0, Lnet/oneplus/h2launcher/FocusIndicatorView;->mIndicatorPos:[I

    invoke-static {p0, v3, v4}, Lnet/oneplus/h2launcher/FocusIndicatorView;->computeLocationRelativeToParent(Landroid/view/View;Landroid/view/View;[I)V

    .line 85
    iput-boolean v8, p0, Lnet/oneplus/h2launcher/FocusIndicatorView;->mInitiated:Z

    .line 88
    :cond_2
    if-eqz p2, :cond_5

    .line 89
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FocusIndicatorView;->getWidth()I

    move-result v1

    .line 90
    .local v1, "indicatorWidth":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FocusIndicatorView;->getHeight()I

    move-result v0

    .line 92
    .local v0, "indicatorHeight":I
    invoke-direct {p0}, Lnet/oneplus/h2launcher/FocusIndicatorView;->endCurrentAnimation()V

    .line 93
    new-instance v2, Lnet/oneplus/h2launcher/FocusIndicatorView$ViewAnimState;

    invoke-direct {v2}, Lnet/oneplus/h2launcher/FocusIndicatorView$ViewAnimState;-><init>()V

    .line 94
    .local v2, "nextState":Lnet/oneplus/h2launcher/FocusIndicatorView$ViewAnimState;
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    int-to-float v4, v1

    div-float/2addr v3, v4

    iput v3, v2, Lnet/oneplus/h2launcher/FocusIndicatorView$ViewAnimState;->scaleX:F

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    int-to-float v4, v0

    div-float/2addr v3, v4

    iput v3, v2, Lnet/oneplus/h2launcher/FocusIndicatorView$ViewAnimState;->scaleY:F

    .line 97
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FocusIndicatorView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v4, p0, Lnet/oneplus/h2launcher/FocusIndicatorView;->mTargetViewPos:[I

    invoke-static {p1, v3, v4}, Lnet/oneplus/h2launcher/FocusIndicatorView;->computeLocationRelativeToParent(Landroid/view/View;Landroid/view/View;[I)V

    .line 98
    iget-object v3, p0, Lnet/oneplus/h2launcher/FocusIndicatorView;->mTargetViewPos:[I

    aget v3, v3, v9

    iget-object v4, p0, Lnet/oneplus/h2launcher/FocusIndicatorView;->mIndicatorPos:[I

    aget v4, v4, v9

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v2, Lnet/oneplus/h2launcher/FocusIndicatorView$ViewAnimState;->scaleX:F

    sub-float v4, v6, v4

    int-to-float v5, v1

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    iput v3, v2, Lnet/oneplus/h2launcher/FocusIndicatorView$ViewAnimState;->x:F

    .line 99
    iget-object v3, p0, Lnet/oneplus/h2launcher/FocusIndicatorView;->mTargetViewPos:[I

    aget v3, v3, v8

    iget-object v4, p0, Lnet/oneplus/h2launcher/FocusIndicatorView;->mIndicatorPos:[I

    aget v4, v4, v8

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v2, Lnet/oneplus/h2launcher/FocusIndicatorView$ViewAnimState;->scaleY:F

    sub-float v4, v6, v4

    int-to-float v5, v0

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    iput v3, v2, Lnet/oneplus/h2launcher/FocusIndicatorView$ViewAnimState;->y:F

    .line 101
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FocusIndicatorView;->getAlpha()F

    move-result v3

    const v4, 0x3e4ccccd    # 0.2f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 102
    iput-object v2, p0, Lnet/oneplus/h2launcher/FocusIndicatorView;->mTargetState:Lnet/oneplus/h2launcher/FocusIndicatorView$ViewAnimState;

    .line 103
    const/4 v3, 0x5

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v8, [F

    aput v6, v5, v9

    .line 104
    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v3, v9

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v5, v8, [F

    iget-object v6, p0, Lnet/oneplus/h2launcher/FocusIndicatorView;->mTargetState:Lnet/oneplus/h2launcher/FocusIndicatorView$ViewAnimState;

    iget v6, v6, Lnet/oneplus/h2launcher/FocusIndicatorView$ViewAnimState;->x:F

    aput v6, v5, v9

    .line 105
    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v3, v8

    const/4 v4, 0x2

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v8, [F

    iget-object v7, p0, Lnet/oneplus/h2launcher/FocusIndicatorView;->mTargetState:Lnet/oneplus/h2launcher/FocusIndicatorView$ViewAnimState;

    iget v7, v7, Lnet/oneplus/h2launcher/FocusIndicatorView$ViewAnimState;->y:F

    aput v7, v6, v9

    .line 106
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v8, [F

    iget-object v7, p0, Lnet/oneplus/h2launcher/FocusIndicatorView;->mTargetState:Lnet/oneplus/h2launcher/FocusIndicatorView$ViewAnimState;

    iget v7, v7, Lnet/oneplus/h2launcher/FocusIndicatorView$ViewAnimState;->scaleX:F

    aput v7, v6, v9

    .line 107
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v8, [F

    iget-object v7, p0, Lnet/oneplus/h2launcher/FocusIndicatorView;->mTargetState:Lnet/oneplus/h2launcher/FocusIndicatorView$ViewAnimState;

    iget v7, v7, Lnet/oneplus/h2launcher/FocusIndicatorView$ViewAnimState;->scaleY:F

    aput v7, v6, v9

    .line 108
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v3, v4

    .line 103
    invoke-static {p0, v3}, Lnet/oneplus/h2launcher/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lnet/oneplus/h2launcher/FocusIndicatorView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    .line 114
    :goto_1
    iput-object p1, p0, Lnet/oneplus/h2launcher/FocusIndicatorView;->mLastFocusedView:Landroid/view/View;

    .line 123
    .end local v0    # "indicatorHeight":I
    .end local v1    # "indicatorWidth":I
    .end local v2    # "nextState":Lnet/oneplus/h2launcher/FocusIndicatorView$ViewAnimState;
    :cond_3
    :goto_2
    iget-object v3, p0, Lnet/oneplus/h2launcher/FocusIndicatorView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_0

    .line 124
    iget-object v3, p0, Lnet/oneplus/h2launcher/FocusIndicatorView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0

    .line 110
    .restart local v0    # "indicatorHeight":I
    .restart local v1    # "indicatorWidth":I
    .restart local v2    # "nextState":Lnet/oneplus/h2launcher/FocusIndicatorView$ViewAnimState;
    :cond_4
    invoke-direct {p0, v2}, Lnet/oneplus/h2launcher/FocusIndicatorView;->applyState(Lnet/oneplus/h2launcher/FocusIndicatorView$ViewAnimState;)V

    .line 111
    new-array v3, v8, [Landroid/animation/PropertyValuesHolder;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v8, [F

    aput v6, v5, v9

    .line 112
    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v3, v9

    .line 111
    invoke-static {p0, v3}, Lnet/oneplus/h2launcher/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lnet/oneplus/h2launcher/FocusIndicatorView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    goto :goto_1

    .line 116
    .end local v0    # "indicatorHeight":I
    .end local v1    # "indicatorWidth":I
    .end local v2    # "nextState":Lnet/oneplus/h2launcher/FocusIndicatorView$ViewAnimState;
    :cond_5
    iget-object v3, p0, Lnet/oneplus/h2launcher/FocusIndicatorView;->mLastFocusedView:Landroid/view/View;

    if-ne v3, p1, :cond_3

    .line 117
    iput-object v5, p0, Lnet/oneplus/h2launcher/FocusIndicatorView;->mLastFocusedView:Landroid/view/View;

    .line 118
    invoke-direct {p0}, Lnet/oneplus/h2launcher/FocusIndicatorView;->endCurrentAnimation()V

    .line 119
    new-array v3, v8, [Landroid/animation/PropertyValuesHolder;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v8, [F

    const/4 v6, 0x0

    aput v6, v5, v9

    .line 120
    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v3, v9

    .line 119
    invoke-static {p0, v3}, Lnet/oneplus/h2launcher/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lnet/oneplus/h2launcher/FocusIndicatorView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 65
    iget-object v0, p0, Lnet/oneplus/h2launcher/FocusIndicatorView;->mLastFocusedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lnet/oneplus/h2launcher/FocusIndicatorView;->mLastFocusedView:Landroid/view/View;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/FocusIndicatorView;->mPendingCall:Landroid/util/Pair;

    .line 67
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FocusIndicatorView;->invalidate()V

    .line 69
    :cond_0
    return-void
.end method

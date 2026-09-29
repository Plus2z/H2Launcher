.class public Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FirstFrameAnimatorHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final IDEAL_FRAME_DURATION:I = 0x10

.field private static final MAX_DELAY:I = 0x3e8

.field private static final TAG:Ljava/lang/String;

.field private static sGlobalDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

.field static sGlobalFrameCounter:J

.field private static sVisible:Z


# instance fields
.field private mAdjustedSecondFrameTime:Z

.field private mHandlingOnAnimationUpdate:Z

.field private mStartFrame:J

.field private mStartTime:J

.field private mTarget:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/ValueAnimator;
    .param p2, "target"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 42
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;->mStartTime:J

    .line 51
    iput-object p2, p0, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    .line 52
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 2
    .param p1, "vpa"    # Landroid/view/ViewPropertyAnimator;
    .param p2, "target"    # Landroid/view/View;

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 42
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;->mStartTime:J

    .line 56
    iput-object p2, p0, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    .line 57
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 58
    return-void
.end method

.method public static initializeDrawListener(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 72
    sget-object v0, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;->sGlobalDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    sget-object v1, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;->sGlobalDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 75
    :cond_0
    new-instance v0, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper$1;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper$1;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;->sGlobalDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    sget-object v1, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;->sGlobalDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 87
    const/4 v0, 0x1

    sput-boolean v0, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;->sVisible:Z

    .line 88
    return-void
.end method

.method public static setIsVisible(Z)V
    .locals 0
    .param p0, "visible"    # Z

    .prologue
    .line 68
    sput-boolean p0, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;->sVisible:Z

    .line 69
    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 62
    move-object v0, p1

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 63
    .local v0, "va":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 64
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 65
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 12
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 92
    .local v2, "currentTime":J
    iget-wide v8, p0, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;->mStartTime:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    .line 93
    sget-wide v8, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J

    iput-wide v8, p0, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;->mStartFrame:J

    .line 94
    iput-wide v2, p0, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;->mStartTime:J

    .line 97
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    .line 98
    .local v0, "currentPlayTime":J
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-nez v7, :cond_3

    const/4 v6, 0x1

    .line 100
    .local v6, "isFinalFrame":Z
    :goto_0
    iget-boolean v7, p0, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;->mHandlingOnAnimationUpdate:Z

    if-nez v7, :cond_2

    sget-boolean v7, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;->sVisible:Z

    if-eqz v7, :cond_2

    .line 105
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v8

    cmp-long v7, v0, v8

    if-gez v7, :cond_2

    if-nez v6, :cond_2

    .line 106
    const/4 v7, 0x1

    iput-boolean v7, p0, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;->mHandlingOnAnimationUpdate:Z

    .line 107
    sget-wide v8, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J

    iget-wide v10, p0, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;->mStartFrame:J

    sub-long v4, v8, v10

    .line 111
    .local v4, "frameNum":J
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-nez v7, :cond_4

    iget-wide v8, p0, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;->mStartTime:J

    const-wide/16 v10, 0x3e8

    add-long/2addr v8, v10

    cmp-long v7, v2, v8

    if-gez v7, :cond_4

    const-wide/16 v8, 0x0

    cmp-long v7, v0, v8

    if-lez v7, :cond_4

    .line 114
    iget-object v7, p0, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    .line 115
    const-wide/16 v8, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 135
    :cond_1
    :goto_1
    const/4 v7, 0x0

    iput-boolean v7, p0, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;->mHandlingOnAnimationUpdate:Z

    .line 139
    .end local v4    # "frameNum":J
    :cond_2
    return-void

    .line 98
    .end local v6    # "isFinalFrame":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 119
    .restart local v4    # "frameNum":J
    .restart local v6    # "isFinalFrame":Z
    :cond_4
    const-wide/16 v8, 0x1

    cmp-long v7, v4, v8

    if-nez v7, :cond_5

    iget-wide v8, p0, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;->mStartTime:J

    const-wide/16 v10, 0x3e8

    add-long/2addr v8, v10

    cmp-long v7, v2, v8

    if-gez v7, :cond_5

    iget-boolean v7, p0, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;->mAdjustedSecondFrameTime:Z

    if-nez v7, :cond_5

    iget-wide v8, p0, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;->mStartTime:J

    const-wide/16 v10, 0x10

    add-long/2addr v8, v10

    cmp-long v7, v2, v8

    if-lez v7, :cond_5

    const-wide/16 v8, 0x10

    cmp-long v7, v0, v8

    if-lez v7, :cond_5

    .line 123
    const-wide/16 v8, 0x10

    invoke-virtual {p1, v8, v9}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 124
    const/4 v7, 0x1

    iput-boolean v7, p0, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;->mAdjustedSecondFrameTime:Z

    goto :goto_1

    .line 126
    :cond_5
    const-wide/16 v8, 0x1

    cmp-long v7, v4, v8

    if-lez v7, :cond_1

    .line 127
    iget-object v7, p0, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    new-instance v8, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper$2;

    invoke-direct {v8, p0, p1}, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper$2;-><init>(Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public print(Landroid/animation/ValueAnimator;)V
    .locals 8
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 142
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    long-to-float v1, v2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    div-float v0, v1, v2

    .line 143
    .local v0, "flatFraction":F
    sget-object v1, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v4, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J

    iget-wide v6, p0, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;->mStartFrame:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dirty? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    .line 145
    invoke-virtual {v3}, Landroid/view/View;->isDirty()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method

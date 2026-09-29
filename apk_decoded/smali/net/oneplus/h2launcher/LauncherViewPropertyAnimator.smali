.class public Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
.super Landroid/animation/Animator;
.source "LauncherViewPropertyAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;
    }
.end annotation


# instance fields
.field mAlpha:F

.field mDuration:J

.field mFirstFrameHelper:Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;

.field mInterpolator:Landroid/animation/TimeInterpolator;

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field mPropertiesToSet:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;",
            ">;"
        }
    .end annotation
.end field

.field mRotationY:F

.field mRunning:Z

.field mScaleX:F

.field mScaleY:F

.field mStartDelay:J

.field mTarget:Landroid/view/View;

.field mTranslationX:F

.field mTranslationY:F

.field mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 42
    const-class v0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mRunning:Z

    .line 60
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mTarget:Landroid/view/View;

    .line 61
    return-void
.end method


# virtual methods
.method public addListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 65
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public alpha(F)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 265
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;->ALPHA:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 266
    iput p1, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mAlpha:F

    .line 267
    return-object p0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 73
    :cond_0
    return-void
.end method

.method public clone()Landroid/animation/Animator;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->clone()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public end()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mDuration:J

    return-wide v0
.end method

.method public getListeners()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStartDelay()J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mStartDelay:J

    return-wide v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mRunning:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 102
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 103
    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    .end local v1    # "listener":Landroid/animation/Animator$AnimatorListener;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mRunning:Z

    .line 106
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 110
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 111
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 112
    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    .end local v1    # "listener":Landroid/animation/Animator$AnimatorListener;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mRunning:Z

    .line 115
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 119
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 120
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 121
    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    .end local v1    # "listener":Landroid/animation/Animator$AnimatorListener;
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 129
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mFirstFrameHelper:Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;

    invoke-virtual {v2, p1}, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;->onAnimationStart(Landroid/animation/Animator;)V

    .line 131
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 132
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 133
    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    .end local v1    # "listener":Landroid/animation/Animator$AnimatorListener;
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mRunning:Z

    .line 136
    return-void
.end method

.method public removeAllListeners()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 151
    return-void
.end method

.method public removeListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 155
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method

.method public rotationY(F)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 259
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;->ROTATION_Y:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 260
    iput p1, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mRotationY:F

    .line 261
    return-object p0
.end method

.method public scaleX(F)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 247
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;->SCALE_X:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 248
    iput p1, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mScaleX:F

    .line 249
    return-object p0
.end method

.method public scaleY(F)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 253
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;->SCALE_Y:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 254
    iput p1, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mScaleY:F

    .line 255
    return-object p0
.end method

.method public setDuration(J)Landroid/animation/Animator;
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 160
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;->DURATION:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 161
    iput-wide p1, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mDuration:J

    .line 162
    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 2
    .param p1, "value"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 167
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;->INTERPOLATOR:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 168
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 169
    return-void
.end method

.method public setStartDelay(J)V
    .locals 3
    .param p1, "startDelay"    # J

    .prologue
    .line 173
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;->START_DELAY:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 174
    iput-wide p1, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mStartDelay:J

    .line 175
    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 179
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setupEndValues()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public setupStartValues()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 193
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    .line 197
    new-instance v0, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mTarget:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;-><init>(Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mFirstFrameHelper:Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;

    .line 199
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;->TRANSLATION_X:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mTranslationX:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 202
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;->TRANSLATION_Y:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mTranslationY:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 205
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;->SCALE_X:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mScaleX:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 208
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;->ROTATION_Y:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 209
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mRotationY:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    .line 211
    :cond_3
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;->SCALE_Y:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 212
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mScaleY:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 214
    :cond_4
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;->ALPHA:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 215
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 217
    :cond_5
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;->START_DELAY:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 218
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget-wide v2, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mStartDelay:J

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 220
    :cond_6
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;->DURATION:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 221
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget-wide v2, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 223
    :cond_7
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;->INTERPOLATOR:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 224
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 226
    :cond_8
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;->WITH_LAYER:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 227
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 229
    :cond_9
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 230
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 231
    invoke-static {p0}, Lnet/oneplus/h2launcher/LauncherAnimUtils;->cancelOnDestroyActivity(Landroid/animation/Animator;)V

    .line 232
    return-void
.end method

.method public translationX(F)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 235
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;->TRANSLATION_X:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 236
    iput p1, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mTranslationX:F

    .line 237
    return-object p0
.end method

.method public translationY(F)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 241
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;->TRANSLATION_Y:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 242
    iput p1, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mTranslationY:F

    .line 243
    return-object p0
.end method

.method public withLayer()Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;->WITH_LAYER:Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 272
    return-object p0
.end method

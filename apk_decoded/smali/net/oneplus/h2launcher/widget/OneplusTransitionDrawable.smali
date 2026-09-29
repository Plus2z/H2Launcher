.class public Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "OneplusTransitionDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable$AnimationDoneCallback;
    }
.end annotation


# static fields
.field private static final TRANSITION_NONE:I = 0x2

.field private static final TRANSITION_RUNNING:I = 0x1

.field private static final TRANSITION_STARTING:I


# instance fields
.field private mAlpha:I

.field private mAnimationDoneCallback:Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable$AnimationDoneCallback;

.field private mBaseDrawable:Landroid/graphics/drawable/Drawable;

.field private mCrossFade:Z

.field private mDuration:I

.field private mFrom:I

.field private mHideFirstLayer:Z

.field private mOriginalDuration:I

.field private mReverse:Z

.field private mStartTimeMillis:J

.field private mTo:I

.field private mTransitionState:I


# direct methods
.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "layers"    # [Landroid/graphics/drawable/Drawable;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 65
    const/4 v0, 0x2

    iput v0, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mTransitionState:I

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mAlpha:I

    .line 83
    return-void
.end method

.method private setDrawableBrightness(Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "brightness"    # I

    .prologue
    .line 319
    if-eqz p1, :cond_0

    instance-of v0, p1, Lnet/oneplus/h2launcher/FastBitmapDrawable;

    if-eqz v0, :cond_0

    .line 320
    check-cast p1, Lnet/oneplus/h2launcher/FastBitmapDrawable;

    .end local p1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, p2}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->setBrightness(I)V

    .line 322
    :cond_0
    return-void
.end method

.method private setDrawablePressed(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "pressed"    # Z

    .prologue
    .line 291
    if-eqz p1, :cond_0

    instance-of v0, p1, Lnet/oneplus/h2launcher/FastBitmapDrawable;

    if-eqz v0, :cond_0

    .line 292
    check-cast p1, Lnet/oneplus/h2launcher/FastBitmapDrawable;

    .end local p1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, p2}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->setPressed(Z)V

    .line 294
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelTransition()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 271
    iget v0, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mTransitionState:I

    if-eq v0, v1, :cond_0

    .line 272
    iput v1, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mTransitionState:I

    .line 273
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mAnimationDoneCallback:Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable$AnimationDoneCallback;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mAnimationDoneCallback:Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable$AnimationDoneCallback;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable$AnimationDoneCallback;->onAnimationCancel(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 277
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/16 v12, 0xff

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 148
    const/4 v3, 0x1

    .line 150
    .local v3, "done":Z
    iget v7, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mTransitionState:I

    packed-switch v7, :pswitch_data_0

    .line 168
    :cond_0
    :goto_0
    iget v0, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mAlpha:I

    .line 169
    .local v0, "alpha":I
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mCrossFade:Z

    .line 171
    .local v1, "crossFade":Z
    if-eqz v3, :cond_7

    .line 174
    iget-boolean v7, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mHideFirstLayer:Z

    if-eqz v7, :cond_5

    .line 175
    invoke-virtual {p0, v6}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 179
    :cond_1
    :goto_1
    if-ne v0, v12, :cond_2

    .line 180
    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 182
    :cond_2
    iget-object v7, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mAnimationDoneCallback:Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable$AnimationDoneCallback;

    if-eqz v7, :cond_3

    .line 183
    iget-object v7, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mAnimationDoneCallback:Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable$AnimationDoneCallback;

    invoke-virtual {p0, v6}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v7, v6, v5}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable$AnimationDoneCallback;->onAnimationDone(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 212
    :cond_3
    :goto_2
    return-void

    .line 152
    .end local v0    # "alpha":I
    .end local v1    # "crossFade":Z
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mStartTimeMillis:J

    .line 153
    const/4 v3, 0x0

    .line 154
    iput v5, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mTransitionState:I

    goto :goto_0

    .line 158
    :pswitch_1
    iget-wide v8, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mStartTimeMillis:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_0

    .line 160
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mStartTimeMillis:J

    sub-long/2addr v8, v10

    long-to-float v7, v8

    iget v8, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mDuration:I

    int-to-float v8, v8

    div-float v4, v7, v8

    .line 161
    .local v4, "normalized":F
    cmpl-float v7, v4, v13

    if-ltz v7, :cond_4

    move v3, v5

    .line 162
    :goto_3
    invoke-static {v4, v13}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 163
    iget v7, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mFrom:I

    int-to-float v7, v7

    iget v8, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mTo:I

    iget v9, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mFrom:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mAlpha:I

    goto :goto_0

    :cond_4
    move v3, v6

    .line 161
    goto :goto_3

    .line 176
    .end local v4    # "normalized":F
    .restart local v0    # "alpha":I
    .restart local v1    # "crossFade":Z
    :cond_5
    if-eqz v1, :cond_6

    if-nez v0, :cond_1

    .line 177
    :cond_6
    invoke-virtual {p0, v6}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 188
    :cond_7
    iget-object v7, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mBaseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_8

    .line 189
    iget-object v7, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mBaseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 193
    :cond_8
    invoke-virtual {p0, v6}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 194
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_9

    .line 195
    rsub-int v6, v0, 0xff

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 197
    :cond_9
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 198
    if-eqz v1, :cond_a

    .line 199
    invoke-virtual {v2, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 202
    :cond_a
    if-lez v0, :cond_b

    .line 203
    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 204
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 205
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 206
    invoke-virtual {v2, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 209
    :cond_b
    if-nez v3, :cond_3

    .line 210
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->invalidateSelf()V

    goto :goto_2

    .line 150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getBrightness()I
    .locals 2

    .prologue
    .line 305
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 306
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lnet/oneplus/h2launcher/FastBitmapDrawable;

    if-eqz v1, :cond_0

    .line 307
    check-cast v0, Lnet/oneplus/h2launcher/FastBitmapDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->getBrightness()I

    .line 309
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getTransitionAlpha()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mAlpha:I

    return v0
.end method

.method public isCrossFadeEnabled()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mCrossFade:Z

    return v0
.end method

.method public isFirstLayerHidden()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mHideFirstLayer:Z

    return v0
.end method

.method public isPressed()Z
    .locals 2

    .prologue
    .line 297
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 298
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lnet/oneplus/h2launcher/FastBitmapDrawable;

    if-eqz v1, :cond_0

    .line 299
    check-cast v0, Lnet/oneplus/h2launcher/FastBitmapDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->isPressed()Z

    .line 301
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 255
    iget v1, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mTransitionState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetTransition()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mAlpha:I

    .line 105
    const/4 v0, 0x2

    iput v0, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mTransitionState:I

    .line 106
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->invalidateSelf()V

    .line 107
    return-void
.end method

.method public reverseTransition(I)V
    .locals 10
    .param p1, "duration"    # I

    .prologue
    const/4 v2, 0x1

    const/16 v4, 0xff

    const/4 v3, 0x0

    .line 118
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 120
    .local v0, "time":J
    iget-wide v6, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mStartTimeMillis:J

    sub-long v6, v0, v6

    iget v5, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mDuration:I

    int-to-long v8, v5

    cmp-long v5, v6, v8

    if-lez v5, :cond_1

    .line 121
    iget v5, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mTo:I

    if-nez v5, :cond_0

    .line 122
    iput v3, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mFrom:I

    .line 123
    iput v4, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mTo:I

    .line 124
    iput v3, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mAlpha:I

    .line 125
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mReverse:Z

    .line 132
    :goto_0
    iput p1, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mOriginalDuration:I

    iput p1, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mDuration:I

    .line 133
    iput v3, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mTransitionState:I

    .line 134
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->invalidateSelf()V

    .line 144
    :goto_1
    return-void

    .line 127
    :cond_0
    iput v4, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mFrom:I

    .line 128
    iput v3, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mTo:I

    .line 129
    iput v4, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mAlpha:I

    .line 130
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mReverse:Z

    goto :goto_0

    .line 138
    :cond_1
    iget-boolean v5, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mReverse:Z

    if-nez v5, :cond_2

    :goto_2
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mReverse:Z

    .line 139
    iget v2, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mAlpha:I

    iput v2, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mFrom:I

    .line 140
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mReverse:Z

    if-eqz v2, :cond_3

    move v2, v3

    :goto_3
    iput v2, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mTo:I

    .line 141
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mReverse:Z

    if-eqz v2, :cond_4

    iget-wide v4, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mStartTimeMillis:J

    sub-long v4, v0, v4

    :goto_4
    long-to-int v2, v4

    iput v2, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mDuration:I

    .line 143
    iput v3, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mTransitionState:I

    goto :goto_1

    :cond_2
    move v2, v3

    .line 138
    goto :goto_2

    :cond_3
    move v2, v4

    .line 140
    goto :goto_3

    .line 141
    :cond_4
    iget v2, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mOriginalDuration:I

    int-to-long v4, v2

    iget-wide v6, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mStartTimeMillis:J

    sub-long v6, v0, v6

    sub-long/2addr v4, v6

    goto :goto_4
.end method

.method public setAnimationDoneCallback(Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable$AnimationDoneCallback;)V
    .locals 0
    .param p1, "callback"    # Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable$AnimationDoneCallback;

    .prologue
    .line 259
    iput-object p1, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mAnimationDoneCallback:Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable$AnimationDoneCallback;

    .line 260
    return-void
.end method

.method public setBaseDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "baseDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 267
    iput-object p1, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mBaseDrawable:Landroid/graphics/drawable/Drawable;

    .line 268
    return-void
.end method

.method public setBrightness(I)V
    .locals 1
    .param p1, "brightness"    # I

    .prologue
    .line 313
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mBaseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, p1}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->setDrawableBrightness(Landroid/graphics/drawable/Drawable;I)V

    .line 314
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->setDrawableBrightness(Landroid/graphics/drawable/Drawable;I)V

    .line 315
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->setDrawableBrightness(Landroid/graphics/drawable/Drawable;I)V

    .line 316
    return-void
.end method

.method public setCrossFadeEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 223
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mCrossFade:Z

    .line 224
    return-void
.end method

.method public setFirstLayerHidden(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 242
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mHideFirstLayer:Z

    .line 243
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 285
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mBaseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, p1}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->setDrawablePressed(Landroid/graphics/drawable/Drawable;Z)V

    .line 286
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->setDrawablePressed(Landroid/graphics/drawable/Drawable;Z)V

    .line 287
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->setDrawablePressed(Landroid/graphics/drawable/Drawable;Z)V

    .line 288
    return-void
.end method

.method public startTransition(I)V
    .locals 2
    .param p1, "durationMillis"    # I

    .prologue
    const/4 v1, 0x0

    .line 91
    iput v1, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mFrom:I

    .line 92
    const/16 v0, 0xff

    iput v0, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mTo:I

    .line 93
    iput v1, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mAlpha:I

    .line 94
    iput p1, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mOriginalDuration:I

    iput p1, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mDuration:I

    .line 95
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mReverse:Z

    .line 96
    iput v1, p0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->mTransitionState:I

    .line 97
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->invalidateSelf()V

    .line 98
    return-void
.end method

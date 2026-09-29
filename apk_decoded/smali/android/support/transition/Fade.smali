.class public Landroid/support/transition/Fade;
.super Landroid/support/transition/Visibility;
.source "Fade.java"


# static fields
.field public static final IN:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Fade"

.field public static final OUT:I = 0x2

.field private static final PROPNAME_SCREEN_X:Ljava/lang/String; = "android:fade:screenX"

.field private static final PROPNAME_SCREEN_Y:Ljava/lang/String; = "android:fade:screenY"


# instance fields
.field private mFadingMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/support/transition/Fade;-><init>(I)V

    .line 93
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "fadingMode"    # I

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/support/transition/Visibility;-><init>()V

    .line 85
    iput p1, p0, Landroid/support/transition/Fade;->mFadingMode:I

    .line 86
    return-void
.end method

.method private captureValues(Landroid/support/transition/TransitionValues;)V
    .locals 4
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 119
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 120
    .local v0, "loc":[I
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 121
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:fade:screenX"

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:fade:screenY"

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    return-void
.end method

.method private createAnimation(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "startAlpha"    # F
    .param p3, "endAlpha"    # F
    .param p4, "listener"    # Landroid/animation/AnimatorListenerAdapter;

    .prologue
    const/4 v0, 0x0

    .line 100
    cmpl-float v1, p2, p3

    if-nez v1, :cond_1

    .line 102
    if-eqz p4, :cond_0

    .line 103
    invoke-virtual {p4, v0}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 115
    :cond_0
    :goto_0
    return-object v0

    .line 107
    :cond_1
    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 v3, 0x1

    aput p3, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 112
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    if-eqz p4, :cond_0

    .line 113
    invoke-virtual {v0, p4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method


# virtual methods
.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/support/transition/Visibility;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    .line 128
    invoke-direct {p0, p1}, Landroid/support/transition/Fade;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 129
    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 6
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/support/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 134
    iget v3, p0, Landroid/support/transition/Fade;->mFadingMode:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    if-nez p4, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-object v2

    .line 137
    :cond_1
    iget-object v0, p4, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 143
    .local v0, "endView":Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 144
    new-instance v1, Landroid/support/transition/Fade$1;

    invoke-direct {v1, p0, v0}, Landroid/support/transition/Fade$1;-><init>(Landroid/support/transition/Fade;Landroid/view/View;)V

    .line 173
    .local v1, "transitionListener":Landroid/support/transition/Transition$TransitionListener;
    invoke-virtual {p0, v1}, Landroid/support/transition/Fade;->addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    .line 174
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v5, v3, v2}, Landroid/support/transition/Fade;->createAnimation(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;

    move-result-object v2

    goto :goto_0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 22
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/support/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .prologue
    .line 180
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/transition/Fade;->mFadingMode:I

    and-int/lit8 v3, v3, 0x2

    const/16 v21, 0x2

    move/from16 v0, v21

    if-eq v3, v0, :cond_0

    .line 181
    const/4 v3, 0x0

    .line 337
    :goto_0
    return-object v3

    .line 183
    :cond_0
    const/16 v19, 0x0

    .line 184
    .local v19, "view":Landroid/view/View;
    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v18, v0

    .line 185
    .local v18, "startView":Landroid/view/View;
    :goto_1
    if-eqz p4, :cond_4

    move-object/from16 v0, p4

    iget-object v10, v0, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 190
    .local v10, "endView":Landroid/view/View;
    :goto_2
    const/4 v13, 0x0

    .line 191
    .local v13, "overlayView":Landroid/view/View;
    const/16 v20, 0x0

    .line 192
    .local v20, "viewToKeep":Landroid/view/View;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_7

    .line 193
    :cond_1
    if-eqz v10, :cond_5

    .line 195
    move-object v13, v10

    move-object/from16 v19, v10

    .line 231
    :cond_2
    :goto_3
    move/from16 v6, p5

    .line 233
    .local v6, "finalVisibility":I
    if-eqz v13, :cond_a

    .line 235
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v21, "android:fade:screenX"

    move-object/from16 v0, v21

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 236
    .local v14, "screenX":I
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v21, "android:fade:screenY"

    move-object/from16 v0, v21

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 237
    .local v15, "screenY":I
    const/4 v3, 0x2

    new-array v12, v3, [I

    .line 238
    .local v12, "loc":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 239
    const/4 v3, 0x0

    aget v3, v12, v3

    sub-int v3, v14, v3

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v21

    sub-int v3, v3, v21

    invoke-static {v13, v3}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 240
    const/4 v3, 0x1

    aget v3, v12, v3

    sub-int v3, v15, v3

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v21

    sub-int v3, v3, v21

    invoke-static {v13, v3}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 241
    invoke-static/range {p1 .. p1}, Landroid/support/transition/ViewGroupUtils;->getOverlay(Landroid/view/ViewGroup;)Landroid/support/transition/ViewGroupOverlayImpl;

    move-result-object v3

    invoke-interface {v3, v13}, Landroid/support/transition/ViewGroupOverlayImpl;->add(Landroid/view/View;)V

    .line 243
    const/high16 v16, 0x3f800000    # 1.0f

    .line 244
    .local v16, "startAlpha":F
    const/4 v9, 0x0

    .line 245
    .local v9, "endAlpha":F
    move-object/from16 v4, v19

    .line 246
    .local v4, "finalView":Landroid/view/View;
    move-object v7, v13

    .line 247
    .local v7, "finalOverlayView":Landroid/view/View;
    move-object/from16 v5, v20

    .line 248
    .local v5, "finalViewToKeep":Landroid/view/View;
    move-object/from16 v8, p1

    .line 249
    .local v8, "finalSceneRoot":Landroid/view/ViewGroup;
    new-instance v2, Landroid/support/transition/Fade$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Landroid/support/transition/Fade$2;-><init>(Landroid/support/transition/Fade;Landroid/view/View;Landroid/view/View;ILandroid/view/View;Landroid/view/ViewGroup;)V

    .line 277
    .local v2, "endListener":Landroid/animation/AnimatorListenerAdapter;
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v3, v9, v2}, Landroid/support/transition/Fade;->createAnimation(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;

    move-result-object v3

    goto/16 :goto_0

    .line 184
    .end local v2    # "endListener":Landroid/animation/AnimatorListenerAdapter;
    .end local v4    # "finalView":Landroid/view/View;
    .end local v5    # "finalViewToKeep":Landroid/view/View;
    .end local v6    # "finalVisibility":I
    .end local v7    # "finalOverlayView":Landroid/view/View;
    .end local v8    # "finalSceneRoot":Landroid/view/ViewGroup;
    .end local v9    # "endAlpha":F
    .end local v10    # "endView":Landroid/view/View;
    .end local v12    # "loc":[I
    .end local v13    # "overlayView":Landroid/view/View;
    .end local v14    # "screenX":I
    .end local v15    # "screenY":I
    .end local v16    # "startAlpha":F
    .end local v18    # "startView":Landroid/view/View;
    .end local v20    # "viewToKeep":Landroid/view/View;
    :cond_3
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 185
    .restart local v18    # "startView":Landroid/view/View;
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 196
    .restart local v10    # "endView":Landroid/view/View;
    .restart local v13    # "overlayView":Landroid/view/View;
    .restart local v20    # "viewToKeep":Landroid/view/View;
    :cond_5
    if-eqz v18, :cond_2

    .line 200
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_6

    .line 202
    move-object/from16 v13, v18

    move-object/from16 v19, v18

    goto/16 :goto_3

    .line 203
    :cond_6
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_2

    .line 204
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_2

    .line 205
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    .line 206
    .local v17, "startParent":Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getId()I

    move-result v11

    .line 207
    .local v11, "id":I
    const/4 v3, -0x1

    if-eq v11, v3, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/support/transition/Fade;->mCanRemoveViews:Z

    if-eqz v3, :cond_2

    .line 211
    move-object/from16 v13, v18

    move-object/from16 v19, v18

    goto/16 :goto_3

    .line 217
    .end local v11    # "id":I
    .end local v17    # "startParent":Landroid/view/View;
    :cond_7
    const/4 v3, 0x4

    move/from16 v0, p5

    if-ne v0, v3, :cond_8

    .line 218
    move-object/from16 v19, v10

    .line 219
    move-object/from16 v20, v19

    goto/16 :goto_3

    .line 222
    :cond_8
    move-object/from16 v0, v18

    if-ne v0, v10, :cond_9

    .line 223
    move-object/from16 v19, v10

    .line 224
    move-object/from16 v20, v19

    goto/16 :goto_3

    .line 226
    :cond_9
    move-object/from16 v19, v18

    .line 227
    move-object/from16 v13, v19

    goto/16 :goto_3

    .line 279
    .restart local v6    # "finalVisibility":I
    :cond_a
    if-eqz v20, :cond_b

    .line 282
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 284
    const/high16 v16, 0x3f800000    # 1.0f

    .line 285
    .restart local v16    # "startAlpha":F
    const/4 v9, 0x0

    .line 286
    .restart local v9    # "endAlpha":F
    move-object/from16 v4, v19

    .line 287
    .restart local v4    # "finalView":Landroid/view/View;
    move-object v7, v13

    .line 288
    .restart local v7    # "finalOverlayView":Landroid/view/View;
    move-object/from16 v5, v20

    .line 289
    .restart local v5    # "finalViewToKeep":Landroid/view/View;
    move-object/from16 v8, p1

    .line 290
    .restart local v8    # "finalSceneRoot":Landroid/view/ViewGroup;
    new-instance v2, Landroid/support/transition/Fade$3;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Landroid/support/transition/Fade$3;-><init>(Landroid/support/transition/Fade;Landroid/view/View;Landroid/view/View;ILandroid/view/View;Landroid/view/ViewGroup;)V

    .line 335
    .restart local v2    # "endListener":Landroid/animation/AnimatorListenerAdapter;
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v3, v9, v2}, Landroid/support/transition/Fade;->createAnimation(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;

    move-result-object v3

    goto/16 :goto_0

    .line 337
    .end local v2    # "endListener":Landroid/animation/AnimatorListenerAdapter;
    .end local v4    # "finalView":Landroid/view/View;
    .end local v5    # "finalViewToKeep":Landroid/view/View;
    .end local v7    # "finalOverlayView":Landroid/view/View;
    .end local v8    # "finalSceneRoot":Landroid/view/ViewGroup;
    .end local v9    # "endAlpha":F
    .end local v16    # "startAlpha":F
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.class Landroid/support/transition/Fade$1;
.super Landroid/support/transition/Transition$TransitionListenerAdapter;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/Fade;->onAppear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCanceled:Z

.field mPausedAlpha:F

.field final synthetic this$0:Landroid/support/transition/Fade;

.field final synthetic val$endView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/transition/Fade;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Landroid/support/transition/Fade;

    .prologue
    .line 144
    iput-object p1, p0, Landroid/support/transition/Fade$1;->this$0:Landroid/support/transition/Fade;

    iput-object p2, p0, Landroid/support/transition/Fade$1;->val$endView:Landroid/view/View;

    invoke-direct {p0}, Landroid/support/transition/Transition$TransitionListenerAdapter;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/transition/Fade$1;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/support/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 151
    iget-object v0, p0, Landroid/support/transition/Fade$1;->val$endView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/Fade$1;->mCanceled:Z

    .line 153
    return-void
.end method

.method public onTransitionEnd(Landroid/support/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 157
    iget-boolean v0, p0, Landroid/support/transition/Fade$1;->mCanceled:Z

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Landroid/support/transition/Fade$1;->val$endView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 160
    :cond_0
    return-void
.end method

.method public onTransitionPause(Landroid/support/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 164
    iget-object v0, p0, Landroid/support/transition/Fade$1;->val$endView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    iput v0, p0, Landroid/support/transition/Fade$1;->mPausedAlpha:F

    .line 165
    iget-object v0, p0, Landroid/support/transition/Fade$1;->val$endView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 166
    return-void
.end method

.method public onTransitionResume(Landroid/support/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 170
    iget-object v0, p0, Landroid/support/transition/Fade$1;->val$endView:Landroid/view/View;

    iget v1, p0, Landroid/support/transition/Fade$1;->mPausedAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 171
    return-void
.end method

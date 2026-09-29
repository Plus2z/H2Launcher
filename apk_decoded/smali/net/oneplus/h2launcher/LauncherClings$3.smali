.class Lnet/oneplus/h2launcher/LauncherClings$3;
.super Ljava/lang/Object;
.source "LauncherClings.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherClings;->showLongPressCling(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/LauncherClings;

.field final synthetic val$content:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherClings;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/LauncherClings;

    .prologue
    .line 204
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherClings$3;->this$0:Lnet/oneplus/h2launcher/LauncherClings;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherClings$3;->val$content:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 208
    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherClings$3;->val$content:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 211
    const-string v3, "crop_bg_top_and_sides"

    iget-object v4, p0, Lnet/oneplus/h2launcher/LauncherClings$3;->val$content:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherClings$3;->val$content:Landroid/view/ViewGroup;

    iget-object v4, p0, Lnet/oneplus/h2launcher/LauncherClings$3;->val$content:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 213
    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherClings$3;->val$content:Landroid/view/ViewGroup;

    const-string v4, "translationY"

    new-array v5, v5, [F

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Lnet/oneplus/h2launcher/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 222
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    :goto_0
    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 223
    new-instance v3, Lnet/oneplus/h2launcher/LogDecelerateInterpolator;

    const/16 v4, 0x64

    invoke-direct {v3, v4, v6}, Lnet/oneplus/h2launcher/LogDecelerateInterpolator;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 224
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 225
    return-void

    .line 215
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherClings$3;->val$content:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 216
    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherClings$3;->val$content:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 217
    const-string v3, "scaleX"

    new-array v4, v5, [F

    aput v8, v4, v6

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 218
    .local v1, "scaleX":Landroid/animation/PropertyValuesHolder;
    const-string v3, "scaleY"

    new-array v4, v5, [F

    aput v8, v4, v6

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 219
    .local v2, "scaleY":Landroid/animation/PropertyValuesHolder;
    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherClings$3;->val$content:Landroid/view/ViewGroup;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v4, v6

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    goto :goto_0
.end method

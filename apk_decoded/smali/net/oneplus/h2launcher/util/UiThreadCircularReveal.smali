.class public Lnet/oneplus/h2launcher/util/UiThreadCircularReveal;
.super Ljava/lang/Object;
.source "UiThreadCircularReveal.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/ValueAnimator;
    .locals 6
    .param p0, "v"    # Landroid/view/View;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "r0"    # F
    .param p4, "r1"    # F

    .prologue
    .line 18
    sget-object v5, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lnet/oneplus/h2launcher/util/UiThreadCircularReveal;->createCircularReveal(Landroid/view/View;IIFFLandroid/view/ViewOutlineProvider;)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static createCircularReveal(Landroid/view/View;IIFFLandroid/view/ViewOutlineProvider;)Landroid/animation/ValueAnimator;
    .locals 5
    .param p0, "v"    # Landroid/view/View;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "r0"    # F
    .param p4, "r1"    # F
    .param p5, "originalProvider"    # Landroid/view/ViewOutlineProvider;

    .prologue
    .line 23
    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 25
    .local v3, "va":Landroid/animation/ValueAnimator;
    move-object v2, p0

    .line 26
    .local v2, "revealView":Landroid/view/View;
    new-instance v1, Lnet/oneplus/h2launcher/util/RevealOutlineProvider;

    invoke-direct {v1, p1, p2, p3, p4}, Lnet/oneplus/h2launcher/util/RevealOutlineProvider;-><init>(IIFF)V

    .line 27
    .local v1, "outlineProvider":Lnet/oneplus/h2launcher/util/RevealOutlineProvider;
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result v0

    .line 29
    .local v0, "elevation":F
    new-instance v4, Lnet/oneplus/h2launcher/util/UiThreadCircularReveal$1;

    invoke-direct {v4, v2, v1, v0, p5}, Lnet/oneplus/h2launcher/util/UiThreadCircularReveal$1;-><init>(Landroid/view/View;Lnet/oneplus/h2launcher/util/RevealOutlineProvider;FLandroid/view/ViewOutlineProvider;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 44
    new-instance v4, Lnet/oneplus/h2launcher/util/UiThreadCircularReveal$2;

    invoke-direct {v4, v1, v2}, Lnet/oneplus/h2launcher/util/UiThreadCircularReveal$2;-><init>(Lnet/oneplus/h2launcher/util/RevealOutlineProvider;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 55
    return-object v3

    .line 23
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

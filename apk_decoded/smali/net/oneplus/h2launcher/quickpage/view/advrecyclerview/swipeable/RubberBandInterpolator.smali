.class Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RubberBandInterpolator;
.super Ljava/lang/Object;
.source "RubberBandInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final mLimit:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "limit"    # F

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RubberBandInterpolator;->mLimit:F

    .line 26
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4
    .param p1, "input"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 30
    sub-float v0, v3, p1

    .line 31
    .local v0, "t":F
    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/RubberBandInterpolator;->mLimit:F

    mul-float v2, v0, v0

    sub-float v2, v3, v2

    mul-float/2addr v1, v2

    return v1
.end method

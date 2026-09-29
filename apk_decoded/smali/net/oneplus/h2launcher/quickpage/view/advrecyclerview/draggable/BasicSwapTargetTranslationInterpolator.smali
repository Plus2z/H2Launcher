.class public Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BasicSwapTargetTranslationInterpolator;
.super Ljava/lang/Object;
.source "BasicSwapTargetTranslationInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final mHalfValidRange:F

.field private final mInvValidRange:F

.field private final mThreshold:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    const v0, 0x3e99999a    # 0.3f

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BasicSwapTargetTranslationInterpolator;-><init>(F)V

    .line 29
    return-void
.end method

.method public constructor <init>(F)V
    .locals 4
    .param p1, "threshold"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    cmpg-float v1, p1, v2

    if-ltz v1, :cond_1

    .line 33
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid threshold range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 35
    :cond_1
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, p1

    sub-float v0, v3, v1

    .line 37
    .local v0, "validRange":F
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BasicSwapTargetTranslationInterpolator;->mThreshold:F

    .line 38
    mul-float v1, v0, v2

    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BasicSwapTargetTranslationInterpolator;->mHalfValidRange:F

    .line 39
    div-float v1, v3, v0

    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BasicSwapTargetTranslationInterpolator;->mInvValidRange:F

    .line 40
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3
    .param p1, "input"    # F

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 44
    sub-float v0, p1, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BasicSwapTargetTranslationInterpolator;->mHalfValidRange:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 45
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BasicSwapTargetTranslationInterpolator;->mThreshold:F

    sub-float v0, p1, v0

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BasicSwapTargetTranslationInterpolator;->mInvValidRange:F

    mul-float/2addr v0, v1

    .line 47
    :goto_0
    return v0

    :cond_0
    cmpg-float v0, p1, v2

    if-gez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

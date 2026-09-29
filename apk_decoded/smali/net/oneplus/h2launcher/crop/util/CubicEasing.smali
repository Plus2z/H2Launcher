.class public final Lnet/oneplus/h2launcher/crop/util/CubicEasing;
.super Ljava/lang/Object;
.source "CubicEasing.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static easeIn(FFFF)F
    .locals 1
    .param p0, "time"    # F
    .param p1, "start"    # F
    .param p2, "end"    # F
    .param p3, "duration"    # F

    .prologue
    .line 10
    div-float/2addr p0, p3

    mul-float v0, p2, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0
.end method

.method public static easeInOut(FFFF)F
    .locals 3
    .param p0, "time"    # F
    .param p1, "start"    # F
    .param p2, "end"    # F
    .param p3, "duration"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 14
    div-float v0, p3, v2

    div-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    div-float v0, p2, v2

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    :goto_0
    return v0

    :cond_0
    div-float v0, p2, v2

    sub-float/2addr p0, v2

    mul-float v1, p0, p0

    mul-float/2addr v1, p0

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    goto :goto_0
.end method

.method public static easeOut(FFFF)F
    .locals 2
    .param p0, "time"    # F
    .param p1, "start"    # F
    .param p2, "end"    # F
    .param p3, "duration"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    div-float v0, p0, p3

    sub-float p0, v0, v1

    mul-float v0, p0, p0

    mul-float/2addr v0, p0

    add-float/2addr v0, v1

    mul-float/2addr v0, p2

    add-float/2addr v0, p1

    return v0
.end method

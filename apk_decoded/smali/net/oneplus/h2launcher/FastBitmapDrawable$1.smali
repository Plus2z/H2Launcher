.class final Lnet/oneplus/h2launcher/FastBitmapDrawable$1;
.super Ljava/lang/Object;
.source "FastBitmapDrawable.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/FastBitmapDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3
    .param p1, "input"    # F

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const v2, 0x3d4ccccd    # 0.05f

    .line 41
    cmpg-float v1, p1, v2

    if-gez v1, :cond_1

    .line 42
    div-float v0, p1, v2

    .line 46
    :cond_0
    :goto_0
    return v0

    .line 43
    :cond_1
    const v1, 0x3e99999a    # 0.3f

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_0

    .line 46
    sub-float/2addr v0, p1

    const v1, 0x3f333333    # 0.7f

    div-float/2addr v0, v1

    goto :goto_0
.end method

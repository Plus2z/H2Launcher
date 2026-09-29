.class public Lnet/oneplus/h2launcher/quickpage/widget/SpringFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SpringFrameLayout.java"

# interfaces
.implements Lnet/oneplus/h2launcher/quickpage/rebound/SpringListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method


# virtual methods
.method public onSpringActivate(Lnet/oneplus/h2launcher/quickpage/rebound/Spring;)V
    .locals 0
    .param p1, "spring"    # Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    .prologue
    .line 41
    return-void
.end method

.method public onSpringAtRest(Lnet/oneplus/h2launcher/quickpage/rebound/Spring;)V
    .locals 0
    .param p1, "spring"    # Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    .prologue
    .line 36
    return-void
.end method

.method public onSpringChainUpdate(Lnet/oneplus/h2launcher/quickpage/rebound/Spring;Lnet/oneplus/h2launcher/quickpage/rebound/Spring;)V
    .locals 0
    .param p1, "spring"    # Lnet/oneplus/h2launcher/quickpage/rebound/Spring;
    .param p2, "springControl"    # Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    .prologue
    .line 31
    return-void
.end method

.method public onSpringEndStateChange(Lnet/oneplus/h2launcher/quickpage/rebound/Spring;)V
    .locals 0
    .param p1, "spring"    # Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    .prologue
    .line 46
    return-void
.end method

.method public onSpringUpdate(Lnet/oneplus/h2launcher/quickpage/rebound/Spring;)V
    .locals 4
    .param p1, "spring"    # Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    .prologue
    .line 25
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/quickpage/rebound/Spring;->getCurrentValue()D

    move-result-wide v2

    double-to-float v0, v2

    .line 26
    .local v0, "val":F
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/widget/SpringFrameLayout;->setTranslationY(F)V

    .line 27
    return-void
.end method

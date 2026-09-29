.class public Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;
.super Ljava/lang/Object;
.source "SpringConfig.java"


# static fields
.field public static defaultConfig:Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;


# instance fields
.field public friction:D

.field public tension:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 20
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    const-wide/high16 v2, 0x401c000000000000L    # 7.0

    invoke-static {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;->defaultConfig:Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1
    .param p1, "tension"    # D
    .param p3, "friction"    # D

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;->tension:D

    .line 29
    iput-wide p3, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;->friction:D

    .line 30
    return-void
.end method

.method public static fromBouncinessAndSpeed(DD)Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;
    .locals 6
    .param p0, "bounciness"    # D
    .param p2, "speed"    # D

    .prologue
    .line 53
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/rebound/BouncyConversion;

    invoke-direct {v0, p2, p3, p0, p1}, Lnet/oneplus/h2launcher/quickpage/rebound/BouncyConversion;-><init>(DD)V

    .line 55
    .local v0, "bouncyConversion":Lnet/oneplus/h2launcher/quickpage/rebound/BouncyConversion;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/rebound/BouncyConversion;->getBouncyTension()D

    move-result-wide v2

    .line 56
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/rebound/BouncyConversion;->getBouncyFriction()D

    move-result-wide v4

    .line 54
    invoke-static {v2, v3, v4, v5}, Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;

    move-result-object v1

    return-object v1
.end method

.method public static fromOrigamiTensionAndFriction(DD)Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;
    .locals 6
    .param p0, "qcTension"    # D
    .param p2, "qcFriction"    # D

    .prologue
    .line 39
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;

    .line 40
    invoke-static {p0, p1}, Lnet/oneplus/h2launcher/quickpage/rebound/OrigamiValueConverter;->tensionFromOrigamiValue(D)D

    move-result-wide v2

    .line 41
    invoke-static {p2, p3}, Lnet/oneplus/h2launcher/quickpage/rebound/OrigamiValueConverter;->frictionFromOrigamiValue(D)D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;-><init>(DD)V

    return-object v0
.end method

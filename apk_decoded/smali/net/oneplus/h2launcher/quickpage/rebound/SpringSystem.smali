.class public Lnet/oneplus/h2launcher/quickpage/rebound/SpringSystem;
.super Lnet/oneplus/h2launcher/quickpage/rebound/BaseSpringSystem;
.source "SpringSystem.java"


# direct methods
.method private constructor <init>(Lnet/oneplus/h2launcher/quickpage/rebound/SpringLooper;)V
    .locals 0
    .param p1, "springLooper"    # Lnet/oneplus/h2launcher/quickpage/rebound/SpringLooper;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/quickpage/rebound/BaseSpringSystem;-><init>(Lnet/oneplus/h2launcher/quickpage/rebound/SpringLooper;)V

    .line 30
    return-void
.end method

.method public static create()Lnet/oneplus/h2launcher/quickpage/rebound/SpringSystem;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringSystem;

    invoke-static {}, Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory;->createSpringLooper()Lnet/oneplus/h2launcher/quickpage/rebound/SpringLooper;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/quickpage/rebound/SpringSystem;-><init>(Lnet/oneplus/h2launcher/quickpage/rebound/SpringLooper;)V

    return-object v0
.end method

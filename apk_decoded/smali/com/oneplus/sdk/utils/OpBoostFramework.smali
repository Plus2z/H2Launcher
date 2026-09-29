.class public Lcom/oneplus/sdk/utils/OpBoostFramework;
.super Ljava/lang/Object;


# static fields
.field public static final MAX_ACQUIRE_DURATION:I = 0x7d0

.field public static final MIN_ACQUIRE_DURATION:I = 0x0

.field public static final REQUEST_FAILED_EXCEPTION:I = -0x4

.field public static final REQUEST_FAILED_INVALID_DURATION:I = -0x2

.field public static final REQUEST_FAILED_NATIVE:I = -0x1

.field public static final REQUEST_FAILED_UNKNOWN_POLICY:I = -0x3

.field public static final REQUEST_POLICY_PERFORMANCE:I

.field public static final REQUEST_SUCCEEDED:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireBoostFor(II)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public releaseBoost()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

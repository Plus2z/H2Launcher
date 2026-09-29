.class public Lcom/oneplus/sdk/utils/OpFeatures;
.super Ljava/lang/Object;


# static fields
.field public static final OP_FEATURE_AUTO_STARTUP:I = 0x4

.field public static final OP_FEATURE_BACK_COVER_THEME:I = 0x9

.field public static final OP_FEATURE_BG_DETECTION:I = 0xe

.field public static final OP_FEATURE_BLACK_GESTURE:I = 0x11

.field public static final OP_FEATURE_BUGREPORT:I = 0x3

.field public static final OP_FEATURE_CTA_PERMISSION_CONTROL:I = 0xc

.field public static final OP_FEATURE_EXT_AUDIO_DECODER:I = 0x13

.field public static final OP_FEATURE_GESTURE_SCREENSHOT:I = 0xd

.field public static final OP_FEATURE_KEY_LOCK:I = 0xb

.field public static final OP_FEATURE_MDM:I = 0x2

.field public static final OP_FEATURE_MMS_NOTI_SOUND:I = 0x6

.field public static final OP_FEATURE_MULTI_SIM_RINGTONES:I = 0x7

.field public static final OP_FEATURE_OP_KEYGUARD:I = 0x5

.field public static final OP_FEATURE_POST_INSTALL_AMAZON_APPS:I = 0x14

.field public static final OP_FEATURE_RESERVE_APP:I = 0x12

.field public static final OP_FEATURE_RINGTONE_ALIAS:I = 0xf

.field public static final OP_FEATURE_RINGTONE_BKP:I = 0x10

.field public static final OP_FEATURE_SKU_CHINA:I = 0x0

.field public static final OP_FEATURE_SKU_GLOBAL:I = 0x1

.field public static final OP_FEATURE_SWAP_KEYS:I = 0x8

.field public static final OP_FEATURE_TRI_STATE_KEY:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs isSupport([I)Z
    .locals 3
    .param p0, "features"    # [I

    .prologue
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    if-lez v1, :cond_0

    aget v1, p0, v0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.class public Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetTileInfo;
.super Ljava/lang/Object;
.source "TimeWidgetTileInfo.java"


# instance fields
.field public clockStyle:I

.field public keyguardPreviewResId:I

.field public previewResId:I

.field public thumbnailResId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canApplyToLockScreen()Z
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetTileInfo;->keyguardPreviewResId:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public Lnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;
.super Ljava/lang/Object;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/PageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageMarkerResources"
.end annotation


# instance fields
.field activeId:I

.field firstPageId:I

.field inactiveId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const v0, 0x7f020114

    iput v0, p0, Lnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;->activeId:I

    .line 55
    const v0, 0x7f020116

    iput v0, p0, Lnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;->inactiveId:I

    .line 56
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "aId"    # I
    .param p2, "iaId"    # I

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;->activeId:I

    .line 60
    iput p2, p0, Lnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;->inactiveId:I

    .line 61
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "aId"    # I
    .param p2, "iaId"    # I
    .param p3, "fpId"    # I

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Lnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;->activeId:I

    .line 65
    iput p2, p0, Lnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;->inactiveId:I

    .line 66
    iput p3, p0, Lnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;->firstPageId:I

    .line 67
    return-void
.end method

.class public Lnet/oneplus/h2launcher/quickpage/HeaderItem;
.super Ljava/lang/Object;
.source "HeaderItem.java"

# interfaces
.implements Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;


# static fields
.field public static final TYPE:I = 0x65


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 12
    const/16 v0, 0x270e

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, -0x1

    return v0
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0x65

    return v0
.end method

.method public isPinned()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public isSectionHeader()Z
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public setPinned(Z)V
    .locals 0
    .param p1, "pinned"    # Z

    .prologue
    .line 28
    return-void
.end method

.class final Lnet/oneplus/h2launcher/Folder$14;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lnet/oneplus/h2launcher/ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1274
    check-cast p1, Lnet/oneplus/h2launcher/ItemInfo;

    check-cast p2, Lnet/oneplus/h2launcher/ItemInfo;

    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/Folder$14;->compare(Lnet/oneplus/h2launcher/ItemInfo;Lnet/oneplus/h2launcher/ItemInfo;)I

    move-result v0

    return v0
.end method

.method public compare(Lnet/oneplus/h2launcher/ItemInfo;Lnet/oneplus/h2launcher/ItemInfo;)I
    .locals 2
    .param p1, "lhs"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p2, "rhs"    # Lnet/oneplus/h2launcher/ItemInfo;

    .prologue
    .line 1278
    iget v0, p1, Lnet/oneplus/h2launcher/ItemInfo;->rank:I

    iget v1, p2, Lnet/oneplus/h2launcher/ItemInfo;->rank:I

    if-eq v0, v1, :cond_0

    .line 1279
    iget v0, p1, Lnet/oneplus/h2launcher/ItemInfo;->rank:I

    iget v1, p2, Lnet/oneplus/h2launcher/ItemInfo;->rank:I

    sub-int/2addr v0, v1

    .line 1283
    :goto_0
    return v0

    .line 1280
    :cond_0
    iget v0, p1, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    iget v1, p2, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    if-eq v0, v1, :cond_1

    .line 1281
    iget v0, p1, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    iget v1, p2, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 1283
    :cond_1
    iget v0, p1, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    iget v1, p2, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

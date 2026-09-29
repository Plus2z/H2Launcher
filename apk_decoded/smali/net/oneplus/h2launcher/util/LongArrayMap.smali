.class public Lnet/oneplus/h2launcher/util/LongArrayMap;
.super Landroid/util/LongSparseArray;
.source "LongArrayMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/util/LongArrayMap$ValueIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/LongSparseArray",
        "<TE;>;",
        "Ljava/lang/Iterable",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    .local p0, "this":Lnet/oneplus/h2launcher/util/LongArrayMap;, "Lnet/oneplus/h2launcher/util/LongArrayMap<TE;>;"
    invoke-direct {p0}, Landroid/util/LongSparseArray;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Landroid/util/LongSparseArray;
    .locals 1

    .prologue
    .line 26
    .local p0, "this":Lnet/oneplus/h2launcher/util/LongArrayMap;, "Lnet/oneplus/h2launcher/util/LongArrayMap<TE;>;"
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/util/LongArrayMap;->clone()Lnet/oneplus/h2launcher/util/LongArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lnet/oneplus/h2launcher/util/LongArrayMap;, "Lnet/oneplus/h2launcher/util/LongArrayMap<TE;>;"
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/util/LongArrayMap;->clone()Lnet/oneplus/h2launcher/util/LongArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lnet/oneplus/h2launcher/util/LongArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/oneplus/h2launcher/util/LongArrayMap",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lnet/oneplus/h2launcher/util/LongArrayMap;, "Lnet/oneplus/h2launcher/util/LongArrayMap<TE;>;"
    invoke-super {p0}, Landroid/util/LongSparseArray;->clone()Landroid/util/LongSparseArray;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/util/LongArrayMap;

    return-object v0
.end method

.method public containsKey(J)Z
    .locals 1
    .param p1, "key"    # J

    .prologue
    .line 29
    .local p0, "this":Lnet/oneplus/h2launcher/util/LongArrayMap;, "Lnet/oneplus/h2launcher/util/LongArrayMap<TE;>;"
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/util/LongArrayMap;->indexOfKey(J)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 33
    .local p0, "this":Lnet/oneplus/h2launcher/util/LongArrayMap;, "Lnet/oneplus/h2launcher/util/LongArrayMap<TE;>;"
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/util/LongArrayMap;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lnet/oneplus/h2launcher/util/LongArrayMap;, "Lnet/oneplus/h2launcher/util/LongArrayMap<TE;>;"
    new-instance v0, Lnet/oneplus/h2launcher/util/LongArrayMap$ValueIterator;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/util/LongArrayMap$ValueIterator;-><init>(Lnet/oneplus/h2launcher/util/LongArrayMap;)V

    return-object v0
.end method

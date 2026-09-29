.class Lnet/oneplus/h2launcher/util/LongArrayMap$ValueIterator;
.super Ljava/lang/Object;
.source "LongArrayMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/util/LongArrayMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private mNextIndex:I

.field final synthetic this$0:Lnet/oneplus/h2launcher/util/LongArrayMap;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/util/LongArrayMap;)V
    .locals 1
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/util/LongArrayMap;

    .prologue
    .line 46
    .local p0, "this":Lnet/oneplus/h2launcher/util/LongArrayMap$ValueIterator;, "Lnet/oneplus/h2launcher/util/LongArrayMap<TE;>.ValueIterator;"
    iput-object p1, p0, Lnet/oneplus/h2launcher/util/LongArrayMap$ValueIterator;->this$0:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lnet/oneplus/h2launcher/util/LongArrayMap$ValueIterator;->mNextIndex:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 52
    .local p0, "this":Lnet/oneplus/h2launcher/util/LongArrayMap$ValueIterator;, "Lnet/oneplus/h2launcher/util/LongArrayMap<TE;>.ValueIterator;"
    iget v0, p0, Lnet/oneplus/h2launcher/util/LongArrayMap$ValueIterator;->mNextIndex:I

    iget-object v1, p0, Lnet/oneplus/h2launcher/util/LongArrayMap$ValueIterator;->this$0:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/util/LongArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lnet/oneplus/h2launcher/util/LongArrayMap$ValueIterator;, "Lnet/oneplus/h2launcher/util/LongArrayMap<TE;>.ValueIterator;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/util/LongArrayMap$ValueIterator;->this$0:Lnet/oneplus/h2launcher/util/LongArrayMap;

    iget v1, p0, Lnet/oneplus/h2launcher/util/LongArrayMap$ValueIterator;->mNextIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/oneplus/h2launcher/util/LongArrayMap$ValueIterator;->mNextIndex:I

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/util/LongArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 62
    .local p0, "this":Lnet/oneplus/h2launcher/util/LongArrayMap$ValueIterator;, "Lnet/oneplus/h2launcher/util/LongArrayMap<TE;>.ValueIterator;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

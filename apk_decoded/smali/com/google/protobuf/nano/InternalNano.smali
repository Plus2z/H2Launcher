.class public final Lcom/google/protobuf/nano/InternalNano;
.super Ljava/lang/Object;
.source "InternalNano.java"


# static fields
.field public static final LAZY_INIT_LOCK:Ljava/lang/Object;

.field public static final TYPE_BOOL:I = 0x8

.field public static final TYPE_BYTES:I = 0xc

.field public static final TYPE_DOUBLE:I = 0x1

.field public static final TYPE_ENUM:I = 0xe

.field public static final TYPE_FIXED32:I = 0x7

.field public static final TYPE_FIXED64:I = 0x6

.field public static final TYPE_FLOAT:I = 0x2

.field public static final TYPE_GROUP:I = 0xa

.field public static final TYPE_INT32:I = 0x5

.field public static final TYPE_INT64:I = 0x3

.field public static final TYPE_MESSAGE:I = 0xb

.field public static final TYPE_SFIXED32:I = 0xf

.field public static final TYPE_SFIXED64:I = 0x10

.field public static final TYPE_SINT32:I = 0x11

.field public static final TYPE_SINT64:I = 0x12

.field public static final TYPE_STRING:I = 0x9

.field public static final TYPE_UINT32:I = 0xd

.field public static final TYPE_UINT64:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesDefaultValue(Ljava/lang/String;)[B
    .locals 3
    .param p0, "bytes"    # Ljava/lang/String;

    .prologue
    .line 134
    :try_start_0
    const-string v1, "ISO-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 135
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Java VM does not support a standard character set."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static computeMapFieldSize(Ljava/util/Map;III)I
    .locals 9
    .param p1, "number"    # I
    .param p2, "keyType"    # I
    .param p3, "valueType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;III)I"
        }
    .end annotation

    .prologue
    .line 479
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v4, 0x0

    .line 480
    .local v4, "size":I
    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v5

    .line 481
    .local v5, "tagSize":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 482
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 483
    .local v3, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 484
    .local v6, "value":Ljava/lang/Object;, "TV;"
    if-eqz v3, :cond_0

    if-nez v6, :cond_1

    .line 485
    :cond_0
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "keys and values in maps cannot be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 488
    :cond_1
    const/4 v7, 0x1

    invoke-static {v7, p2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFieldSize(IILjava/lang/Object;)I

    move-result v7

    const/4 v8, 0x2

    invoke-static {v8, p3, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFieldSize(IILjava/lang/Object;)I

    move-result v8

    add-int v1, v7, v8

    .line 491
    .local v1, "entrySize":I
    add-int v7, v5, v1

    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v4, v7

    .line 493
    goto :goto_0

    .line 494
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v1    # "entrySize":I
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "value":Ljava/lang/Object;, "TV;"
    :cond_2
    return v4
.end method

.method public static copyFromUtf8(Ljava/lang/String;)[B
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 149
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported?"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static equals(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "a":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "b":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 503
    if-ne p0, p1, :cond_1

    .line 523
    :cond_0
    :goto_0
    return v2

    .line 506
    :cond_1
    if-nez p0, :cond_2

    .line 507
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 509
    :cond_2
    if-nez p1, :cond_3

    .line 510
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 512
    :cond_3
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v4

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    if-eq v4, v5, :cond_4

    move v2, v3

    .line 513
    goto :goto_0

    .line 515
    :cond_4
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 516
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    move v2, v3

    .line 517
    goto :goto_0

    .line 519
    :cond_6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/InternalNano;->equalsMapValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    move v2, v3

    .line 520
    goto :goto_0
.end method

.method public static equals([D[D)Z
    .locals 1
    .param p0, "field1"    # [D
    .param p1, "field2"    # [D

    .prologue
    .line 196
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_3

    .line 197
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 199
    :goto_0
    return v0

    .line 197
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 199
    :cond_3
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    goto :goto_0
.end method

.method public static equals([F[F)Z
    .locals 1
    .param p0, "field1"    # [F
    .param p1, "field2"    # [F

    .prologue
    .line 184
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_3

    .line 185
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 187
    :goto_0
    return v0

    .line 185
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 187
    :cond_3
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    goto :goto_0
.end method

.method public static equals([I[I)Z
    .locals 1
    .param p0, "field1"    # [I
    .param p1, "field2"    # [I

    .prologue
    .line 160
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_3

    .line 161
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 163
    :goto_0
    return v0

    .line 161
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 163
    :cond_3
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto :goto_0
.end method

.method public static equals([J[J)Z
    .locals 1
    .param p0, "field1"    # [J
    .param p1, "field2"    # [J

    .prologue
    .line 172
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_3

    .line 173
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 175
    :goto_0
    return v0

    .line 173
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 175
    :cond_3
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    goto :goto_0
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 10
    .param p0, "field1"    # [Ljava/lang/Object;
    .param p1, "field2"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 257
    const/4 v2, 0x0

    .line 258
    .local v2, "index1":I
    if-nez p0, :cond_0

    move v4, v6

    .line 259
    .local v4, "length1":I
    :goto_0
    const/4 v3, 0x0

    .line 260
    .local v3, "index2":I
    if-nez p1, :cond_1

    move v5, v6

    .line 262
    .local v5, "length2":I
    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v8, p0, v2

    if-nez v8, :cond_2

    .line 263
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 258
    .end local v3    # "index2":I
    .end local v4    # "length1":I
    .end local v5    # "length2":I
    :cond_0
    array-length v4, p0

    goto :goto_0

    .line 260
    .restart local v3    # "index2":I
    .restart local v4    # "length1":I
    :cond_1
    array-length v5, p1

    goto :goto_1

    .line 265
    .restart local v5    # "length2":I
    :cond_2
    :goto_2
    if-ge v3, v5, :cond_3

    aget-object v8, p1, v3

    if-nez v8, :cond_3

    .line 266
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 268
    :cond_3
    if-lt v2, v4, :cond_5

    move v0, v7

    .line 269
    .local v0, "atEndOf1":Z
    :goto_3
    if-lt v3, v5, :cond_6

    move v1, v7

    .line 270
    .local v1, "atEndOf2":Z
    :goto_4
    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    move v6, v7

    .line 278
    :cond_4
    return v6

    .end local v0    # "atEndOf1":Z
    .end local v1    # "atEndOf2":Z
    :cond_5
    move v0, v6

    .line 268
    goto :goto_3

    .restart local v0    # "atEndOf1":Z
    :cond_6
    move v1, v6

    .line 269
    goto :goto_4

    .line 273
    .restart local v1    # "atEndOf2":Z
    :cond_7
    if-ne v0, v1, :cond_4

    .line 276
    aget-object v8, p0, v2

    aget-object v9, p1, v3

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 280
    add-int/lit8 v2, v2, 0x1

    .line 281
    add-int/lit8 v3, v3, 0x1

    .line 282
    goto :goto_1
.end method

.method public static equals([Z[Z)Z
    .locals 1
    .param p0, "field1"    # [Z
    .param p1, "field2"    # [Z

    .prologue
    .line 208
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_3

    .line 209
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 211
    :goto_0
    return v0

    .line 209
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 211
    :cond_3
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static equals([[B[[B)Z
    .locals 10
    .param p0, "field1"    # [[B
    .param p1, "field2"    # [[B

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 222
    const/4 v2, 0x0

    .line 223
    .local v2, "index1":I
    if-nez p0, :cond_0

    move v4, v6

    .line 224
    .local v4, "length1":I
    :goto_0
    const/4 v3, 0x0

    .line 225
    .local v3, "index2":I
    if-nez p1, :cond_1

    move v5, v6

    .line 227
    .local v5, "length2":I
    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v8, p0, v2

    if-nez v8, :cond_2

    .line 228
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 223
    .end local v3    # "index2":I
    .end local v4    # "length1":I
    .end local v5    # "length2":I
    :cond_0
    array-length v4, p0

    goto :goto_0

    .line 225
    .restart local v3    # "index2":I
    .restart local v4    # "length1":I
    :cond_1
    array-length v5, p1

    goto :goto_1

    .line 230
    .restart local v5    # "length2":I
    :cond_2
    :goto_2
    if-ge v3, v5, :cond_3

    aget-object v8, p1, v3

    if-nez v8, :cond_3

    .line 231
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 233
    :cond_3
    if-lt v2, v4, :cond_5

    move v0, v7

    .line 234
    .local v0, "atEndOf1":Z
    :goto_3
    if-lt v3, v5, :cond_6

    move v1, v7

    .line 235
    .local v1, "atEndOf2":Z
    :goto_4
    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    move v6, v7

    .line 243
    :cond_4
    return v6

    .end local v0    # "atEndOf1":Z
    .end local v1    # "atEndOf2":Z
    :cond_5
    move v0, v6

    .line 233
    goto :goto_3

    .restart local v0    # "atEndOf1":Z
    :cond_6
    move v1, v6

    .line 234
    goto :goto_4

    .line 238
    .restart local v1    # "atEndOf2":Z
    :cond_7
    if-ne v0, v1, :cond_4

    .line 241
    aget-object v8, p0, v2

    aget-object v9, p1, v3

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 245
    add-int/lit8 v2, v2, 0x1

    .line 246
    add-int/lit8 v3, v3, 0x1

    .line 247
    goto :goto_1
.end method

.method private static equalsMapValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 527
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 528
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "keys and values in maps cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    instance-of v0, p1, [B

    if-eqz v0, :cond_2

    .line 532
    check-cast p0, [B

    .end local p0    # "a":Ljava/lang/Object;
    check-cast p0, [B

    check-cast p1, [B

    .end local p1    # "b":Ljava/lang/Object;
    check-cast p1, [B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    .line 534
    .restart local p0    # "a":Ljava/lang/Object;
    .restart local p1    # "b":Ljava/lang/Object;
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static hashCode(Ljava/util/Map;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)I"
        }
    .end annotation

    .prologue
    .line 538
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-nez p0, :cond_1

    .line 539
    const/4 v2, 0x0

    .line 546
    :cond_0
    return v2

    .line 541
    :cond_1
    const/4 v2, 0x0

    .line 542
    .local v2, "result":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 543
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/nano/InternalNano;->hashCodeForMap(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/nano/InternalNano;->hashCodeForMap(Ljava/lang/Object;)I

    move-result v4

    xor-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 545
    goto :goto_0
.end method

.method public static hashCode([D)I
    .locals 1
    .param p0, "field"    # [D

    .prologue
    .line 314
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([D)I

    move-result v0

    goto :goto_0
.end method

.method public static hashCode([F)I
    .locals 1
    .param p0, "field"    # [F

    .prologue
    .line 306
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    goto :goto_0
.end method

.method public static hashCode([I)I
    .locals 1
    .param p0, "field"    # [I

    .prologue
    .line 290
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    goto :goto_0
.end method

.method public static hashCode([J)I
    .locals 1
    .param p0, "field"    # [J

    .prologue
    .line 298
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    goto :goto_0
.end method

.method public static hashCode([Ljava/lang/Object;)I
    .locals 6
    .param p0, "field"    # [Ljava/lang/Object;

    .prologue
    .line 348
    const/4 v2, 0x0

    .line 349
    .local v2, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    if-nez p0, :cond_1

    const/4 v3, 0x0

    .local v3, "size":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 350
    aget-object v0, p0, v1

    .line 351
    .local v0, "element":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 352
    mul-int/lit8 v4, v2, 0x1f

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int v2, v4, v5

    .line 349
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "element":Ljava/lang/Object;
    .end local v3    # "size":I
    :cond_1
    array-length v3, p0

    goto :goto_0

    .line 355
    .restart local v3    # "size":I
    :cond_2
    return v2
.end method

.method public static hashCode([Z)I
    .locals 1
    .param p0, "field"    # [Z

    .prologue
    .line 322
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v0

    goto :goto_0
.end method

.method public static hashCode([[B)I
    .locals 6
    .param p0, "field"    # [[B

    .prologue
    .line 331
    const/4 v2, 0x0

    .line 332
    .local v2, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    if-nez p0, :cond_1

    const/4 v3, 0x0

    .local v3, "size":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 333
    aget-object v0, p0, v1

    .line 334
    .local v0, "element":[B
    if-eqz v0, :cond_0

    .line 335
    mul-int/lit8 v4, v2, 0x1f

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v5

    add-int v2, v4, v5

    .line 332
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "element":[B
    .end local v3    # "size":I
    :cond_1
    array-length v3, p0

    goto :goto_0

    .line 338
    .restart local v3    # "size":I
    :cond_2
    return v2
.end method

.method private static hashCodeForMap(Ljava/lang/Object;)I
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 550
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    .line 551
    check-cast p0, [B

    .end local p0    # "o":Ljava/lang/Object;
    check-cast p0, [B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    .line 553
    .restart local p0    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public static final mergeMapEntry(Lcom/google/protobuf/nano/CodedInputByteBufferNano;Ljava/util/Map;Lcom/google/protobuf/nano/MapFactories$MapFactory;IILjava/lang/Object;II)Ljava/util/Map;
    .locals 5
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .param p2, "mapFactory"    # Lcom/google/protobuf/nano/MapFactories$MapFactory;
    .param p3, "keyType"    # I
    .param p4, "valueType"    # I
    .param p6, "keyTag"    # I
    .param p7, "valueTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/nano/CodedInputByteBufferNano;",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lcom/google/protobuf/nano/MapFactories$MapFactory;",
            "IITV;II)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 416
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p5, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {p2, p1}, Lcom/google/protobuf/nano/MapFactories$MapFactory;->forMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 417
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v1

    .line 418
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 419
    .local v2, "oldLimit":I
    const/4 v0, 0x0

    .line 421
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 422
    .local v3, "tag":I
    if-nez v3, :cond_3

    .line 439
    :goto_1
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V

    .line 440
    invoke-virtual {p0, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    .line 442
    if-nez v0, :cond_1

    .line 444
    invoke-static {p3}, Lcom/google/protobuf/nano/InternalNano;->primitiveDefaultValue(I)Ljava/lang/Object;

    move-result-object v0

    .line 447
    :cond_1
    if-nez p5, :cond_2

    .line 449
    invoke-static {p4}, Lcom/google/protobuf/nano/InternalNano;->primitiveDefaultValue(I)Ljava/lang/Object;

    move-result-object p5

    .line 452
    :cond_2
    invoke-interface {p1, v0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    return-object p1

    .line 425
    :cond_3
    if-ne v3, p6, :cond_4

    .line 426
    invoke-virtual {p0, p3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readPrimitiveField(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, "key":Ljava/lang/Object;, "TK;"
    goto :goto_0

    .line 427
    .end local v0    # "key":Ljava/lang/Object;, "TK;"
    :cond_4
    if-ne v3, p7, :cond_6

    .line 428
    const/16 v4, 0xb

    if-ne p4, v4, :cond_5

    move-object v4, p5

    .line 429
    check-cast v4, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p0, v4}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 431
    :cond_5
    invoke-virtual {p0, p4}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readPrimitiveField(I)Ljava/lang/Object;

    move-result-object p5

    goto :goto_0

    .line 434
    :cond_6
    invoke-virtual {p0, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1
.end method

.method private static primitiveDefaultValue(I)Ljava/lang/Object;
    .locals 3
    .param p0, "type"    # I

    .prologue
    .line 358
    packed-switch p0, :pswitch_data_0

    .line 385
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2a

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a primitive type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :pswitch_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 381
    :goto_0
    return-object v0

    .line 362
    :pswitch_2
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    goto :goto_0

    .line 364
    :pswitch_3
    const-string v0, ""

    goto :goto_0

    .line 366
    :pswitch_4
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 368
    :pswitch_5
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 375
    :pswitch_6
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 381
    :pswitch_7
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 358
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static serializeMapField(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;Ljava/util/Map;III)V
    .locals 9
    .param p0, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .param p2, "number"    # I
    .param p3, "keyType"    # I
    .param p4, "valueType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/nano/CodedOutputByteBufferNano;",
            "Ljava/util/Map",
            "<TK;TV;>;III)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 460
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 461
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 462
    .local v3, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 463
    .local v4, "value":Ljava/lang/Object;, "TV;"
    if-eqz v3, :cond_0

    if-nez v4, :cond_1

    .line 464
    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "keys and values in maps cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 467
    :cond_1
    invoke-static {v8, p3, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFieldSize(IILjava/lang/Object;)I

    move-result v5

    invoke-static {v7, p4, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFieldSize(IILjava/lang/Object;)I

    move-result v6

    add-int v1, v5, v6

    .line 470
    .local v1, "entrySize":I
    invoke-virtual {p0, p2, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 471
    invoke-virtual {p0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 472
    invoke-virtual {p0, v8, p3, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeField(IILjava/lang/Object;)V

    .line 473
    invoke-virtual {p0, v7, p4, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeField(IILjava/lang/Object;)V

    goto :goto_0

    .line 475
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v1    # "entrySize":I
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "value":Ljava/lang/Object;, "TV;"
    :cond_2
    return-void
.end method

.method public static stringDefaultValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # Ljava/lang/String;

    .prologue
    .line 115
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 116
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Java VM does not support a standard character set."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

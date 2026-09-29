.class Lnet/oneplus/gallery3d/exif/ExifData;
.super Ljava/lang/Object;
.source "ExifData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExifData"

.field private static final USER_COMMENT_ASCII:[B

.field private static final USER_COMMENT_JIS:[B

.field private static final USER_COMMENT_UNICODE:[B


# instance fields
.field private final mByteOrder:Ljava/nio/ByteOrder;

.field private final mIfdDatas:[Lnet/oneplus/gallery3d/exif/IfdData;

.field private mStripBytes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mThumbnail:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 36
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lnet/oneplus/gallery3d/exif/ExifData;->USER_COMMENT_ASCII:[B

    .line 39
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lnet/oneplus/gallery3d/exif/ExifData;->USER_COMMENT_JIS:[B

    .line 42
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lnet/oneplus/gallery3d/exif/ExifData;->USER_COMMENT_UNICODE:[B

    return-void

    .line 36
    :array_0
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 39
    :array_1
    .array-data 1
        0x4at
        0x49t
        0x53t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 42
    :array_2
    .array-data 1
        0x55t
        0x4et
        0x49t
        0x43t
        0x4ft
        0x44t
        0x45t
        0x0t
    .end array-data
.end method

.method constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1
    .param p1, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [Lnet/oneplus/gallery3d/exif/IfdData;

    iput-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifData;->mIfdDatas:[Lnet/oneplus/gallery3d/exif/IfdData;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    .line 52
    iput-object p1, p0, Lnet/oneplus/gallery3d/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    .line 53
    return-void
.end method


# virtual methods
.method protected addIfdData(Lnet/oneplus/gallery3d/exif/IfdData;)V
    .locals 2
    .param p1, "data"    # Lnet/oneplus/gallery3d/exif/IfdData;

    .prologue
    .line 139
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifData;->mIfdDatas:[Lnet/oneplus/gallery3d/exif/IfdData;

    invoke-virtual {p1}, Lnet/oneplus/gallery3d/exif/IfdData;->getId()I

    move-result v1

    aput-object p1, v0, v1

    .line 140
    return-void
.end method

.method protected addTag(Lnet/oneplus/gallery3d/exif/ExifTag;)Lnet/oneplus/gallery3d/exif/ExifTag;
    .locals 2
    .param p1, "tag"    # Lnet/oneplus/gallery3d/exif/ExifTag;

    .prologue
    .line 169
    if-eqz p1, :cond_0

    .line 170
    invoke-virtual {p1}, Lnet/oneplus/gallery3d/exif/ExifTag;->getIfd()I

    move-result v0

    .line 171
    .local v0, "ifd":I
    invoke-virtual {p0, p1, v0}, Lnet/oneplus/gallery3d/exif/ExifData;->addTag(Lnet/oneplus/gallery3d/exif/ExifTag;I)Lnet/oneplus/gallery3d/exif/ExifTag;

    move-result-object v1

    .line 173
    .end local v0    # "ifd":I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected addTag(Lnet/oneplus/gallery3d/exif/ExifTag;I)Lnet/oneplus/gallery3d/exif/ExifTag;
    .locals 2
    .param p1, "tag"    # Lnet/oneplus/gallery3d/exif/ExifTag;
    .param p2, "ifdId"    # I

    .prologue
    .line 181
    if-eqz p1, :cond_0

    invoke-static {p2}, Lnet/oneplus/gallery3d/exif/ExifTag;->isValidIfd(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {p0, p2}, Lnet/oneplus/gallery3d/exif/ExifData;->getOrCreateIfdData(I)Lnet/oneplus/gallery3d/exif/IfdData;

    move-result-object v0

    .line 183
    .local v0, "ifdData":Lnet/oneplus/gallery3d/exif/IfdData;
    invoke-virtual {v0, p1}, Lnet/oneplus/gallery3d/exif/IfdData;->setTag(Lnet/oneplus/gallery3d/exif/ExifTag;)Lnet/oneplus/gallery3d/exif/ExifTag;

    move-result-object v1

    .line 185
    .end local v0    # "ifdData":Lnet/oneplus/gallery3d/exif/IfdData;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected clearThumbnailAndStrips()V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifData;->mThumbnail:[B

    .line 190
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 191
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 318
    if-ne p0, p1, :cond_0

    move v4, v6

    .line 345
    :goto_0
    return v4

    .line 321
    :cond_0
    if-nez p1, :cond_1

    move v4, v7

    .line 322
    goto :goto_0

    .line 324
    :cond_1
    instance-of v4, p1, Lnet/oneplus/gallery3d/exif/ExifData;

    if-eqz v4, :cond_8

    move-object v0, p1

    .line 325
    check-cast v0, Lnet/oneplus/gallery3d/exif/ExifData;

    .line 326
    .local v0, "data":Lnet/oneplus/gallery3d/exif/ExifData;
    iget-object v4, v0, Lnet/oneplus/gallery3d/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    iget-object v5, p0, Lnet/oneplus/gallery3d/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    if-ne v4, v5, :cond_2

    iget-object v4, v0, Lnet/oneplus/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    .line 327
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lnet/oneplus/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_2

    iget-object v4, v0, Lnet/oneplus/gallery3d/exif/ExifData;->mThumbnail:[B

    iget-object v5, p0, Lnet/oneplus/gallery3d/exif/ExifData;->mThumbnail:[B

    .line 328
    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    move v4, v7

    .line 329
    goto :goto_0

    .line 331
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lnet/oneplus/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 332
    iget-object v4, v0, Lnet/oneplus/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    iget-object v5, p0, Lnet/oneplus/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_4

    move v4, v7

    .line 333
    goto :goto_0

    .line 331
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 336
    :cond_5
    const/4 v1, 0x0

    :goto_2
    const/4 v4, 0x5

    if-ge v1, v4, :cond_7

    .line 337
    invoke-virtual {v0, v1}, Lnet/oneplus/gallery3d/exif/ExifData;->getIfdData(I)Lnet/oneplus/gallery3d/exif/IfdData;

    move-result-object v2

    .line 338
    .local v2, "ifd1":Lnet/oneplus/gallery3d/exif/IfdData;
    invoke-virtual {p0, v1}, Lnet/oneplus/gallery3d/exif/ExifData;->getIfdData(I)Lnet/oneplus/gallery3d/exif/IfdData;

    move-result-object v3

    .line 339
    .local v3, "ifd2":Lnet/oneplus/gallery3d/exif/IfdData;
    if-eq v2, v3, :cond_6

    if-eqz v2, :cond_6

    invoke-virtual {v2, v3}, Lnet/oneplus/gallery3d/exif/IfdData;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    move v4, v7

    .line 340
    goto :goto_0

    .line 336
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v2    # "ifd1":Lnet/oneplus/gallery3d/exif/IfdData;
    .end local v3    # "ifd2":Lnet/oneplus/gallery3d/exif/IfdData;
    :cond_7
    move v4, v6

    .line 343
    goto :goto_0

    .end local v0    # "data":Lnet/oneplus/gallery3d/exif/ExifData;
    .end local v1    # "i":I
    :cond_8
    move v4, v7

    .line 345
    goto :goto_0
.end method

.method protected getAllTags()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/gallery3d/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 256
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/gallery3d/exif/ExifTag;>;"
    iget-object v7, p0, Lnet/oneplus/gallery3d/exif/ExifData;->mIfdDatas:[Lnet/oneplus/gallery3d/exif/IfdData;

    array-length v8, v7

    move v6, v5

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v0, v7, v6

    .line 258
    .local v0, "d":Lnet/oneplus/gallery3d/exif/IfdData;
    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0}, Lnet/oneplus/gallery3d/exif/IfdData;->getAllTags()[Lnet/oneplus/gallery3d/exif/ExifTag;

    move-result-object v3

    .line 260
    .local v3, "tags":[Lnet/oneplus/gallery3d/exif/ExifTag;
    if-eqz v3, :cond_0

    .line 261
    array-length v9, v3

    move v4, v5

    :goto_1
    if-ge v4, v9, :cond_0

    aget-object v2, v3, v4

    .line 262
    .local v2, "t":Lnet/oneplus/gallery3d/exif/ExifTag;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 257
    .end local v2    # "t":Lnet/oneplus/gallery3d/exif/ExifTag;
    .end local v3    # "tags":[Lnet/oneplus/gallery3d/exif/ExifTag;
    :cond_0
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    .line 267
    .end local v0    # "d":Lnet/oneplus/gallery3d/exif/IfdData;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 268
    const/4 v1, 0x0

    .line 270
    .end local v1    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/gallery3d/exif/ExifTag;>;"
    :cond_2
    return-object v1
.end method

.method protected getAllTagsForIfd(I)Ljava/util/List;
    .locals 7
    .param p1, "ifd"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/gallery3d/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 278
    iget-object v5, p0, Lnet/oneplus/gallery3d/exif/ExifData;->mIfdDatas:[Lnet/oneplus/gallery3d/exif/IfdData;

    aget-object v0, v5, p1

    .line 279
    .local v0, "d":Lnet/oneplus/gallery3d/exif/IfdData;
    if-nez v0, :cond_1

    move-object v1, v4

    .line 293
    :cond_0
    :goto_0
    return-object v1

    .line 282
    :cond_1
    invoke-virtual {v0}, Lnet/oneplus/gallery3d/exif/IfdData;->getAllTags()[Lnet/oneplus/gallery3d/exif/ExifTag;

    move-result-object v3

    .line 283
    .local v3, "tags":[Lnet/oneplus/gallery3d/exif/ExifTag;
    if-nez v3, :cond_2

    move-object v1, v4

    .line 284
    goto :goto_0

    .line 286
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    array-length v5, v3

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 287
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/gallery3d/exif/ExifTag;>;"
    array-length v6, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v2, v3, v5

    .line 288
    .local v2, "t":Lnet/oneplus/gallery3d/exif/ExifTag;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 290
    .end local v2    # "t":Lnet/oneplus/gallery3d/exif/ExifTag;
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    move-object v1, v4

    .line 291
    goto :goto_0
.end method

.method protected getAllTagsForTagId(S)Ljava/util/List;
    .locals 6
    .param p1, "tag"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/gallery3d/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/gallery3d/exif/ExifTag;>;"
    iget-object v4, p0, Lnet/oneplus/gallery3d/exif/ExifData;->mIfdDatas:[Lnet/oneplus/gallery3d/exif/IfdData;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v4, v3

    .line 303
    .local v0, "d":Lnet/oneplus/gallery3d/exif/IfdData;
    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0, p1}, Lnet/oneplus/gallery3d/exif/IfdData;->getTag(S)Lnet/oneplus/gallery3d/exif/ExifTag;

    move-result-object v2

    .line 305
    .local v2, "t":Lnet/oneplus/gallery3d/exif/ExifTag;
    if-eqz v2, :cond_0

    .line 306
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    .end local v2    # "t":Lnet/oneplus/gallery3d/exif/ExifTag;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 310
    .end local v0    # "d":Lnet/oneplus/gallery3d/exif/IfdData;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 311
    const/4 v1, 0x0

    .line 313
    .end local v1    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/gallery3d/exif/ExifTag;>;"
    :cond_2
    return-object v1
.end method

.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method protected getCompressedThumbnail()[B
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifData;->mThumbnail:[B

    return-object v0
.end method

.method protected getIfdData(I)Lnet/oneplus/gallery3d/exif/IfdData;
    .locals 1
    .param p1, "ifdId"    # I

    .prologue
    .line 128
    invoke-static {p1}, Lnet/oneplus/gallery3d/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifData;->mIfdDatas:[Lnet/oneplus/gallery3d/exif/IfdData;

    aget-object v0, v0, p1

    .line 131
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getOrCreateIfdData(I)Lnet/oneplus/gallery3d/exif/IfdData;
    .locals 2
    .param p1, "ifdId"    # I

    .prologue
    .line 147
    iget-object v1, p0, Lnet/oneplus/gallery3d/exif/ExifData;->mIfdDatas:[Lnet/oneplus/gallery3d/exif/IfdData;

    aget-object v0, v1, p1

    .line 148
    .local v0, "ifdData":Lnet/oneplus/gallery3d/exif/IfdData;
    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lnet/oneplus/gallery3d/exif/IfdData;

    .end local v0    # "ifdData":Lnet/oneplus/gallery3d/exif/IfdData;
    invoke-direct {v0, p1}, Lnet/oneplus/gallery3d/exif/IfdData;-><init>(I)V

    .line 150
    .restart local v0    # "ifdData":Lnet/oneplus/gallery3d/exif/IfdData;
    iget-object v1, p0, Lnet/oneplus/gallery3d/exif/ExifData;->mIfdDatas:[Lnet/oneplus/gallery3d/exif/IfdData;

    aput-object v0, v1, p1

    .line 152
    :cond_0
    return-object v0
.end method

.method protected getStrip(I)[B
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method protected getStripCount()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getTag(SI)Lnet/oneplus/gallery3d/exif/ExifTag;
    .locals 2
    .param p1, "tag"    # S
    .param p2, "ifd"    # I

    .prologue
    .line 160
    iget-object v1, p0, Lnet/oneplus/gallery3d/exif/ExifData;->mIfdDatas:[Lnet/oneplus/gallery3d/exif/IfdData;

    aget-object v0, v1, p2

    .line 161
    .local v0, "ifdData":Lnet/oneplus/gallery3d/exif/IfdData;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lnet/oneplus/gallery3d/exif/IfdData;->getTag(S)Lnet/oneplus/gallery3d/exif/ExifTag;

    move-result-object v1

    goto :goto_0
.end method

.method protected getUserComment()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x8

    .line 217
    iget-object v6, p0, Lnet/oneplus/gallery3d/exif/ExifData;->mIfdDatas:[Lnet/oneplus/gallery3d/exif/IfdData;

    aget-object v3, v6, v8

    .line 218
    .local v3, "ifdData":Lnet/oneplus/gallery3d/exif/IfdData;
    if-nez v3, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-object v5

    .line 221
    :cond_1
    sget v6, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_USER_COMMENT:I

    invoke-static {v6}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v6

    invoke-virtual {v3, v6}, Lnet/oneplus/gallery3d/exif/IfdData;->getTag(S)Lnet/oneplus/gallery3d/exif/ExifTag;

    move-result-object v4

    .line 222
    .local v4, "tag":Lnet/oneplus/gallery3d/exif/ExifTag;
    if-eqz v4, :cond_0

    .line 225
    invoke-virtual {v4}, Lnet/oneplus/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v6

    if-lt v6, v7, :cond_0

    .line 229
    invoke-virtual {v4}, Lnet/oneplus/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v6

    new-array v0, v6, [B

    .line 230
    .local v0, "buf":[B
    invoke-virtual {v4, v0}, Lnet/oneplus/gallery3d/exif/ExifTag;->getBytes([B)V

    .line 232
    new-array v1, v7, [B

    .line 233
    .local v1, "code":[B
    invoke-static {v0, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    :try_start_0
    sget-object v6, Lnet/oneplus/gallery3d/exif/ExifData;->USER_COMMENT_ASCII:[B

    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 237
    new-instance v6, Ljava/lang/String;

    const/16 v7, 0x8

    array-length v8, v0

    add-int/lit8 v8, v8, -0x8

    const-string v9, "US-ASCII"

    invoke-direct {v6, v0, v7, v8, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v5, v6

    goto :goto_0

    .line 238
    :cond_2
    sget-object v6, Lnet/oneplus/gallery3d/exif/ExifData;->USER_COMMENT_JIS:[B

    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 239
    new-instance v6, Ljava/lang/String;

    const/16 v7, 0x8

    array-length v8, v0

    add-int/lit8 v8, v8, -0x8

    const-string v9, "EUC-JP"

    invoke-direct {v6, v0, v7, v8, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v5, v6

    goto :goto_0

    .line 240
    :cond_3
    sget-object v6, Lnet/oneplus/gallery3d/exif/ExifData;->USER_COMMENT_UNICODE:[B

    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 241
    new-instance v6, Ljava/lang/String;

    const/16 v7, 0x8

    array-length v8, v0

    add-int/lit8 v8, v8, -0x8

    const-string v9, "UTF-16"

    invoke-direct {v6, v0, v7, v8, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    goto :goto_0

    .line 245
    :catch_0
    move-exception v2

    .line 246
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string v6, "ExifData"

    const-string v7, "Failed to decode the user comment"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected hasCompressedThumbnail()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifData;->mThumbnail:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasUncompressedStrip()Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected removeTag(SI)V
    .locals 2
    .param p1, "tagId"    # S
    .param p2, "ifdId"    # I

    .prologue
    .line 205
    iget-object v1, p0, Lnet/oneplus/gallery3d/exif/ExifData;->mIfdDatas:[Lnet/oneplus/gallery3d/exif/IfdData;

    aget-object v0, v1, p2

    .line 206
    .local v0, "ifdData":Lnet/oneplus/gallery3d/exif/IfdData;
    if-nez v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-virtual {v0, p1}, Lnet/oneplus/gallery3d/exif/IfdData;->removeTag(S)V

    goto :goto_0
.end method

.method protected removeThumbnailData()V
    .locals 3

    .prologue
    .line 197
    invoke-virtual {p0}, Lnet/oneplus/gallery3d/exif/ExifData;->clearThumbnailAndStrips()V

    .line 198
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifData;->mIfdDatas:[Lnet/oneplus/gallery3d/exif/IfdData;

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 199
    return-void
.end method

.method protected setCompressedThumbnail([B)V
    .locals 0
    .param p1, "thumbnail"    # [B

    .prologue
    .line 69
    iput-object p1, p0, Lnet/oneplus/gallery3d/exif/ExifData;->mThumbnail:[B

    .line 70
    return-void
.end method

.method protected setStripBytes(I[B)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "strip"    # [B

    .prologue
    .line 83
    iget-object v1, p0, Lnet/oneplus/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 84
    iget-object v1, p0, Lnet/oneplus/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 91
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v1, p0, Lnet/oneplus/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_1

    .line 87
    iget-object v1, p0, Lnet/oneplus/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 89
    :cond_1
    iget-object v1, p0, Lnet/oneplus/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

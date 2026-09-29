.class Lnet/oneplus/h2launcher/crop/util/ImageHeaderParser$StreamReader;
.super Ljava/lang/Object;
.source "ImageHeaderParser.java"

# interfaces
.implements Lnet/oneplus/h2launcher/crop/util/ImageHeaderParser$Reader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/crop/util/ImageHeaderParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StreamReader"
.end annotation


# instance fields
.field private final is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iput-object p1, p0, Lnet/oneplus/h2launcher/crop/util/ImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;

    .line 326
    return-void
.end method


# virtual methods
.method public getUInt16()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/util/ImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/util/ImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public getUInt8()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/util/ImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public read([BI)I
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 367
    move v1, p2

    .line 369
    .local v1, "toRead":I
    :goto_0
    if-lez v1, :cond_0

    iget-object v2, p0, Lnet/oneplus/h2launcher/crop/util/ImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;

    sub-int v3, p2, v1

    invoke-virtual {v2, p1, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .local v0, "read":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 370
    sub-int/2addr v1, v0

    goto :goto_0

    .line 372
    .end local v0    # "read":I
    :cond_0
    sub-int v2, p2, v1

    return v2
.end method

.method public skip(J)J
    .locals 11
    .param p1, "total"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 340
    cmp-long v3, p1, v6

    if-gez v3, :cond_0

    .line 362
    :goto_0
    return-wide v6

    .line 344
    :cond_0
    move-wide v4, p1

    .line 345
    .local v4, "toSkip":J
    :goto_1
    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 346
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/util/ImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;

    invoke-virtual {v3, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 347
    .local v0, "skipped":J
    cmp-long v3, v0, v6

    if-lez v3, :cond_1

    .line 348
    sub-long/2addr v4, v0

    goto :goto_1

    .line 354
    :cond_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/util/ImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 355
    .local v2, "testEofByte":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 362
    .end local v0    # "skipped":J
    .end local v2    # "testEofByte":I
    :cond_2
    sub-long v6, p1, v4

    goto :goto_0

    .line 358
    .restart local v0    # "skipped":J
    .restart local v2    # "testEofByte":I
    :cond_3
    const-wide/16 v8, 0x1

    sub-long/2addr v4, v8

    goto :goto_1
.end method

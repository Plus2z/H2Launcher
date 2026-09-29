.class public final Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BackupProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/backup/BackupProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceProfieData"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;


# instance fields
.field public allappsRank:I

.field public desktopCols:F

.field public desktopRows:F

.field public hotseatCount:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 270
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->clear()Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;

    .line 271
    return-void
.end method

.method public static emptyArray()[Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;
    .locals 2

    .prologue
    .line 246
    sget-object v0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->_emptyArray:[Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;

    if-nez v0, :cond_1

    .line 247
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 249
    :try_start_0
    sget-object v0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->_emptyArray:[Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;

    if-nez v0, :cond_0

    .line 250
    const/4 v0, 0x0

    new-array v0, v0, [Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;

    sput-object v0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->_emptyArray:[Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;

    .line 252
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :cond_1
    sget-object v0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->_emptyArray:[Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;

    return-object v0

    .line 252
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    new-instance v0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;-><init>()V

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 343
    new-instance v0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;

    return-object v0
.end method


# virtual methods
.method public clear()Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 274
    iput v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->desktopRows:F

    .line 275
    iput v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->desktopCols:F

    .line 276
    iput v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->hotseatCount:F

    .line 277
    const/4 v0, 0x0

    iput v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->allappsRank:I

    .line 278
    const/4 v0, -0x1

    iput v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->cachedSize:I

    .line 279
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 294
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 295
    .local v0, "size":I
    const/4 v1, 0x1

    iget v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->desktopRows:F

    .line 296
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 297
    const/4 v1, 0x2

    iget v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->desktopCols:F

    .line 298
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 299
    const/4 v1, 0x3

    iget v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->hotseatCount:F

    .line 300
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 301
    const/4 v1, 0x4

    iget v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->allappsRank:I

    .line 302
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 303
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 312
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 316
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 317
    :sswitch_0
    return-object p0

    .line 322
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->desktopRows:F

    goto :goto_0

    .line 326
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->desktopCols:F

    goto :goto_0

    .line 330
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->hotseatCount:F

    goto :goto_0

    .line 334
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->allappsRank:I

    goto :goto_0

    .line 312
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    const/4 v0, 0x1

    iget v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->desktopRows:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 286
    const/4 v0, 0x2

    iget v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->desktopCols:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 287
    const/4 v0, 0x3

    iget v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->hotseatCount:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 288
    const/4 v0, 0x4

    iget v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->allappsRank:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 289
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 290
    return-void
.end method

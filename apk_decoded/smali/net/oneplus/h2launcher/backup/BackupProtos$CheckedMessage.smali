.class public final Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BackupProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/backup/BackupProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CheckedMessage"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;


# instance fields
.field public checksum:J

.field public payload:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 173
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;->clear()Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;

    .line 174
    return-void
.end method

.method public static emptyArray()[Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;
    .locals 2

    .prologue
    .line 155
    sget-object v0, Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;->_emptyArray:[Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;

    if-nez v0, :cond_1

    .line 156
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    :try_start_0
    sget-object v0, Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;->_emptyArray:[Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;

    if-nez v0, :cond_0

    .line 159
    const/4 v0, 0x0

    new-array v0, v0, [Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;

    sput-object v0, Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;->_emptyArray:[Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;

    .line 161
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_1
    sget-object v0, Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;->_emptyArray:[Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;

    return-object v0

    .line 161
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    new-instance v0, Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;-><init>()V

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 230
    new-instance v0, Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;

    return-object v0
.end method


# virtual methods
.method public clear()Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;
    .locals 2

    .prologue
    .line 177
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;->payload:[B

    .line 178
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;->checksum:J

    .line 179
    const/4 v0, -0x1

    iput v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;->cachedSize:I

    .line 180
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 193
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 194
    .local v0, "size":I
    const/4 v1, 0x1

    iget-object v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;->payload:[B

    .line 195
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 196
    const/4 v1, 0x2

    iget-wide v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;->checksum:J

    .line 197
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 198
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
    .line 149
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 207
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 211
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    :sswitch_0
    return-object p0

    .line 217
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;->payload:[B

    goto :goto_0

    .line 221
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;->checksum:J

    goto :goto_0

    .line 207
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    const/4 v0, 0x1

    iget-object v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;->payload:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 187
    const/4 v0, 0x2

    iget-wide v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$CheckedMessage;->checksum:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 188
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 189
    return-void
.end method

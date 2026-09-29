.class public final Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BackupProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/backup/BackupProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Resource"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;


# instance fields
.field public data:[B

.field public dpi:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1049
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1050
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;->clear()Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    .line 1051
    return-void
.end method

.method public static emptyArray()[Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;
    .locals 2

    .prologue
    .line 1032
    sget-object v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;->_emptyArray:[Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    if-nez v0, :cond_1

    .line 1033
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1035
    :try_start_0
    sget-object v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;->_emptyArray:[Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    if-nez v0, :cond_0

    .line 1036
    const/4 v0, 0x0

    new-array v0, v0, [Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    sput-object v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;->_emptyArray:[Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    .line 1038
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1040
    :cond_1
    sget-object v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;->_emptyArray:[Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    return-object v0

    .line 1038
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1113
    new-instance v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;-><init>()V

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1107
    new-instance v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    return-object v0
.end method


# virtual methods
.method public clear()Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;
    .locals 1

    .prologue
    .line 1054
    const/4 v0, 0x0

    iput v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;->dpi:I

    .line 1055
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;->data:[B

    .line 1056
    const/4 v0, -0x1

    iput v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;->cachedSize:I

    .line 1057
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 1070
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 1071
    .local v0, "size":I
    const/4 v1, 0x1

    iget v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;->dpi:I

    .line 1072
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1073
    const/4 v1, 0x2

    iget-object v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;->data:[B

    .line 1074
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 1075
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
    .line 1026
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1083
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1084
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1088
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1089
    :sswitch_0
    return-object p0

    .line 1094
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;->dpi:I

    goto :goto_0

    .line 1098
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;->data:[B

    goto :goto_0

    .line 1084
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 1063
    const/4 v0, 0x1

    iget v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;->dpi:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1064
    const/4 v0, 0x2

    iget-object v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;->data:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 1065
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1066
    return-void
.end method

.class public final Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BackupProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/backup/BackupProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Screen"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;


# instance fields
.field public id:J

.field public rank:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 954
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 955
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;->clear()Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;

    .line 956
    return-void
.end method

.method public static emptyArray()[Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;
    .locals 2

    .prologue
    .line 937
    sget-object v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;->_emptyArray:[Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;

    if-nez v0, :cond_1

    .line 938
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 940
    :try_start_0
    sget-object v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;->_emptyArray:[Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;

    if-nez v0, :cond_0

    .line 941
    const/4 v0, 0x0

    new-array v0, v0, [Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;

    sput-object v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;->_emptyArray:[Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;

    .line 943
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 945
    :cond_1
    sget-object v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;->_emptyArray:[Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;

    return-object v0

    .line 943
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1022
    new-instance v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;-><init>()V

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1016
    new-instance v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;

    return-object v0
.end method


# virtual methods
.method public clear()Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;
    .locals 2

    .prologue
    .line 959
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;->id:J

    .line 960
    const/4 v0, 0x0

    iput v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;->rank:I

    .line 961
    const/4 v0, -0x1

    iput v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;->cachedSize:I

    .line 962
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 977
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 978
    .local v0, "size":I
    const/4 v1, 0x1

    iget-wide v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;->id:J

    .line 979
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 980
    iget v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;->rank:I

    if-eqz v1, :cond_0

    .line 981
    const/4 v1, 0x2

    iget v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;->rank:I

    .line 982
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 984
    :cond_0
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
    .line 931
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 992
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 993
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 997
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 998
    :sswitch_0
    return-object p0

    .line 1003
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;->id:J

    goto :goto_0

    .line 1007
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;->rank:I

    goto :goto_0

    .line 993
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 968
    const/4 v0, 0x1

    iget-wide v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;->id:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 969
    iget v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;->rank:I

    if-eqz v0, :cond_0

    .line 970
    const/4 v0, 0x2

    iget v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Screen;->rank:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 972
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 973
    return-void
.end method

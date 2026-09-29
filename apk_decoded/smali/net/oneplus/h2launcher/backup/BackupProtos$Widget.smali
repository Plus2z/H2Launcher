.class public final Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BackupProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/backup/BackupProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Widget"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;


# instance fields
.field public configure:Z

.field public icon:Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

.field public label:Ljava/lang/String;

.field public minSpanX:I

.field public minSpanY:I

.field public preview:Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

.field public provider:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1155
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1156
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->clear()Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;

    .line 1157
    return-void
.end method

.method public static emptyArray()[Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;
    .locals 2

    .prologue
    .line 1123
    sget-object v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->_emptyArray:[Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;

    if-nez v0, :cond_1

    .line 1124
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1126
    :try_start_0
    sget-object v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->_emptyArray:[Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;

    if-nez v0, :cond_0

    .line 1127
    const/4 v0, 0x0

    new-array v0, v0, [Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;

    sput-object v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->_emptyArray:[Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;

    .line 1129
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1131
    :cond_1
    sget-object v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->_emptyArray:[Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;

    return-object v0

    .line 1129
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1289
    new-instance v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;-><init>()V

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1283
    new-instance v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;

    return-object v0
.end method


# virtual methods
.method public clear()Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 1160
    const-string v0, ""

    iput-object v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->provider:Ljava/lang/String;

    .line 1161
    const-string v0, ""

    iput-object v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->label:Ljava/lang/String;

    .line 1162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->configure:Z

    .line 1163
    iput-object v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->icon:Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    .line 1164
    iput-object v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->preview:Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    .line 1165
    iput v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->minSpanX:I

    .line 1166
    iput v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->minSpanY:I

    .line 1167
    const/4 v0, -0x1

    iput v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->cachedSize:I

    .line 1168
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 1198
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 1199
    .local v0, "size":I
    const/4 v1, 0x1

    iget-object v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->provider:Ljava/lang/String;

    .line 1200
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1201
    iget-object v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->label:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1202
    iget-object v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->label:Ljava/lang/String;

    .line 1203
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1205
    :cond_0
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->configure:Z

    if-eqz v1, :cond_1

    .line 1206
    const/4 v1, 0x3

    iget-boolean v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->configure:Z

    .line 1207
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1209
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->icon:Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    if-eqz v1, :cond_2

    .line 1210
    const/4 v1, 0x4

    iget-object v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->icon:Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    .line 1211
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1213
    :cond_2
    iget-object v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->preview:Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    if-eqz v1, :cond_3

    .line 1214
    const/4 v1, 0x5

    iget-object v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->preview:Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    .line 1215
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1217
    :cond_3
    iget v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->minSpanX:I

    if-eq v1, v3, :cond_4

    .line 1218
    const/4 v1, 0x6

    iget v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->minSpanX:I

    .line 1219
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1221
    :cond_4
    iget v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->minSpanY:I

    if-eq v1, v3, :cond_5

    .line 1222
    const/4 v1, 0x7

    iget v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->minSpanY:I

    .line 1223
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1225
    :cond_5
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
    .line 1117
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1233
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1234
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1238
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1239
    :sswitch_0
    return-object p0

    .line 1244
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->provider:Ljava/lang/String;

    goto :goto_0

    .line 1248
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->label:Ljava/lang/String;

    goto :goto_0

    .line 1252
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->configure:Z

    goto :goto_0

    .line 1256
    :sswitch_4
    iget-object v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->icon:Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    if-nez v1, :cond_1

    .line 1257
    new-instance v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    invoke-direct {v1}, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->icon:Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    .line 1259
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->icon:Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1263
    :sswitch_5
    iget-object v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->preview:Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    if-nez v1, :cond_2

    .line 1264
    new-instance v1, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    invoke-direct {v1}, Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->preview:Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    .line 1266
    :cond_2
    iget-object v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->preview:Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1270
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->minSpanX:I

    goto :goto_0

    .line 1274
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->minSpanY:I

    goto :goto_0

    .line 1234
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 1174
    const/4 v0, 0x1

    iget-object v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->provider:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1175
    iget-object v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->label:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1176
    iget-object v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->label:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1178
    :cond_0
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->configure:Z

    if-eqz v0, :cond_1

    .line 1179
    const/4 v0, 0x3

    iget-boolean v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->configure:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1181
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->icon:Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    if-eqz v0, :cond_2

    .line 1182
    const/4 v0, 0x4

    iget-object v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->icon:Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1184
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->preview:Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    if-eqz v0, :cond_3

    .line 1185
    const/4 v0, 0x5

    iget-object v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->preview:Lnet/oneplus/h2launcher/backup/BackupProtos$Resource;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1187
    :cond_3
    iget v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->minSpanX:I

    if-eq v0, v2, :cond_4

    .line 1188
    const/4 v0, 0x6

    iget v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->minSpanX:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1190
    :cond_4
    iget v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->minSpanY:I

    if-eq v0, v2, :cond_5

    .line 1191
    const/4 v0, 0x7

    iget v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Widget;->minSpanY:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1193
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1194
    return-void
.end method

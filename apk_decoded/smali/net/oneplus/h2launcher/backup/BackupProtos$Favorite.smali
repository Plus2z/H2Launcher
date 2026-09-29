.class public final Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BackupProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/backup/BackupProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Favorite"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite$TargetType;
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;


# instance fields
.field public appWidgetId:I

.field public appWidgetProvider:Ljava/lang/String;

.field public cellX:I

.field public cellY:I

.field public container:I

.field public displayMode:I

.field public icon:[B

.field public iconPackage:Ljava/lang/String;

.field public iconResource:Ljava/lang/String;

.field public iconType:I

.field public id:J

.field public intent:Ljava/lang/String;

.field public itemType:I

.field public rank:I

.field public screen:I

.field public spanX:I

.field public spanY:I

.field public targetType:I

.field public title:Ljava/lang/String;

.field public uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 636
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 637
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->clear()Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;

    .line 638
    return-void
.end method

.method public static emptyArray()[Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;
    .locals 2

    .prologue
    .line 565
    sget-object v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->_emptyArray:[Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;

    if-nez v0, :cond_1

    .line 566
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 568
    :try_start_0
    sget-object v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->_emptyArray:[Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;

    if-nez v0, :cond_0

    .line 569
    const/4 v0, 0x0

    new-array v0, v0, [Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;

    sput-object v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->_emptyArray:[Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;

    .line 571
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    :cond_1
    sget-object v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->_emptyArray:[Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;

    return-object v0

    .line 571
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 927
    new-instance v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;-><init>()V

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 921
    new-instance v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;

    return-object v0
.end method


# virtual methods
.method public clear()Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 641
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->id:J

    .line 642
    iput v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->itemType:I

    .line 643
    const-string v0, ""

    iput-object v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->title:Ljava/lang/String;

    .line 644
    iput v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->container:I

    .line 645
    iput v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->screen:I

    .line 646
    iput v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->cellX:I

    .line 647
    iput v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->cellY:I

    .line 648
    iput v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->spanX:I

    .line 649
    iput v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->spanY:I

    .line 650
    iput v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->displayMode:I

    .line 651
    iput v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->appWidgetId:I

    .line 652
    const-string v0, ""

    iput-object v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->appWidgetProvider:Ljava/lang/String;

    .line 653
    const-string v0, ""

    iput-object v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->intent:Ljava/lang/String;

    .line 654
    const-string v0, ""

    iput-object v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->uri:Ljava/lang/String;

    .line 655
    iput v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->iconType:I

    .line 656
    const-string v0, ""

    iput-object v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    .line 657
    const-string v0, ""

    iput-object v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    .line 658
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->icon:[B

    .line 659
    iput v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->targetType:I

    .line 660
    iput v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->rank:I

    .line 661
    const/4 v0, -0x1

    iput v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->cachedSize:I

    .line 662
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 729
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 730
    .local v0, "size":I
    const/4 v1, 0x1

    iget-wide v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->id:J

    .line 731
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 732
    const/4 v1, 0x2

    iget v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->itemType:I

    .line 733
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 734
    iget-object v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->title:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 735
    const/4 v1, 0x3

    iget-object v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->title:Ljava/lang/String;

    .line 736
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 738
    :cond_0
    iget v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->container:I

    if-eqz v1, :cond_1

    .line 739
    const/4 v1, 0x4

    iget v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->container:I

    .line 740
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 742
    :cond_1
    iget v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->screen:I

    if-eqz v1, :cond_2

    .line 743
    const/4 v1, 0x5

    iget v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->screen:I

    .line 744
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 746
    :cond_2
    iget v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->cellX:I

    if-eqz v1, :cond_3

    .line 747
    const/4 v1, 0x6

    iget v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->cellX:I

    .line 748
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 750
    :cond_3
    iget v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->cellY:I

    if-eqz v1, :cond_4

    .line 751
    const/4 v1, 0x7

    iget v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->cellY:I

    .line 752
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 754
    :cond_4
    iget v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->spanX:I

    if-eqz v1, :cond_5

    .line 755
    const/16 v1, 0x8

    iget v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->spanX:I

    .line 756
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 758
    :cond_5
    iget v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->spanY:I

    if-eqz v1, :cond_6

    .line 759
    const/16 v1, 0x9

    iget v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->spanY:I

    .line 760
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 762
    :cond_6
    iget v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->displayMode:I

    if-eqz v1, :cond_7

    .line 763
    const/16 v1, 0xa

    iget v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->displayMode:I

    .line 764
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 766
    :cond_7
    iget v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->appWidgetId:I

    if-eqz v1, :cond_8

    .line 767
    const/16 v1, 0xb

    iget v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->appWidgetId:I

    .line 768
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 770
    :cond_8
    iget-object v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->appWidgetProvider:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 771
    const/16 v1, 0xc

    iget-object v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->appWidgetProvider:Ljava/lang/String;

    .line 772
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 774
    :cond_9
    iget-object v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->intent:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 775
    const/16 v1, 0xd

    iget-object v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->intent:Ljava/lang/String;

    .line 776
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 778
    :cond_a
    iget-object v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->uri:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 779
    const/16 v1, 0xe

    iget-object v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->uri:Ljava/lang/String;

    .line 780
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 782
    :cond_b
    iget v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->iconType:I

    if-eqz v1, :cond_c

    .line 783
    const/16 v1, 0xf

    iget v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->iconType:I

    .line 784
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 786
    :cond_c
    iget-object v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 787
    const/16 v1, 0x10

    iget-object v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    .line 788
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 790
    :cond_d
    iget-object v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 791
    const/16 v1, 0x11

    iget-object v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    .line 792
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 794
    :cond_e
    iget-object v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->icon:[B

    sget-object v2, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_f

    .line 795
    const/16 v1, 0x12

    iget-object v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->icon:[B

    .line 796
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 798
    :cond_f
    iget v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->targetType:I

    if-eqz v1, :cond_10

    .line 799
    const/16 v1, 0x13

    iget v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->targetType:I

    .line 800
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 802
    :cond_10
    iget v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->rank:I

    if-eqz v1, :cond_11

    .line 803
    const/16 v1, 0x14

    iget v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->rank:I

    .line 804
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 806
    :cond_11
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
    .line 548
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 814
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 815
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 819
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 820
    :sswitch_0
    return-object p0

    .line 825
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->id:J

    goto :goto_0

    .line 829
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->itemType:I

    goto :goto_0

    .line 833
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->title:Ljava/lang/String;

    goto :goto_0

    .line 837
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->container:I

    goto :goto_0

    .line 841
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->screen:I

    goto :goto_0

    .line 845
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->cellX:I

    goto :goto_0

    .line 849
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->cellY:I

    goto :goto_0

    .line 853
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->spanX:I

    goto :goto_0

    .line 857
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->spanY:I

    goto :goto_0

    .line 861
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->displayMode:I

    goto :goto_0

    .line 865
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->appWidgetId:I

    goto :goto_0

    .line 869
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->appWidgetProvider:Ljava/lang/String;

    goto :goto_0

    .line 873
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->intent:Ljava/lang/String;

    goto :goto_0

    .line 877
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->uri:Ljava/lang/String;

    goto :goto_0

    .line 881
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->iconType:I

    goto :goto_0

    .line 885
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    goto :goto_0

    .line 889
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    goto/16 :goto_0

    .line 893
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->icon:[B

    goto/16 :goto_0

    .line 897
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 898
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 906
    :pswitch_0
    iput v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->targetType:I

    goto/16 :goto_0

    .line 912
    .end local v1    # "value":I
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->rank:I

    goto/16 :goto_0

    .line 815
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x78 -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
        0x92 -> :sswitch_12
        0x98 -> :sswitch_13
        0xa0 -> :sswitch_14
    .end sparse-switch

    .line 898
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
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
    .line 668
    const/4 v0, 0x1

    iget-wide v2, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->id:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 669
    const/4 v0, 0x2

    iget v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->itemType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 670
    iget-object v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->title:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 671
    const/4 v0, 0x3

    iget-object v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->title:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 673
    :cond_0
    iget v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->container:I

    if-eqz v0, :cond_1

    .line 674
    const/4 v0, 0x4

    iget v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->container:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 676
    :cond_1
    iget v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->screen:I

    if-eqz v0, :cond_2

    .line 677
    const/4 v0, 0x5

    iget v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->screen:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 679
    :cond_2
    iget v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->cellX:I

    if-eqz v0, :cond_3

    .line 680
    const/4 v0, 0x6

    iget v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->cellX:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 682
    :cond_3
    iget v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->cellY:I

    if-eqz v0, :cond_4

    .line 683
    const/4 v0, 0x7

    iget v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->cellY:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 685
    :cond_4
    iget v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->spanX:I

    if-eqz v0, :cond_5

    .line 686
    const/16 v0, 0x8

    iget v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->spanX:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 688
    :cond_5
    iget v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->spanY:I

    if-eqz v0, :cond_6

    .line 689
    const/16 v0, 0x9

    iget v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->spanY:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 691
    :cond_6
    iget v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->displayMode:I

    if-eqz v0, :cond_7

    .line 692
    const/16 v0, 0xa

    iget v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->displayMode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 694
    :cond_7
    iget v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->appWidgetId:I

    if-eqz v0, :cond_8

    .line 695
    const/16 v0, 0xb

    iget v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->appWidgetId:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 697
    :cond_8
    iget-object v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->appWidgetProvider:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 698
    const/16 v0, 0xc

    iget-object v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->appWidgetProvider:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 700
    :cond_9
    iget-object v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->intent:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 701
    const/16 v0, 0xd

    iget-object v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->intent:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 703
    :cond_a
    iget-object v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->uri:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 704
    const/16 v0, 0xe

    iget-object v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->uri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 706
    :cond_b
    iget v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->iconType:I

    if-eqz v0, :cond_c

    .line 707
    const/16 v0, 0xf

    iget v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->iconType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 709
    :cond_c
    iget-object v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 710
    const/16 v0, 0x10

    iget-object v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 712
    :cond_d
    iget-object v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 713
    const/16 v0, 0x11

    iget-object v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 715
    :cond_e
    iget-object v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->icon:[B

    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_f

    .line 716
    const/16 v0, 0x12

    iget-object v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->icon:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 718
    :cond_f
    iget v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->targetType:I

    if-eqz v0, :cond_10

    .line 719
    const/16 v0, 0x13

    iget v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->targetType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 721
    :cond_10
    iget v0, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->rank:I

    if-eqz v0, :cond_11

    .line 722
    const/16 v0, 0x14

    iget v1, p0, Lnet/oneplus/h2launcher/backup/BackupProtos$Favorite;->rank:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 724
    :cond_11
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 725
    return-void
.end method

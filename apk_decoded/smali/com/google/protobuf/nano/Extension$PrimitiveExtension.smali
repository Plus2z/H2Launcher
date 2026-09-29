.class Lcom/google/protobuf/nano/Extension$PrimitiveExtension;
.super Lcom/google/protobuf/nano/Extension;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/Extension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrimitiveExtension"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<TM;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/protobuf/nano/Extension",
        "<TM;TT;>;"
    }
.end annotation


# instance fields
.field private final nonPackedTag:I

.field private final packedTag:I


# direct methods
.method public constructor <init>(ILjava/lang/Class;IZII)V
    .locals 6
    .param p1, "type"    # I
    .param p3, "tag"    # I
    .param p4, "repeated"    # Z
    .param p5, "nonPackedTag"    # I
    .param p6, "packedTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<TT;>;IZII)V"
        }
    .end annotation

    .prologue
    .line 333
    .local p0, "this":Lcom/google/protobuf/nano/Extension$PrimitiveExtension;, "Lcom/google/protobuf/nano/Extension$PrimitiveExtension<TM;TT;>;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/nano/Extension;-><init>(ILjava/lang/Class;IZLcom/google/protobuf/nano/Extension$1;)V

    .line 334
    iput p5, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    .line 335
    iput p6, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    .line 336
    return-void
.end method

.method private computePackedDataSize(Ljava/lang/Object;)I
    .locals 7
    .param p1, "array"    # Ljava/lang/Object;

    .prologue
    .line 545
    .local p0, "this":Lcom/google/protobuf/nano/Extension$PrimitiveExtension;, "Lcom/google/protobuf/nano/Extension$PrimitiveExtension<TM;TT;>;"
    const/4 v1, 0x0

    .line 546
    .local v1, "dataSize":I
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 547
    .local v0, "arrayLength":I
    iget v3, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    packed-switch v3, :pswitch_data_0

    .line 605
    :pswitch_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    iget v4, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x28

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Unexpected non-packable type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 550
    :pswitch_1
    move v1, v0

    .line 607
    :cond_0
    :goto_0
    return v1

    .line 555
    :pswitch_2
    mul-int/lit8 v1, v0, 0x4

    .line 556
    goto :goto_0

    .line 560
    :pswitch_3
    mul-int/lit8 v1, v0, 0x8

    .line 561
    goto :goto_0

    .line 563
    :pswitch_4
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 564
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 563
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 569
    .end local v2    # "i":I
    :pswitch_5
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_0

    .line 570
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 569
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 575
    .end local v2    # "i":I
    :pswitch_6
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v0, :cond_0

    .line 576
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 575
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 581
    .end local v2    # "i":I
    :pswitch_7
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v0, :cond_0

    .line 582
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v1, v3

    .line 581
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 587
    .end local v2    # "i":I
    :pswitch_8
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    if-ge v2, v0, :cond_0

    .line 588
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v1, v3

    .line 587
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 593
    .end local v2    # "i":I
    :pswitch_9
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_6
    if-ge v2, v0, :cond_0

    .line 594
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v1, v3

    .line 593
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 599
    .end local v2    # "i":I
    :pswitch_a
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_7
    if-ge v2, v0, :cond_0

    .line 600
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeEnumSizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 599
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 547
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_7
        :pswitch_9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_a
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method protected computeRepeatedSerializedSize(Ljava/lang/Object;)I
    .locals 8
    .param p1, "array"    # Ljava/lang/Object;

    .prologue
    .line 612
    .local p0, "this":Lcom/google/protobuf/nano/Extension$PrimitiveExtension;, "Lcom/google/protobuf/nano/Extension$PrimitiveExtension<TM;TT;>;"
    iget v2, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    iget v3, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    if-ne v2, v3, :cond_0

    .line 614
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/Extension;->computeRepeatedSerializedSize(Ljava/lang/Object;)I

    move-result v2

    .line 620
    :goto_0
    return v2

    .line 615
    :cond_0
    iget v2, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    iget v3, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    if-ne v2, v3, :cond_1

    .line 617
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->computePackedDataSize(Ljava/lang/Object;)I

    move-result v0

    .line 618
    .local v0, "dataSize":I
    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v2

    add-int v1, v0, v2

    .line 620
    .local v1, "payloadSize":I
    iget v2, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v2

    add-int/2addr v2, v1

    goto :goto_0

    .line 622
    .end local v0    # "dataSize":I
    .end local v1    # "payloadSize":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    iget v3, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    iget v4, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    iget v5, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x7c

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Unexpected repeated extension tag "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", unequal to both non-packed variant "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and packed variant "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected final computeSingularSerializedSize(Ljava/lang/Object;)I
    .locals 23
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 630
    .local p0, "this":Lcom/google/protobuf/nano/Extension$PrimitiveExtension;, "Lcom/google/protobuf/nano/Extension$PrimitiveExtension<TM;TT;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/google/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v6

    .line 631
    .local v6, "fieldNumber":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 683
    :pswitch_0
    new-instance v19, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    move/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    const/16 v22, 0x18

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v22, "Unknown type "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    :pswitch_1
    move-object/from16 v4, p1

    .line 633
    check-cast v4, Ljava/lang/Double;

    .line 634
    .local v4, "doubleValue":Ljava/lang/Double;
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v6, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v19

    .line 681
    .end local v4    # "doubleValue":Ljava/lang/Double;
    .end local p1    # "value":Ljava/lang/Object;
    :goto_0
    return v19

    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_2
    move-object/from16 v9, p1

    .line 636
    check-cast v9, Ljava/lang/Float;

    .line 637
    .local v9, "floatValue":Ljava/lang/Float;
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v19

    goto :goto_0

    .end local v9    # "floatValue":Ljava/lang/Float;
    :pswitch_3
    move-object/from16 v11, p1

    .line 639
    check-cast v11, Ljava/lang/Long;

    .line 640
    .local v11, "int64Value":Ljava/lang/Long;
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v6, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v19

    goto :goto_0

    .end local v11    # "int64Value":Ljava/lang/Long;
    :pswitch_4
    move-object/from16 v18, p1

    .line 642
    check-cast v18, Ljava/lang/Long;

    .line 643
    .local v18, "uint64Value":Ljava/lang/Long;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v6, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v19

    goto :goto_0

    .end local v18    # "uint64Value":Ljava/lang/Long;
    :pswitch_5
    move-object/from16 v10, p1

    .line 645
    check-cast v10, Ljava/lang/Integer;

    .line 646
    .local v10, "int32Value":Ljava/lang/Integer;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v19

    goto :goto_0

    .end local v10    # "int32Value":Ljava/lang/Integer;
    :pswitch_6
    move-object/from16 v8, p1

    .line 648
    check-cast v8, Ljava/lang/Long;

    .line 649
    .local v8, "fixed64Value":Ljava/lang/Long;
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v6, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result v19

    goto :goto_0

    .end local v8    # "fixed64Value":Ljava/lang/Long;
    :pswitch_7
    move-object/from16 v7, p1

    .line 651
    check-cast v7, Ljava/lang/Integer;

    .line 652
    .local v7, "fixed32Value":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed32Size(II)I

    move-result v19

    goto :goto_0

    .end local v7    # "fixed32Value":Ljava/lang/Integer;
    :pswitch_8
    move-object/from16 v2, p1

    .line 654
    check-cast v2, Ljava/lang/Boolean;

    .line 655
    .local v2, "boolValue":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v19

    goto :goto_0

    .end local v2    # "boolValue":Ljava/lang/Boolean;
    :pswitch_9
    move-object/from16 v16, p1

    .line 657
    check-cast v16, Ljava/lang/String;

    .line 658
    .local v16, "stringValue":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-static {v6, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v19

    goto :goto_0

    .line 660
    .end local v16    # "stringValue":Ljava/lang/String;
    :pswitch_a
    check-cast p1, [B

    .end local p1    # "value":Ljava/lang/Object;
    move-object/from16 v3, p1

    check-cast v3, [B

    .line 661
    .local v3, "bytesValue":[B
    invoke-static {v6, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v19

    goto :goto_0

    .end local v3    # "bytesValue":[B
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_b
    move-object/from16 v17, p1

    .line 663
    check-cast v17, Ljava/lang/Integer;

    .line 664
    .local v17, "uint32Value":Ljava/lang/Integer;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v19

    goto/16 :goto_0

    .end local v17    # "uint32Value":Ljava/lang/Integer;
    :pswitch_c
    move-object/from16 v5, p1

    .line 666
    check-cast v5, Ljava/lang/Integer;

    .line 667
    .local v5, "enumValue":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeEnumSize(II)I

    move-result v19

    goto/16 :goto_0

    .end local v5    # "enumValue":Ljava/lang/Integer;
    :pswitch_d
    move-object/from16 v12, p1

    .line 669
    check-cast v12, Ljava/lang/Integer;

    .line 670
    .local v12, "sfixed32Value":Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed32Size(II)I

    move-result v19

    goto/16 :goto_0

    .end local v12    # "sfixed32Value":Ljava/lang/Integer;
    :pswitch_e
    move-object/from16 v13, p1

    .line 673
    check-cast v13, Ljava/lang/Long;

    .line 674
    .local v13, "sfixed64Value":Ljava/lang/Long;
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v6, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed64Size(IJ)I

    move-result v19

    goto/16 :goto_0

    .end local v13    # "sfixed64Value":Ljava/lang/Long;
    :pswitch_f
    move-object/from16 v14, p1

    .line 677
    check-cast v14, Ljava/lang/Integer;

    .line 678
    .local v14, "sint32Value":Ljava/lang/Integer;
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSInt32Size(II)I

    move-result v19

    goto/16 :goto_0

    .end local v14    # "sint32Value":Ljava/lang/Integer;
    :pswitch_10
    move-object/from16 v15, p1

    .line 680
    check-cast v15, Ljava/lang/Long;

    .line 681
    .local v15, "sint64Value":Ljava/lang/Long;
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v6, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSInt64Size(IJ)I

    move-result v19

    goto/16 :goto_0

    .line 631
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method protected readData(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;

    .prologue
    .line 341
    .local p0, "this":Lcom/google/protobuf/nano/Extension$PrimitiveExtension;, "Lcom/google/protobuf/nano/Extension$PrimitiveExtension<TM;TT;>;"
    :try_start_0
    iget v1, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readPrimitiveField(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Error reading extension field"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected readDataInto(Lcom/google/protobuf/nano/UnknownFieldData;Ljava/util/List;)V
    .locals 4
    .param p1, "data"    # Lcom/google/protobuf/nano/UnknownFieldData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/nano/UnknownFieldData;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 351
    .local p0, "this":Lcom/google/protobuf/nano/Extension$PrimitiveExtension;, "Lcom/google/protobuf/nano/Extension$PrimitiveExtension<TM;TT;>;"
    .local p2, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget v2, p1, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    iget v3, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    if-ne v2, v3, :cond_1

    .line 352
    iget-object v2, p1, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Lcom/google/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->readData(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_0
    return-void

    .line 354
    :cond_1
    iget-object v2, p1, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Lcom/google/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v0

    .line 357
    .local v0, "buffer":Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    :try_start_0
    invoke-virtual {v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_0
    invoke-virtual {v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->isAtEnd()Z

    move-result v2

    if-nez v2, :cond_0

    .line 362
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->readData(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 358
    :catch_0
    move-exception v1

    .line 359
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Error reading extension field"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected writeRepeatedData(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 10
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    .prologue
    .line 447
    .local p0, "this":Lcom/google/protobuf/nano/Extension$PrimitiveExtension;, "Lcom/google/protobuf/nano/Extension$PrimitiveExtension<TM;TT;>;"
    iget v4, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    iget v5, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    if-ne v4, v5, :cond_1

    .line 449
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/nano/Extension;->writeRepeatedData(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 542
    :cond_0
    return-void

    .line 450
    :cond_1
    iget v4, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    iget v5, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    if-ne v4, v5, :cond_2

    .line 453
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 454
    .local v0, "arrayLength":I
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->computePackedDataSize(Ljava/lang/Object;)I

    move-result v1

    .line 457
    .local v1, "dataSize":I
    :try_start_0
    iget v4, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    invoke-virtual {p2, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 458
    invoke-virtual {p2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 459
    iget v4, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    packed-switch v4, :pswitch_data_0

    .line 531
    :pswitch_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    iget v5, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x1b

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Unpackable type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :catch_0
    move-exception v2

    .line 535
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 461
    .end local v2    # "e":Ljava/io/IOException;
    :pswitch_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 462
    :try_start_1
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getBoolean(Ljava/lang/Object;I)Z

    move-result v4

    invoke-virtual {p2, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBoolNoTag(Z)V

    .line 461
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 466
    .end local v3    # "i":I
    :pswitch_2
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 467
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32NoTag(I)V

    .line 466
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 471
    .end local v3    # "i":I
    :pswitch_3
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v0, :cond_0

    .line 472
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed32NoTag(I)V

    .line 471
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 476
    .end local v3    # "i":I
    :pswitch_4
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v0, :cond_0

    .line 477
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getFloat(Ljava/lang/Object;I)F

    move-result v4

    invoke-virtual {p2, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    .line 476
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 481
    .end local v3    # "i":I
    :pswitch_5
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    if-ge v3, v0, :cond_0

    .line 482
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64NoTag(J)V

    .line 481
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 486
    .end local v3    # "i":I
    :pswitch_6
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    if-ge v3, v0, :cond_0

    .line 487
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed64NoTag(J)V

    .line 486
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 491
    .end local v3    # "i":I
    :pswitch_7
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_6
    if-ge v3, v0, :cond_0

    .line 492
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getDouble(Ljava/lang/Object;I)D

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    .line 491
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 496
    .end local v3    # "i":I
    :pswitch_8
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_7
    if-ge v3, v0, :cond_0

    .line 497
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    .line 496
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 501
    .end local v3    # "i":I
    :pswitch_9
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_8
    if-ge v3, v0, :cond_0

    .line 502
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSInt32NoTag(I)V

    .line 501
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 506
    .end local v3    # "i":I
    :pswitch_a
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_9
    if-ge v3, v0, :cond_0

    .line 507
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32NoTag(I)V

    .line 506
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 511
    .end local v3    # "i":I
    :pswitch_b
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_a
    if-ge v3, v0, :cond_0

    .line 512
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64NoTag(J)V

    .line 511
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 516
    .end local v3    # "i":I
    :pswitch_c
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_b
    if-ge v3, v0, :cond_0

    .line 517
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSInt64NoTag(J)V

    .line 516
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 521
    .end local v3    # "i":I
    :pswitch_d
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_c
    if-ge v3, v0, :cond_0

    .line 522
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64NoTag(J)V

    .line 521
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 526
    .end local v3    # "i":I
    :pswitch_e
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_d
    if-ge v3, v0, :cond_0

    .line 527
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeEnumNoTag(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 526
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 538
    .end local v0    # "arrayLength":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    iget v5, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    iget v6, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    iget v7, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x7c

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Unexpected repeated extension tag "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", unequal to both non-packed variant "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and packed variant "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 459
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_4
        :pswitch_b
        :pswitch_d
        :pswitch_8
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_e
        :pswitch_3
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method protected final writeSingularData(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 25
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    .prologue
    .line 370
    .local p0, "this":Lcom/google/protobuf/nano/Extension$PrimitiveExtension;, "Lcom/google/protobuf/nano/Extension$PrimitiveExtension<TM;TT;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 371
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    .line 437
    :pswitch_0
    new-instance v21, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    move/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    const/16 v24, 0x18

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v24, "Unknown type "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    .end local p1    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v7

    .line 441
    .local v7, "e":Ljava/io/IOException;
    new-instance v21, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v21

    .line 373
    .end local v7    # "e":Ljava/io/IOException;
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Double;

    move-object v6, v0

    .line 374
    .local v6, "doubleValue":Ljava/lang/Double;
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    .line 443
    .end local v6    # "doubleValue":Ljava/lang/Double;
    .end local p1    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 377
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_2
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Float;

    move-object v11, v0

    .line 378
    .local v11, "floatValue":Ljava/lang/Float;
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    goto :goto_0

    .line 381
    .end local v11    # "floatValue":Ljava/lang/Float;
    :pswitch_3
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Long;

    move-object v13, v0

    .line 382
    .local v13, "int64Value":Ljava/lang/Long;
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64NoTag(J)V

    goto :goto_0

    .line 385
    .end local v13    # "int64Value":Ljava/lang/Long;
    :pswitch_4
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Long;

    move-object/from16 v20, v0

    .line 386
    .local v20, "uint64Value":Ljava/lang/Long;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64NoTag(J)V

    goto :goto_0

    .line 389
    .end local v20    # "uint64Value":Ljava/lang/Long;
    :pswitch_5
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    move-object v12, v0

    .line 390
    .local v12, "int32Value":Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    goto :goto_0

    .line 393
    .end local v12    # "int32Value":Ljava/lang/Integer;
    :pswitch_6
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Long;

    move-object v10, v0

    .line 394
    .local v10, "fixed64Value":Ljava/lang/Long;
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64NoTag(J)V

    goto :goto_0

    .line 397
    .end local v10    # "fixed64Value":Ljava/lang/Long;
    :pswitch_7
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    move-object v9, v0

    .line 398
    .local v9, "fixed32Value":Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32NoTag(I)V

    goto :goto_0

    .line 401
    .end local v9    # "fixed32Value":Ljava/lang/Integer;
    :pswitch_8
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Boolean;

    move-object v4, v0

    .line 402
    .local v4, "boolValue":Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBoolNoTag(Z)V

    goto :goto_0

    .line 405
    .end local v4    # "boolValue":Ljava/lang/Boolean;
    :pswitch_9
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    move-object/from16 v18, v0

    .line 406
    .local v18, "stringValue":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeStringNoTag(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 409
    .end local v18    # "stringValue":Ljava/lang/String;
    :pswitch_a
    check-cast p1, [B

    .end local p1    # "value":Ljava/lang/Object;
    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v5, v0

    .line 410
    .local v5, "bytesValue":[B
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytesNoTag([B)V

    goto/16 :goto_0

    .line 413
    .end local v5    # "bytesValue":[B
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_b
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    move-object/from16 v19, v0

    .line 414
    .local v19, "uint32Value":Ljava/lang/Integer;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32NoTag(I)V

    goto/16 :goto_0

    .line 417
    .end local v19    # "uint32Value":Ljava/lang/Integer;
    :pswitch_c
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    move-object v8, v0

    .line 418
    .local v8, "enumValue":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeEnumNoTag(I)V

    goto/16 :goto_0

    .line 421
    .end local v8    # "enumValue":Ljava/lang/Integer;
    :pswitch_d
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    move-object v14, v0

    .line 422
    .local v14, "sfixed32Value":Ljava/lang/Integer;
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed32NoTag(I)V

    goto/16 :goto_0

    .line 425
    .end local v14    # "sfixed32Value":Ljava/lang/Integer;
    :pswitch_e
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Long;

    move-object v15, v0

    .line 426
    .local v15, "sfixed64Value":Ljava/lang/Long;
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed64NoTag(J)V

    goto/16 :goto_0

    .line 429
    .end local v15    # "sfixed64Value":Ljava/lang/Long;
    :pswitch_f
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    move-object/from16 v16, v0

    .line 430
    .local v16, "sint32Value":Ljava/lang/Integer;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSInt32NoTag(I)V

    goto/16 :goto_0

    .line 433
    .end local v16    # "sint32Value":Ljava/lang/Integer;
    :pswitch_10
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Long;

    move-object/from16 v17, v0

    .line 434
    .local v17, "sint64Value":Ljava/lang/Long;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSInt64NoTag(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

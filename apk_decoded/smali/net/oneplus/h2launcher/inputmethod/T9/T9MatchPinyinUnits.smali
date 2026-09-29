.class public Lnet/oneplus/h2launcher/inputmethod/T9/T9MatchPinyinUnits;
.super Ljava/lang/Object;
.source "T9MatchPinyinUnits.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findPinyinUnits(Ljava/util/List;IILjava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z
    .locals 16
    .param p1, "pinyinUnitIndex"    # I
    .param p2, "t9PinyinUnitIndex"    # I
    .param p3, "baseData"    # Ljava/lang/String;
    .param p4, "searchBuffer"    # Ljava/lang/StringBuffer;
    .param p5, "chineseKeyWord"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;",
            ">;II",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/StringBuffer;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "pinyinUnits":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;>;"
    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 58
    :cond_0
    const/4 v1, 0x0

    .line 178
    :goto_0
    return v1

    .line 61
    :cond_1
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    .line 62
    .local v13, "search":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 63
    const/4 v1, 0x1

    goto :goto_0

    .line 66
    :cond_2
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v0, p1

    if-lt v0, v1, :cond_3

    .line 67
    const/4 v1, 0x0

    goto :goto_0

    .line 69
    :cond_3
    invoke-interface/range {p0 .. p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;

    .line 71
    .local v12, "pyUnit":Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;
    invoke-virtual {v12}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;->getPinyinBaseUnitIndex()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v0, p2

    if-lt v0, v1, :cond_4

    .line 72
    const/4 v1, 0x0

    goto :goto_0

    .line 75
    :cond_4
    invoke-virtual {v12}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;->getPinyinBaseUnitIndex()Ljava/util/List;

    move-result-object v1

    move/from16 v0, p2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;

    .line 78
    .local v11, "pinyinBaseUnit":Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;
    invoke-virtual {v12}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;->isPinyin()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 80
    invoke-virtual {v11}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;->getNumber()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 81
    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 82
    invoke-virtual {v12}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;->getStartPosition()I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 83
    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lnet/oneplus/h2launcher/inputmethod/T9/T9MatchPinyinUnits;->findPinyinUnits(Ljava/util/List;IILjava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z

    move-result v7

    .line 84
    .local v7, "found":Z
    const/4 v1, 0x1

    if-ne v1, v7, :cond_5

    .line 85
    const/4 v1, 0x1

    goto :goto_0

    .line 87
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v11}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;->getNumber()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 88
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 93
    .end local v7    # "found":Z
    :cond_6
    invoke-virtual {v11}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 95
    invoke-virtual {v12}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;->getStartPosition()I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 96
    const/4 v1, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 97
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 99
    :cond_7
    invoke-virtual {v11}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 101
    const/4 v1, 0x0

    invoke-virtual {v11}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 102
    invoke-virtual {v12}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;->getStartPosition()I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 103
    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lnet/oneplus/h2launcher/inputmethod/T9/T9MatchPinyinUnits;->findPinyinUnits(Ljava/util/List;IILjava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z

    move-result v7

    .line 104
    .restart local v7    # "found":Z
    const/4 v1, 0x1

    if-ne v1, v7, :cond_8

    .line 105
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 107
    :cond_8
    const/4 v1, 0x0

    invoke-virtual {v11}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;->getNumber()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 178
    :cond_9
    :goto_1
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 111
    .end local v7    # "found":Z
    :cond_a
    add-int/lit8 v3, p2, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lnet/oneplus/h2launcher/inputmethod/T9/T9MatchPinyinUnits;->findPinyinUnits(Ljava/util/List;IILjava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z

    move-result v7

    .line 112
    .restart local v7    # "found":Z
    const/4 v1, 0x1

    if-ne v7, v1, :cond_9

    .line 113
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 119
    .end local v7    # "found":Z
    :cond_b
    invoke-virtual {v11}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 121
    const/4 v14, 0x0

    .line 122
    .local v14, "startIndex":I
    invoke-virtual {v12}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;->getStartPosition()I

    move-result v1

    add-int/2addr v1, v14

    invoke-virtual {v12}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;->getStartPosition()I

    move-result v2

    add-int/2addr v2, v14

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    const/4 v1, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 124
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 125
    .end local v14    # "startIndex":I
    :cond_c
    invoke-virtual {v11}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 127
    const/4 v14, 0x0

    .line 128
    .restart local v14    # "startIndex":I
    const/4 v1, 0x0

    invoke-virtual {v11}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 129
    invoke-virtual {v12}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;->getStartPosition()I

    move-result v1

    add-int/2addr v1, v14

    invoke-virtual {v12}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;->getStartPosition()I

    move-result v2

    add-int/2addr v2, v14

    invoke-virtual {v11}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lnet/oneplus/h2launcher/inputmethod/T9/T9MatchPinyinUnits;->findPinyinUnits(Ljava/util/List;IILjava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z

    move-result v7

    .line 131
    .restart local v7    # "found":Z
    const/4 v1, 0x1

    if-ne v1, v7, :cond_d

    .line 132
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 134
    :cond_d
    const/4 v1, 0x0

    invoke-virtual {v11}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;->getNumber()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v11}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 137
    .end local v7    # "found":Z
    .end local v14    # "startIndex":I
    :cond_e
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-gtz v1, :cond_13

    .line 138
    invoke-virtual {v11}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 139
    invoke-virtual {v11}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 140
    .local v9, "index":I
    invoke-virtual {v12}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;->getStartPosition()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {v12}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;->getStartPosition()I

    move-result v2

    add-int/2addr v2, v9

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    const/4 v1, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 142
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 146
    .end local v9    # "index":I
    :cond_f
    invoke-virtual {v11}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    .line 147
    .local v10, "numLength":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v10, :cond_12

    .line 148
    invoke-virtual {v11}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 149
    .local v15, "subStr":Ljava/lang/String;
    invoke-virtual {v13, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 150
    const/4 v1, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 151
    invoke-virtual {v12}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;->getStartPosition()I

    move-result v1

    add-int/2addr v1, v8

    invoke-virtual {v12}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;->getStartPosition()I

    move-result v2

    add-int/2addr v2, v8

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lnet/oneplus/h2launcher/inputmethod/T9/T9MatchPinyinUnits;->findPinyinUnits(Ljava/util/List;IILjava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z

    move-result v7

    .line 153
    .restart local v7    # "found":Z
    const/4 v1, 0x1

    if-ne v1, v7, :cond_10

    .line 154
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 156
    :cond_10
    const/4 v1, 0x0

    invoke-virtual {v11}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 147
    .end local v7    # "found":Z
    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 165
    .end local v15    # "subStr":Ljava/lang/String;
    :cond_12
    add-int/lit8 v3, p2, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lnet/oneplus/h2launcher/inputmethod/T9/T9MatchPinyinUnits;->findPinyinUnits(Ljava/util/List;IILjava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z

    move-result v7

    .line 166
    .restart local v7    # "found":Z
    const/4 v1, 0x1

    if-ne v1, v7, :cond_9

    .line 167
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 172
    .end local v7    # "found":Z
    .end local v8    # "i":I
    .end local v10    # "numLength":I
    :cond_13
    add-int/lit8 v3, p2, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lnet/oneplus/h2launcher/inputmethod/T9/T9MatchPinyinUnits;->findPinyinUnits(Ljava/util/List;IILjava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z

    move-result v7

    .line 173
    .restart local v7    # "found":Z
    const/4 v1, 0x1

    if-ne v1, v7, :cond_9

    .line 174
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public static matchPinyinUnits(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Z
    .locals 11
    .param p1, "baseData"    # Ljava/lang/String;
    .param p2, "search"    # Ljava/lang/String;
    .param p3, "chineseKeyWord"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuffer;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "pinyinUnits":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;>;"
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 15
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move v0, v10

    .line 43
    :goto_0
    return v0

    .line 19
    :cond_1
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 20
    .local v7, "matchSearch":Ljava/lang/StringBuffer;
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    invoke-virtual {v7, v10, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 21
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    invoke-virtual {p3, v10, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 24
    const/4 v8, 0x0

    .line 25
    .local v8, "pinyinUnitsLength":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    .line 26
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 27
    .local v4, "searchBuffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v8, :cond_3

    .line 31
    const/4 v2, 0x0

    .line 32
    .local v2, "j":I
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    invoke-virtual {p3, v10, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 33
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    invoke-virtual {v4, v10, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 34
    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v0, p0

    move-object v3, p1

    move-object v5, p3

    .line 35
    invoke-static/range {v0 .. v5}, Lnet/oneplus/h2launcher/inputmethod/T9/T9MatchPinyinUnits;->findPinyinUnits(Ljava/util/List;IILjava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z

    move-result v6

    .line 37
    .local v6, "found":Z
    if-ne v9, v6, :cond_2

    move v0, v9

    .line 38
    goto :goto_0

    .line 27
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2    # "j":I
    .end local v6    # "found":Z
    :cond_3
    move v0, v10

    .line 43
    goto :goto_0
.end method

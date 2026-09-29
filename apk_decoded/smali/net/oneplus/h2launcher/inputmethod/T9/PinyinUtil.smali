.class public Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUtil;
.super Ljava/lang/Object;
.source "PinyinUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addPinyinUnit(Ljava/util/List;Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;ZLjava/lang/String;[Ljava/lang/String;I)V
    .locals 0
    .param p1, "pyUnit"    # Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;
    .param p2, "pinyin"    # Z
    .param p3, "originalString"    # Ljava/lang/String;
    .param p4, "string"    # [Ljava/lang/String;
    .param p5, "startPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;",
            ">;",
            "Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;",
            "Z",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "pinyinUnit":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    invoke-static {p1, p2, p3, p4, p5}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUtil;->initPinyinUnit(Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;ZLjava/lang/String;[Ljava/lang/String;I)V

    .line 198
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static declared-synchronized chineseStringToPinyinUnit(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;)V
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "chineseString"    # Ljava/lang/String;
    .param p3, "helper"    # Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;",
            ">;",
            "Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    .local p2, "pinyinUnit":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;>;"
    const-class v22, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUtil;

    monitor-enter v22

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 82
    :cond_0
    :goto_0
    monitor-exit v22

    return-void

    .line 20
    :cond_1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    .line 23
    .local v15, "chineseStr":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    .line 24
    .local v16, "chineseStringLength":I
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 25
    .local v20, "nonPinyinString":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 26
    .local v3, "pyUnit":Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;
    const/4 v5, 0x0

    .line 27
    .local v5, "originalString":Ljava/lang/String;
    const/4 v12, 0x0

    .line 28
    .local v12, "pinyinStr":[Ljava/lang/String;
    const/16 v19, 0x1

    .line 29
    .local v19, "lastChineseCharacters":Z
    const/4 v7, -0x1

    .line 30
    .local v7, "startPosition":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_6

    .line 31
    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 39
    .local v14, "ch":C
    invoke-static {v14}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v4}, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->hanyuPinYinConvert(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v21

    .line 40
    .local v21, "tokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 41
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    new-array v12, v2, [Ljava/lang/String;

    .line 42
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_2

    .line 43
    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v12, v18

    .line 42
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 46
    .end local v18    # "j":I
    :cond_2
    if-nez v12, :cond_4

    .line 47
    const/4 v2, 0x1

    move/from16 v0, v19

    if-ne v2, v0, :cond_3

    .line 48
    new-instance v3, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;

    .end local v3    # "pyUnit":Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;
    invoke-direct {v3}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;-><init>()V

    .line 49
    .restart local v3    # "pyUnit":Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;
    const/16 v19, 0x0

    .line 50
    move/from16 v7, v17

    .line 51
    const/4 v2, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 53
    :cond_3
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 30
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 55
    :cond_4
    if-nez v19, :cond_5

    .line 57
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 58
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    .line 59
    .local v6, "str":[Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v2 .. v7}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUtil;->addPinyinUnit(Ljava/util/List;Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;ZLjava/lang/String;[Ljava/lang/String;I)V

    .line 60
    const/4 v2, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 61
    const/16 v19, 0x1

    .line 65
    .end local v6    # "str":[Ljava/lang/String;
    :cond_5
    new-instance v3, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;

    .end local v3    # "pyUnit":Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;
    invoke-direct {v3}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;-><init>()V

    .line 66
    .restart local v3    # "pyUnit":Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;
    move/from16 v7, v17

    .line 67
    invoke-static {v14}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    .line 68
    const/4 v10, 0x1

    move-object/from16 v8, p2

    move-object v9, v3

    move-object v11, v5

    move v13, v7

    invoke-static/range {v8 .. v13}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUtil;->addPinyinUnit(Ljava/util/List;Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;ZLjava/lang/String;[Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 16
    .end local v3    # "pyUnit":Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;
    .end local v5    # "originalString":Ljava/lang/String;
    .end local v7    # "startPosition":I
    .end local v12    # "pinyinStr":[Ljava/lang/String;
    .end local v14    # "ch":C
    .end local v15    # "chineseStr":Ljava/lang/String;
    .end local v16    # "chineseStringLength":I
    .end local v17    # "i":I
    .end local v19    # "lastChineseCharacters":Z
    .end local v20    # "nonPinyinString":Ljava/lang/StringBuffer;
    .end local v21    # "tokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit v22

    throw v2

    .line 73
    .restart local v3    # "pyUnit":Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;
    .restart local v5    # "originalString":Ljava/lang/String;
    .restart local v7    # "startPosition":I
    .restart local v12    # "pinyinStr":[Ljava/lang/String;
    .restart local v15    # "chineseStr":Ljava/lang/String;
    .restart local v16    # "chineseStringLength":I
    .restart local v17    # "i":I
    .restart local v19    # "lastChineseCharacters":Z
    .restart local v20    # "nonPinyinString":Ljava/lang/StringBuffer;
    :cond_6
    if-nez v19, :cond_0

    .line 75
    :try_start_1
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 76
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    .line 77
    .restart local v6    # "str":[Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v2 .. v7}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUtil;->addPinyinUnit(Ljava/util/List;Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;ZLjava/lang/String;[Ljava/lang/String;I)V

    .line 78
    const/4 v2, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    const/16 v19, 0x1

    goto/16 :goto_0
.end method

.method public static getFirstCharacter(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "pinyinUnit":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;>;"
    const/4 v3, 0x0

    .line 122
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 140
    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 126
    :cond_1
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;->getPinyinBaseUnitIndex()Ljava/util/List;

    move-result-object v1

    .line 127
    .local v1, "pinyinBaseUnit":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 131
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;->getOriginalString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "originalString":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 136
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getFirstLetter(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "pinyinUnit":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;>;"
    const/4 v3, 0x0

    .line 92
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 110
    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 96
    :cond_1
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;->getPinyinBaseUnitIndex()Ljava/util/List;

    move-result-object v1

    .line 97
    .local v1, "pinyinBaseUnit":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 101
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;->getPinyin()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "pinyin":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 106
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getSortKey(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "pinyinUnit":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;>;"
    const/4 v5, 0x0

    .line 150
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 151
    .local v1, "sortKeyBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v1, v5, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 152
    const-string v2, " "

    .line 154
    .local v2, "splitSymbol":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 170
    :cond_0
    const/4 v3, 0x0

    :goto_0
    return-object v3

    .line 158
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;

    .line 159
    .local v0, "pu":Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;->isPinyin()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 160
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;->getPinyinBaseUnitIndex()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;->getPinyin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;->getPinyinBaseUnitIndex()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;->getOriginalString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 163
    :cond_2
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;->getPinyinBaseUnitIndex()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;->getOriginalString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 167
    .end local v0    # "pu":Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static initPinyinUnit(Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;ZLjava/lang/String;[Ljava/lang/String;I)V
    .locals 8
    .param p0, "pinyinUnit"    # Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;
    .param p1, "pinyin"    # Z
    .param p2, "originalString"    # Ljava/lang/String;
    .param p3, "string"    # [Ljava/lang/String;
    .param p4, "startPosition"    # I

    .prologue
    .line 205
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 245
    :cond_0
    return-void

    .line 209
    :cond_1
    const/4 v1, 0x0

    .line 210
    .local v1, "i":I
    const/4 v2, 0x0

    .line 211
    .local v2, "j":I
    const/4 v3, 0x0

    .line 212
    .local v3, "k":I
    array-length v5, p3

    .line 213
    .local v5, "strLength":I
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;->setPinyin(Z)V

    .line 214
    invoke-virtual {p0, p4}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;->setStartPosition(I)V

    .line 216
    const/4 v4, 0x0

    .line 218
    .local v4, "pinyinBaseUnit":Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;
    if-eqz p1, :cond_2

    const/4 v6, 0x1

    if-gt v5, v6, :cond_3

    .line 219
    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_0

    .line 220
    new-instance v4, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;

    .end local v4    # "pinyinBaseUnit":Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;
    invoke-direct {v4}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;-><init>()V

    .line 221
    .restart local v4    # "pinyinBaseUnit":Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;
    aget-object v6, p3, v1

    invoke-static {v4, p2, v6}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUtil;->initT9PinyinUnit(Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;->getPinyinBaseUnitIndex()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    :cond_3
    new-instance v4, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;

    .end local v4    # "pinyinBaseUnit":Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;
    invoke-direct {v4}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;-><init>()V

    .line 228
    .restart local v4    # "pinyinBaseUnit":Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;
    const/4 v6, 0x0

    aget-object v6, p3, v6

    invoke-static {v4, p2, v6}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUtil;->initT9PinyinUnit(Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;->getPinyinBaseUnitIndex()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    const/4 v2, 0x1

    :goto_1
    if-ge v2, v5, :cond_0

    .line 231
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;->getPinyinBaseUnitIndex()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 232
    .local v0, "curStringIndexlength":I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_4

    .line 233
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;->getPinyinBaseUnitIndex()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;->getPinyin()Ljava/lang/String;

    move-result-object v6

    aget-object v7, p3, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 238
    :cond_4
    if-ne v3, v0, :cond_5

    .line 239
    new-instance v4, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;

    .end local v4    # "pinyinBaseUnit":Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;
    invoke-direct {v4}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;-><init>()V

    .line 240
    .restart local v4    # "pinyinBaseUnit":Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;
    aget-object v6, p3, v2

    invoke-static {v4, p2, v6}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUtil;->initT9PinyinUnit(Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;->getPinyinBaseUnitIndex()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 232
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private static initT9PinyinUnit(Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "pinyinBaseUnit"    # Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;
    .param p1, "originalString"    # Ljava/lang/String;
    .param p2, "pinyin"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 248
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;->setOriginalString(Ljava/lang/String;)V

    .line 254
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;->setPinyin(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 256
    .local v3, "pinyinLength":I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 257
    .local v2, "numBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v2, v6, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 259
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 260
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lnet/oneplus/h2launcher/inputmethod/T9/T9Util;->getT9Number(C)C

    move-result v0

    .line 261
    .local v0, "ch":C
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 259
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 264
    .end local v0    # "ch":C
    :cond_2
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;->setNumber(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v2, v6, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static isKanji(C)Z
    .locals 5
    .param p0, "chr"    # C

    .prologue
    .line 180
    const/4 v1, 0x0

    .line 181
    .local v1, "pinyinStr":[Ljava/lang/String;
    invoke-static {}, Lnet/oneplus/h2launcher/inputmethod/T9/HanziToPinyin;->getInstance()Lnet/oneplus/h2launcher/inputmethod/T9/HanziToPinyin;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/inputmethod/T9/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 182
    .local v2, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/inputmethod/T9/HanziToPinyin$Token;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 183
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;

    .line 184
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 185
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/inputmethod/T9/HanziToPinyin$Token;

    iget-object v3, v3, Lnet/oneplus/h2launcher/inputmethod/T9/HanziToPinyin$Token;->target:Ljava/lang/String;

    aput-object v3, v1, v0

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    .end local v0    # "j":I
    :cond_0
    if-nez v1, :cond_1

    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

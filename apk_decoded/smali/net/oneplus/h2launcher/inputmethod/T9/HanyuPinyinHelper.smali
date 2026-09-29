.class public Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;
.super Ljava/lang/Object;
.source "HanyuPinyinHelper.java"


# static fields
.field private static final txtName:Ljava/lang/String; = "hanyu_pinyin.txt"


# instance fields
.field private buffer:Ljava/lang/StringBuffer;

.field private isSimple:Z

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/Properties;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->buffer:Ljava/lang/StringBuffer;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->list:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->p:Ljava/util/Properties;

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->isSimple:Z

    .line 21
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->init(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method private convert(ILjava/lang/String;)V
    .locals 8
    .param p1, "n"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 71
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ne p1, v5, :cond_1

    .line 72
    iget-object v5, p0, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, "temp":Ljava/lang/String;
    iget-object v5, p0, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->list:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 74
    iget-object v5, p0, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->list:Ljava/util/List;

    iget-object v6, p0, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    .end local v4    # "temp":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 79
    .local v1, "c":C
    const/16 v5, 0x3007

    if-eq v5, v1, :cond_2

    const/16 v5, 0x4e00

    if-gt v5, v1, :cond_a

    const v5, 0x9fa5

    if-gt v1, v5, :cond_a

    .line 80
    :cond_2
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->getHanyuPinyins(C)[Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "arrayStrings":[Ljava/lang/String;
    if-nez v0, :cond_3

    .line 82
    iget-object v5, p0, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 83
    add-int/lit8 v5, p1, 0x1

    invoke-direct {p0, v5, p2}, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->convert(ILjava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_3
    array-length v5, v0

    if-nez v5, :cond_4

    .line 85
    iget-object v5, p0, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 86
    add-int/lit8 v5, p1, 0x1

    invoke-direct {p0, v5, p2}, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->convert(ILjava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_4
    array-length v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    .line 88
    iget-boolean v5, p0, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->isSimple:Z

    if-eqz v5, :cond_6

    .line 89
    const-string v5, ""

    aget-object v6, v0, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 90
    iget-object v5, p0, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->buffer:Ljava/lang/StringBuffer;

    aget-object v6, v0, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 95
    :cond_5
    :goto_1
    add-int/lit8 v5, p1, 0x1

    invoke-direct {p0, v5, p2}, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->convert(ILjava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_6
    iget-object v5, p0, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->buffer:Ljava/lang/StringBuffer;

    aget-object v6, v0, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 98
    :cond_7
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v5, v0

    if-ge v2, v5, :cond_0

    .line 99
    iget-object v5, p0, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 100
    .local v3, "len":I
    iget-boolean v5, p0, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->isSimple:Z

    if-eqz v5, :cond_9

    .line 101
    const-string v5, ""

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 102
    iget-object v5, p0, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->buffer:Ljava/lang/StringBuffer;

    aget-object v6, v0, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 107
    :cond_8
    :goto_3
    add-int/lit8 v5, p1, 0x1

    invoke-direct {p0, v5, p2}, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->convert(ILjava/lang/String;)V

    .line 108
    iget-object v5, p0, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->buffer:Ljava/lang/StringBuffer;

    iget-object v6, p0, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 105
    :cond_9
    iget-object v5, p0, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->buffer:Ljava/lang/StringBuffer;

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 112
    .end local v0    # "arrayStrings":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_a
    iget-object v5, p0, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 113
    add-int/lit8 v5, p1, 0x1

    invoke-direct {p0, v5, p2}, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->convert(ILjava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getHanyuPinyins(C)[Ljava/lang/String;
    .locals 4
    .param p1, "c"    # C

    .prologue
    .line 34
    move v0, p1

    .line 35
    .local v0, "codePointOfChar":I
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 36
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "codepointHexStr":Ljava/lang/String;
    iget-object v3, p0, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->p:Ljava/util/Properties;

    invoke-virtual {v3, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 38
    .local v2, "str":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 39
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 41
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public hanyuPinYinConvert(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 58
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    :cond_0
    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    .line 60
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 61
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->buffer:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->isSimple:Z

    .line 63
    invoke-direct {p0, v2, p1}, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->convert(ILjava/lang/String;)V

    .line 64
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->buffer:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 65
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->isSimple:Z

    .line 66
    invoke-direct {p0, v2, p1}, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->convert(ILjava/lang/String;)V

    .line 67
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->list:Ljava/util/List;

    goto :goto_0
.end method

.method public hanyuPinYinConvert(Ljava/lang/String;Z)Ljava/util/List;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "isSimple"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 47
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    const/4 v0, 0x0

    .line 53
    :goto_0
    return-object v0

    .line 49
    :cond_1
    iput-boolean p2, p0, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->isSimple:Z

    .line 50
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 51
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->buffer:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 52
    invoke-direct {p0, v2, p1}, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->convert(ILjava/lang/String;)V

    .line 53
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->list:Ljava/util/List;

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "hanyu_pinyin.txt"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 27
    .local v1, "is":Ljava/io/InputStream;
    iget-object v2, p0, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;->p:Ljava/util/Properties;

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .end local v1    # "is":Ljava/io/InputStream;
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

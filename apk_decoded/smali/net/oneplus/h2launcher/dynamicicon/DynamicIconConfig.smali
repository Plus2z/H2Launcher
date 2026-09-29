.class public Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;
.super Ljava/lang/Object;
.source "DynamicIconConfig.java"


# static fields
.field public static final KEY_DEFAULT_DRAWABLE_BACKGROUND:Ljava/lang/String; = "background"

.field public static final KEY_DEFAULT_TEXT:Ljava/lang/String; = "text"

.field public static final MAX_FILE_SIZE:I = 0x64000

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAssetPackName:Ljava/lang/String;

.field private mData:[B

.field private mDrawableConfigMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mTextConfigMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "assetPackName"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->mDrawableConfigMap:Ljava/util/HashMap;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->mTextConfigMap:Ljava/util/HashMap;

    .line 32
    iput-object p1, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->mAssetPackName:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->mData:[B

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->mValid:Z

    .line 35
    return-void
.end method

.method private parseConfigFromStream(Ljava/io/InputStream;)Z
    .locals 4
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 77
    const/4 v2, 0x0

    .line 78
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 79
    .local v1, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 80
    const-string v3, "UTF-8"

    invoke-interface {v2, p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 81
    invoke-direct {p0, v2}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->parseXmlConfig(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    iput-boolean v3, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->mValid:Z

    .line 82
    iget-boolean v3, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->mValid:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :goto_0
    return v3

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private parseXmlConfig(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 95
    const/4 v10, 0x1

    :try_start_0
    iput-boolean v10, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->mValid:Z

    .line 96
    if-nez p1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v8

    .line 99
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 101
    .local v3, "eventType":I
    :cond_2
    const/4 v4, 0x0

    .line 102
    .local v4, "isNext":Z
    const/4 v10, 0x2

    if-ne v3, v10, :cond_3

    const-string v10, "item"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 103
    const/4 v10, 0x0

    const-string v11, "type"

    invoke-interface {p1, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 104
    .local v7, "type":Ljava/lang/String;
    const/4 v10, 0x0

    const-string v11, "key"

    invoke-interface {p1, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, "key":Ljava/lang/String;
    const/4 v0, 0x0

    .line 106
    .local v0, "config":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconItemBaseConfig;
    const-string v10, "drawable"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 107
    new-instance v1, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;

    iget-object v10, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->mAssetPackName:Ljava/lang/String;

    invoke-direct {v1, v10}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;-><init>(Ljava/lang/String;)V

    .line 108
    .local v1, "drawableConfig":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;
    iget-object v10, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->mDrawableConfigMap:Ljava/util/HashMap;

    invoke-virtual {v10, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    move-object v0, v1

    .line 118
    .end local v1    # "drawableConfig":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;
    :goto_1
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconItemBaseConfig;->parseConfig(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 125
    const/4 v4, 0x1

    .line 128
    .end local v0    # "config":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconItemBaseConfig;
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :cond_3
    if-nez v4, :cond_4

    .line 129
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 131
    :cond_4
    :goto_2
    if-ne v3, v9, :cond_2

    .end local v3    # "eventType":I
    .end local v4    # "isNext":Z
    :goto_3
    move v8, v9

    .line 137
    goto :goto_0

    .line 110
    .restart local v0    # "config":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconItemBaseConfig;
    .restart local v3    # "eventType":I
    .restart local v4    # "isNext":Z
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v7    # "type":Ljava/lang/String;
    :cond_5
    const-string v10, "text"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 111
    new-instance v6, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;

    iget-object v10, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->mAssetPackName:Ljava/lang/String;

    invoke-direct {v6, v10}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;-><init>(Ljava/lang/String;)V

    .line 112
    .local v6, "textConfig":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;
    iget-object v10, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->mTextConfigMap:Ljava/util/HashMap;

    invoke-virtual {v10, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    move-object v0, v6

    .line 114
    goto :goto_1

    .line 115
    .end local v6    # "textConfig":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;
    :cond_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 116
    goto :goto_2

    .line 132
    .end local v0    # "config":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconItemBaseConfig;
    .end local v3    # "eventType":I
    .end local v4    # "isNext":Z
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 133
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v8, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parse DynamicIcon config xml XmlPullParserException, message: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 134
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v2

    .line 135
    .local v2, "e":Ljava/io/IOException;
    sget-object v8, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parse DynamicIcon config IOException, message: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public getAllDrawableResource()Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 142
    .local v1, "resources":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->mDrawableConfigMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;

    .line 143
    .local v0, "config":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;->getResources()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 145
    .end local v0    # "config":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;
    :cond_0
    return-object v1
.end method

.method public getAssetPackName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->mAssetPackName:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundDrawableConfig()Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->mDrawableConfigMap:Ljava/util/HashMap;

    const-string v1, "background"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;

    return-object v0
.end method

.method public getDrawableConfig(Ljava/lang/String;)Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 42
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->mDrawableConfigMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;

    return-object v0
.end method

.method public getTextConfig(Ljava/lang/String;)Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->mTextConfigMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconTextConfig;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->mValid:Z

    return v0
.end method

.method public parseConfig(Ljava/io/InputStream;)Z
    .locals 5
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 50
    const v3, 0x64000

    new-array v1, v3, [B

    .line 52
    .local v1, "data":[B
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 53
    .local v0, "bytes":I
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 54
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->parseConfigFromStream(Ljava/io/InputStream;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 58
    .end local v0    # "bytes":I
    :goto_0
    return v3

    .line 55
    :catch_0
    move-exception v2

    .line 56
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->TAG:Ljava/lang/String;

    const-string v4, "parseConfig fail"

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const/4 v3, 0x0

    iput-boolean v3, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->mValid:Z

    .line 58
    iget-boolean v3, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->mValid:Z

    goto :goto_0
.end method

.method public parseConfig(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->parseXmlConfig(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->mValid:Z

    .line 72
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->mValid:Z

    return v0
.end method

.method public parseConfig([B)Z
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 63
    if-eqz p1, :cond_0

    .line 64
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 65
    .local v0, "inputStream":Ljava/io/ByteArrayInputStream;
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->parseConfigFromStream(Ljava/io/InputStream;)Z

    move-result v1

    .line 67
    .end local v0    # "inputStream":Ljava/io/ByteArrayInputStream;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setValid(Z)V
    .locals 0
    .param p1, "valid"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->mValid:Z

    .line 150
    return-void
.end method

.class public Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;
.super Lnet/oneplus/h2launcher/dynamicicon/DynamicIconItemBaseConfig;
.source "DynamicIconDrawableConfig.java"


# static fields
.field public static final RES:Ljava/lang/String; = "res"

.field public static final TAG:Ljava/lang/String;

.field public static final TYPE:Ljava/lang/String; = "drawable"

.field public static final VALUE:Ljava/lang/String; = "value"


# instance fields
.field private mDrawableMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "assetPackName"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconItemBaseConfig;-><init>(Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;->mDrawableMap:Ljava/util/HashMap;

    .line 25
    return-void
.end method


# virtual methods
.method public addDrawableResource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "res"    # Ljava/lang/String;

    .prologue
    .line 28
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;->mDrawableMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public getDefaultDrawableResource()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;->mDrawableMap:Ljava/util/HashMap;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDrawableResource(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 32
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;->mDrawableMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;->mDrawableMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 35
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;->getDefaultDrawableResource()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getResources()Ljava/util/HashSet;
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
    .line 67
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 68
    .local v1, "resources":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;->mDrawableMap:Ljava/util/HashMap;

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

    check-cast v0, Ljava/lang/String;

    .line 69
    .local v0, "resource":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    .end local v0    # "resource":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method protected parseConfig(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 44
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 45
    .local v1, "eventType":I
    const/4 v5, 0x0

    const-string v6, "key"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;->setKey(Ljava/lang/String;)V

    .line 47
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 49
    :cond_0
    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    const-string v5, "drawable"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 50
    const/4 v5, 0x0

    const-string v6, "value"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, "value":Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "res"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "res":Ljava/lang/String;
    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 53
    iget-object v5, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;->mDrawableMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .end local v3    # "res":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 57
    const/4 v5, 0x3

    if-ne v1, v5, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "item"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-eqz v5, :cond_0

    .line 63
    .end local v1    # "eventType":I
    .end local v2    # "key":Ljava/lang/String;
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v5, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parse DynamicIcon drawable config xml error, message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 61
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconDrawableConfig;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parse DynamicIcon drawable config io error, message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

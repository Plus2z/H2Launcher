.class public abstract Lnet/oneplus/h2launcher/dynamicicon/DynamicIconItemBaseConfig;
.super Ljava/lang/Object;
.source "DynamicIconItemBaseConfig.java"


# static fields
.field public static final DEFAULT_VALUE:Ljava/lang/String; = ""

.field public static final KEY_ITEM:Ljava/lang/String; = "item"

.field public static final KEY_KEY:Ljava/lang/String; = "key"

.field public static final KEY_TYPE:Ljava/lang/String; = "type"


# instance fields
.field protected final mAssetPackName:Ljava/lang/String;

.field private mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "assetPackName"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconItemBaseConfig;->mAssetPackName:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getAssetPackName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconItemBaseConfig;->mAssetPackName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconItemBaseConfig;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract parseConfig(Lorg/xmlpull/v1/XmlPullParser;)Z
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconItemBaseConfig;->mKey:Ljava/lang/String;

    .line 26
    return-void
.end method

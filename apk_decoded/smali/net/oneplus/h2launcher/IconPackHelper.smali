.class public Lnet/oneplus/h2launcher/IconPackHelper;
.super Ljava/lang/Object;
.source "IconPackHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/IconPackHelper$IntentCategory;
    }
.end annotation


# static fields
.field public static final CURRENT_ICON_PACK_PACKAGE_NAME:Ljava/lang/String; = "current_icon_pack"

.field public static final CURRENT_ICON_SIZE:Ljava/lang/String; = "current_icon_size"

.field public static final CUSTOM_SYSTEM_DEFAULT_ICONS:Ljava/lang/String;

.field private static final DEFAULT_ORDER_ICON_PACK_LIST:[Ljava/lang/CharSequence;

.field private static final ICONPACK_METADATA_KEY_LAUNCHER:Ljava/lang/String; = "launcher"

.field private static final ICON_BACK_TAG:Ljava/lang/String; = "iconback"

.field private static final ICON_MASK_TAG:Ljava/lang/String; = "iconmask"

.field public static final ICON_PACK_PACKAGE_NAME_SAVED:Ljava/lang/String; = "icon_pack_saved"

.field private static final ICON_SCALE_TAG:Ljava/lang/String; = "scale"

.field private static final ICON_UPON_TAG:Ljava/lang/String; = "iconupon"

.field private static final IGNORE_ICONPACK_LAUNCHER_VERSION:Ljava/lang/String; = "OPLauncher2"

.field public static final SHARED_PREFERENCES:Ljava/lang/String; = "icon_pack_shared_preferences"

.field public static final SYSTEM_DEFAULT_ICONS:Ljava/lang/String; = "SYSTEM_DEFAULT_ICONS"

.field static final TAG:Ljava/lang/String; = "IconPackHelper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDynamicIconPackResourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIconBackLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

.field private mIconBackLayerDrawableReady:Z

.field private mIconBackLayers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIconMaskLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

.field private mIconMaskLayerDrawableReady:Z

.field private mIconMaskLayers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIconPackResourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIconScale:F

.field private mIconUponLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

.field private mIconUponLayerDrawableReady:Z

.field private mIconUponLayers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadedIconPackName:Ljava/lang/String;

.field private mLoadedIconPackResource:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleManager;->getSystemDefaultIcons()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/IconPackHelper;->CUSTOM_SYSTEM_DEFAULT_ICONS:Ljava/lang/String;

    .line 63
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string v2, "com.oneplus.iconpack.oneplus"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.oneplus.iconpack.o2default"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.oneplus.iconpack.circle"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.oneplus.iconpack.square"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.oneplus.iconpack.h2default"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.oneplus.iconpack.h2light"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.oneplus.iconpack.h2folio"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.oneplus.iconpack.dives"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.oneplus.iconpack.rifon"

    aput-object v2, v0, v1

    sput-object v0, Lnet/oneplus/h2launcher/IconPackHelper;->DEFAULT_ORDER_ICON_PACK_LIST:[Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconMaskLayers:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconBackLayers:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconUponLayers:Ljava/util/ArrayList;

    .line 49
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconMaskLayerDrawableReady:Z

    .line 50
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconBackLayerDrawableReady:Z

    .line 51
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconUponLayerDrawableReady:Z

    .line 52
    iput-object v2, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconMaskLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 53
    iput-object v2, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconBackLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 54
    iput-object v2, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconUponLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 61
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconScale:F

    .line 79
    iput-object p1, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mContext:Landroid/content/Context;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconPackResourceMap:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mDynamicIconPackResourceMap:Ljava/util/Map;

    .line 82
    return-void
.end method

.method private extractIconBackLayers(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 244
    .local v1, "eventType":I
    :cond_0
    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    .line 256
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 257
    return-void

    .line 248
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "iconback"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 252
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 253
    .local v0, "attributeCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 254
    iget-object v3, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconBackLayers:Ljava/util/ArrayList;

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private extractIconMaskLayers(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 226
    .local v1, "eventType":I
    :cond_0
    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    .line 238
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 239
    return-void

    .line 230
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "iconmask"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 234
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 235
    .local v0, "attributeCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 236
    iget-object v3, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconMaskLayers:Ljava/util/ArrayList;

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private extractIconScale(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 280
    .local v1, "eventType":I
    :cond_0
    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 292
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 293
    return-void

    .line 284
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "scale"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 288
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 289
    .local v0, "attributeCount":I
    if-lez v0, :cond_1

    .line 290
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconScale:F

    goto :goto_0
.end method

.method private extractIconUponLayers(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 262
    .local v1, "eventType":I
    :cond_0
    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    .line 274
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 275
    return-void

    .line 266
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "iconupon"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 270
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 271
    .local v0, "attributeCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 272
    iget-object v3, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconUponLayers:Ljava/util/ArrayList;

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getDynamicIcon(I)Lorg/xmlpull/v1/XmlPullParser;
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/4 v6, 0x0

    .line 625
    const v7, 0x64000

    new-array v0, v7, [B

    .line 626
    .local v0, "data":[B
    if-nez p1, :cond_0

    move-object v4, v6

    .line 641
    :goto_0
    return-object v4

    .line 630
    :cond_0
    :try_start_0
    iget-object v7, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mLoadedIconPackResource:Landroid/content/res/Resources;

    invoke-virtual {v7, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 631
    .local v5, "stream":Ljava/io/InputStream;
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    .line 632
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 633
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 634
    .local v3, "inputStream":Ljava/io/ByteArrayInputStream;
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 635
    .local v2, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 636
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v7, "UTF-8"

    invoke-interface {v4, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 638
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v3    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 639
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v6

    .line 641
    goto :goto_0
.end method

.method private getDynamicIconResMapFromXml(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 481
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 483
    .local v1, "iconPackResources":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "appfilter"

    const-string v5, "xml"

    invoke-virtual {p1, v4, v5, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 484
    .local v3, "resId":I
    invoke-direct {p0, p1, v3}, Lnet/oneplus/h2launcher/IconPackHelper;->resetParser(Landroid/content/res/Resources;I)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 486
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    if-eqz v2, :cond_0

    .line 488
    :try_start_0
    invoke-direct {p0, v2, v1}, Lnet/oneplus/h2launcher/IconPackHelper;->loadDynamicIconResourcesFromXmlParser(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    instance-of v4, v2, Landroid/content/res/XmlResourceParser;

    if-eqz v4, :cond_0

    .line 498
    check-cast v2, Landroid/content/res/XmlResourceParser;

    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 503
    :cond_0
    :goto_0
    return-object v1

    .line 491
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 497
    instance-of v4, v2, Landroid/content/res/XmlResourceParser;

    if-eqz v4, :cond_0

    .line 498
    check-cast v2, Landroid/content/res/XmlResourceParser;

    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 493
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v0

    .line 494
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 497
    instance-of v4, v2, Landroid/content/res/XmlResourceParser;

    if-eqz v4, :cond_0

    .line 498
    check-cast v2, Landroid/content/res/XmlResourceParser;

    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 497
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v4

    instance-of v5, v2, Landroid/content/res/XmlResourceParser;

    if-eqz v5, :cond_1

    .line 498
    check-cast v2, Landroid/content/res/XmlResourceParser;

    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw v4
.end method

.method public static getIconPackList(Landroid/content/Context;Z)[[Ljava/lang/CharSequence;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "includeDefault"    # Z

    .prologue
    .line 85
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v11, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 88
    .local v15, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 91
    .local v12, "intent":Landroid/content/Intent;
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v4, v0, [Lnet/oneplus/h2launcher/IconPackHelper$IntentCategory;

    const/16 v16, 0x0

    new-instance v17, Lnet/oneplus/h2launcher/IconPackHelper$IntentCategory;

    const v18, 0x7f0d0050

    const-string v19, "android.intent.category.DEFAULT"

    invoke-direct/range {v17 .. v19}, Lnet/oneplus/h2launcher/IconPackHelper$IntentCategory;-><init>(ILjava/lang/String;)V

    aput-object v17, v4, v16

    const/16 v16, 0x1

    new-instance v17, Lnet/oneplus/h2launcher/IconPackHelper$IntentCategory;

    const v18, 0x7f0d0051

    const-string v19, "com.anddoes.launcher.THEME"

    invoke-direct/range {v17 .. v19}, Lnet/oneplus/h2launcher/IconPackHelper$IntentCategory;-><init>(ILjava/lang/String;)V

    aput-object v17, v4, v16

    const/16 v16, 0x2

    new-instance v17, Lnet/oneplus/h2launcher/IconPackHelper$IntentCategory;

    const v18, 0x7f0d0051

    const-string v19, "com.teslacoilsw.launcher.THEME"

    invoke-direct/range {v17 .. v19}, Lnet/oneplus/h2launcher/IconPackHelper$IntentCategory;-><init>(ILjava/lang/String;)V

    aput-object v17, v4, v16

    .line 100
    .local v4, "categories":[Lnet/oneplus/h2launcher/IconPackHelper$IntentCategory;
    array-length v0, v4

    move/from16 v18, v0

    const/16 v16, 0x0

    move/from16 v17, v16

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    aget-object v5, v4, v17

    .line 101
    .local v5, "category":Lnet/oneplus/h2launcher/IconPackHelper$IntentCategory;
    iget-object v0, v5, Lnet/oneplus/h2launcher/IconPackHelper$IntentCategory;->categoryString:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    iget v0, v5, Lnet/oneplus/h2launcher/IconPackHelper$IntentCategory;->actionId:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "actionList":[Ljava/lang/String;
    array-length v0, v3

    move/from16 v19, v0

    const/16 v16, 0x0

    :goto_1
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    aget-object v2, v3, v16

    .line 104
    .local v2, "action":Ljava/lang/String;
    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const/16 v20, 0xc0

    move/from16 v0, v20

    invoke-virtual {v15, v12, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 103
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 100
    .end local v2    # "action":Ljava/lang/String;
    :cond_0
    add-int/lit8 v16, v17, 0x1

    move/from16 v17, v16

    goto :goto_0

    .line 113
    .end local v3    # "actionList":[Ljava/lang/String;
    .end local v5    # "category":Lnet/oneplus/h2launcher/IconPackHelper$IntentCategory;
    :cond_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 114
    .local v8, "iconPacksMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_2
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 115
    .local v10, "info":Landroid/content/pm/ResolveInfo;
    const/4 v9, 0x0

    .line 116
    .local v9, "ignore":Z
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 117
    const-string v17, "OPLauncher2"

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string v19, "launcher"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 118
    const/4 v9, 0x1

    .line 121
    :cond_3
    if-nez v9, :cond_2

    .line 122
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual {v10, v15}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 126
    .end local v9    # "ignore":Z
    .end local v10    # "info":Landroid/content/pm/ResolveInfo;
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v6, "entriesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v7, "entryValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    if-eqz p1, :cond_5

    .line 130
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lnet/oneplus/h2launcher/oos/StyleManager;->getSystemDefaultIcons()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    .line 131
    .local v14, "label":Ljava/lang/CharSequence;
    if-eqz v14, :cond_7

    .line 132
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :goto_3
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lnet/oneplus/h2launcher/oos/StyleManager;->getSystemDefaultIcons()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .end local v14    # "label":Ljava/lang/CharSequence;
    :cond_5
    sget-object v17, Lnet/oneplus/h2launcher/IconPackHelper;->DEFAULT_ORDER_ICON_PACK_LIST:[Ljava/lang/CharSequence;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    const/16 v16, 0x0

    :goto_4
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    aget-object v13, v17, v16

    .line 141
    .local v13, "key":Ljava/lang/CharSequence;
    invoke-virtual {v8, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 142
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {v8, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-virtual {v8, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 134
    .end local v13    # "key":Ljava/lang/CharSequence;
    .restart local v14    # "label":Ljava/lang/CharSequence;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0b0067

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 148
    .end local v14    # "label":Ljava/lang/CharSequence;
    :cond_8
    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    .line 149
    .restart local v13    # "key":Ljava/lang/CharSequence;
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-virtual {v8, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 153
    .end local v13    # "key":Ljava/lang/CharSequence;
    :cond_9
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [[Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    .line 154
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Ljava/lang/CharSequence;

    aput-object v16, v17, v18

    const/16 v18, 0x1

    .line 155
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Ljava/lang/CharSequence;

    aput-object v16, v17, v18

    return-object v17
.end method

.method private getIconResMapFromXml(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/util/Map;
    .locals 18
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 401
    .local v10, "iconPackResources":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v14, "appfilter"

    const-string v15, "xml"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v14, v15, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 402
    .local v13, "resId":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lnet/oneplus/h2launcher/IconPackHelper;->resetParser(Landroid/content/res/Resources;I)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 404
    .local v12, "parser":Lorg/xmlpull/v1/XmlPullParser;
    if-eqz v12, :cond_1

    .line 406
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10}, Lnet/oneplus/h2launcher/IconPackHelper;->loadResourcesFromXmlParser(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    .line 408
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lnet/oneplus/h2launcher/IconPackHelper;->resetParser(Landroid/content/res/Resources;I)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 409
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lnet/oneplus/h2launcher/IconPackHelper;->extractIconBackLayers(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 411
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lnet/oneplus/h2launcher/IconPackHelper;->resetParser(Landroid/content/res/Resources;I)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 412
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lnet/oneplus/h2launcher/IconPackHelper;->extractIconMaskLayers(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 414
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lnet/oneplus/h2launcher/IconPackHelper;->resetParser(Landroid/content/res/Resources;I)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 415
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lnet/oneplus/h2launcher/IconPackHelper;->extractIconUponLayers(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 417
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lnet/oneplus/h2launcher/IconPackHelper;->resetParser(Landroid/content/res/Resources;I)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 418
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lnet/oneplus/h2launcher/IconPackHelper;->extractIconScale(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    instance-of v14, v12, Landroid/content/res/XmlResourceParser;

    if-eqz v14, :cond_0

    move-object v14, v12

    .line 427
    check-cast v14, Landroid/content/res/XmlResourceParser;

    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    .line 477
    :cond_0
    return-object v10

    .line 420
    :catch_0
    move-exception v5

    .line 421
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    instance-of v14, v12, Landroid/content/res/XmlResourceParser;

    if-eqz v14, :cond_1

    move-object v14, v12

    .line 427
    check-cast v14, Landroid/content/res/XmlResourceParser;

    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    .line 433
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_0
    const-string v14, "theme_iconpack"

    const-string v15, "array"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v14, v15, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 434
    .local v3, "arrayId":I
    if-nez v3, :cond_2

    .line 435
    const-string v14, "icon_pack"

    const-string v15, "array"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v14, v15, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 438
    :cond_2
    if-eqz v3, :cond_0

    .line 439
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 440
    .local v9, "iconPack":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 441
    .local v4, "compName":Landroid/content/ComponentName;
    array-length v15, v9

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v15, :cond_0

    aget-object v6, v9, v14

    .line 443
    .local v6, "entry":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 441
    :cond_3
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 422
    .end local v3    # "arrayId":I
    .end local v4    # "compName":Landroid/content/ComponentName;
    .end local v6    # "entry":Ljava/lang/String;
    .end local v9    # "iconPack":[Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 423
    .local v5, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 426
    instance-of v14, v12, Landroid/content/res/XmlResourceParser;

    if-eqz v14, :cond_1

    move-object v14, v12

    .line 427
    check-cast v14, Landroid/content/res/XmlResourceParser;

    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 426
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    instance-of v15, v12, Landroid/content/res/XmlResourceParser;

    if-eqz v15, :cond_4

    .line 427
    check-cast v12, Landroid/content/res/XmlResourceParser;

    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_4
    throw v14

    .line 447
    .restart local v3    # "arrayId":I
    .restart local v4    # "compName":Landroid/content/ComponentName;
    .restart local v6    # "entry":Ljava/lang/String;
    .restart local v9    # "iconPack":[Ljava/lang/String;
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_5
    move-object v7, v6

    .line 448
    .local v7, "icon":Ljava/lang/String;
    const-string v16, "_"

    const-string v17, "."

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 450
    new-instance v4, Landroid/content/ComponentName;

    .end local v4    # "compName":Landroid/content/ComponentName;
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    const-string v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    .restart local v4    # "compName":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const-string v16, "."

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 454
    .local v2, "activityIndex":I
    if-lez v2, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    if-eq v2, v0, :cond_3

    .line 458
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v6, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 459
    .local v11, "iconPackage":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 463
    add-int/lit8 v16, v2, 0x1

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 464
    .local v8, "iconActivity":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 469
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 470
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 472
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 473
    new-instance v4, Landroid/content/ComponentName;

    .end local v4    # "compName":Landroid/content/ComponentName;
    invoke-direct {v4, v11, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    .restart local v4    # "compName":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2
.end method

.method private getResourceIdForDynamicIcon(Ljava/lang/String;)I
    .locals 3
    .param p1, "resource"    # Ljava/lang/String;

    .prologue
    .line 567
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mLoadedIconPackResource:Landroid/content/res/Resources;

    const-string v1, "raw"

    iget-object v2, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mLoadedIconPackName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private loadDynamicIconResourcesFromXmlParser(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "iconPackResources":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 195
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 197
    .local v1, "eventType":I
    :cond_0
    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    .line 220
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 221
    return-void

    .line 201
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "item"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 205
    const-string v3, "component"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "component":Ljava/lang/String;
    const-string v3, "xml"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, "xml":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 214
    const-string v3, "ComponentInfo{"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 215
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 219
    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private loadResourcesFromXmlParser(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "iconPackResources":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 163
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 165
    .local v2, "eventType":I
    :cond_0
    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 188
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 189
    return-void

    .line 169
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "item"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 173
    const-string v3, "component"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "component":Ljava/lang/String;
    const-string v3, "drawable"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "drawable":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 182
    const-string v3, "ComponentInfo{"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 187
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private resetParser(Landroid/content/res/Resources;I)Lorg/xmlpull/v1/XmlPullParser;
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    .line 507
    const/4 v3, 0x0

    .line 508
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    if-eqz p2, :cond_0

    .line 509
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 521
    :goto_0
    return-object v3

    .line 512
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "icons/res/xml/appfilter.xml"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 513
    .local v2, "inputStream":Ljava/io/InputStream;
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 514
    .local v1, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 515
    const-string v4, "UTF-8"

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 516
    .end local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 517
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "density"    # I

    .prologue
    const/4 v1, 0x0

    .line 554
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/IconPackHelper;->isIconPackLoaded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 555
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/IconPackHelper;->getResourceIdForDrawable(Ljava/lang/String;)I

    move-result v0

    .line 556
    .local v0, "id":I
    if-nez v0, :cond_1

    .line 561
    .end local v0    # "id":I
    :cond_0
    :goto_0
    return-object v1

    .line 559
    .restart local v0    # "id":I
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mLoadedIconPackResource:Landroid/content/res/Resources;

    invoke-virtual {v1, v0, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getDrawableForComponentNameWithDensity(Landroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "density"    # I

    .prologue
    .line 546
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/IconPackHelper;->getResourceIdForComponentNameIcon(Landroid/content/ComponentName;)I

    move-result v0

    .line 547
    .local v0, "id":I
    if-nez v0, :cond_0

    .line 548
    const/4 v1, 0x0

    .line 550
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mLoadedIconPackResource:Landroid/content/res/Resources;

    invoke-virtual {v1, v0, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getDynamicIcon(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 613
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/IconPackHelper;->isIconPackLoaded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 614
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/IconPackHelper;->getResourceIdForDynamicIcon(Ljava/lang/String;)I

    move-result v0

    .line 615
    .local v0, "id":I
    if-nez v0, :cond_1

    .line 620
    .end local v0    # "id":I
    :cond_0
    :goto_0
    return-object v1

    .line 618
    .restart local v0    # "id":I
    :cond_1
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/IconPackHelper;->getDynamicIcon(I)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    goto :goto_0
.end method

.method public getDynamicIconByte(I)[B
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 645
    const v3, 0x64000

    new-array v2, v3, [B

    .line 647
    .local v2, "result":[B
    :try_start_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mLoadedIconPackResource:Landroid/content/res/Resources;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 648
    .local v1, "inputStream":Ljava/io/InputStream;
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    .line 649
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "result":[B
    :goto_0
    return-object v2

    .line 650
    .restart local v2    # "result":[B
    :catch_0
    move-exception v0

    .line 651
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 652
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDynamicIconForComponentName(Landroid/content/ComponentName;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 605
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/IconPackHelper;->getResourceIdForComponentNameDynamicIcon(Landroid/content/ComponentName;)I

    move-result v0

    .line 606
    .local v0, "id":I
    if-nez v0, :cond_0

    .line 607
    const/4 v1, 0x0

    .line 609
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/IconPackHelper;->getDynamicIcon(I)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    goto :goto_0
.end method

.method public getIconBackLayerDrawable(I)Landroid/graphics/drawable/LayerDrawable;
    .locals 7
    .param p1, "iconDpi"    # I

    .prologue
    .line 353
    iget-boolean v5, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconBackLayerDrawableReady:Z

    if-nez v5, :cond_4

    .line 354
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v3, "iconBackDrawablesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    iget-object v5, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconBackLayers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 356
    .local v4, "iconBackLayer":Ljava/lang/String;
    invoke-virtual {p0, v4, p1}, Lnet/oneplus/h2launcher/IconPackHelper;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 358
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 362
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "iconBackLayer":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v2, v5, [Landroid/graphics/drawable/Drawable;

    .line 363
    .local v2, "iconBackDrawables":[Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v2

    if-ge v1, v5, :cond_2

    .line 364
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    aput-object v5, v2, v1

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 366
    :cond_2
    const/4 v5, 0x0

    iput-object v5, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconBackLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 367
    array-length v5, v2

    if-lez v5, :cond_3

    .line 368
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v5, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v5, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconBackLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 370
    :cond_3
    const/4 v5, 0x1

    iput-boolean v5, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconBackLayerDrawableReady:Z

    .line 372
    .end local v1    # "i":I
    .end local v2    # "iconBackDrawables":[Landroid/graphics/drawable/Drawable;
    .end local v3    # "iconBackDrawablesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    :cond_4
    iget-object v5, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconBackLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    return-object v5
.end method

.method public getIconMaskLayerDrawable(I)Landroid/graphics/drawable/LayerDrawable;
    .locals 7
    .param p1, "iconDpi"    # I

    .prologue
    .line 330
    iget-boolean v5, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconMaskLayerDrawableReady:Z

    if-nez v5, :cond_4

    .line 331
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v3, "iconMaskDrawablesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    iget-object v5, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconMaskLayers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 333
    .local v4, "iconMaskLayer":Ljava/lang/String;
    invoke-virtual {p0, v4, p1}, Lnet/oneplus/h2launcher/IconPackHelper;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 335
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 339
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "iconMaskLayer":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v2, v5, [Landroid/graphics/drawable/Drawable;

    .line 340
    .local v2, "iconMaskDrawables":[Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v2

    if-ge v1, v5, :cond_2

    .line 341
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    aput-object v5, v2, v1

    .line 340
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 343
    :cond_2
    const/4 v5, 0x0

    iput-object v5, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconMaskLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 344
    array-length v5, v2

    if-lez v5, :cond_3

    .line 345
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v5, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v5, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconMaskLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 347
    :cond_3
    const/4 v5, 0x1

    iput-boolean v5, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconMaskLayerDrawableReady:Z

    .line 349
    .end local v1    # "i":I
    .end local v2    # "iconMaskDrawables":[Landroid/graphics/drawable/Drawable;
    .end local v3    # "iconMaskDrawablesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    :cond_4
    iget-object v5, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconMaskLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    return-object v5
.end method

.method public getIconPackPkg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mLoadedIconPackName:Ljava/lang/String;

    return-object v0
.end method

.method public getIconScale()F
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconScale:F

    return v0
.end method

.method public getIconUponLayerDrawable(I)Landroid/graphics/drawable/LayerDrawable;
    .locals 7
    .param p1, "iconDpi"    # I

    .prologue
    .line 376
    iget-boolean v5, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconUponLayerDrawableReady:Z

    if-nez v5, :cond_4

    .line 377
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v3, "iconUponDrawablesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    iget-object v5, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconUponLayers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 379
    .local v4, "iconUponLayer":Ljava/lang/String;
    invoke-virtual {p0, v4, p1}, Lnet/oneplus/h2launcher/IconPackHelper;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 381
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 385
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "iconUponLayer":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v2, v5, [Landroid/graphics/drawable/Drawable;

    .line 386
    .local v2, "iconUponDrawables":[Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v2

    if-ge v1, v5, :cond_2

    .line 387
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    aput-object v5, v2, v1

    .line 386
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 389
    :cond_2
    const/4 v5, 0x0

    iput-object v5, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconUponLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 390
    array-length v5, v2

    if-lez v5, :cond_3

    .line 391
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v5, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v5, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconUponLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 393
    :cond_3
    const/4 v5, 0x1

    iput-boolean v5, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconUponLayerDrawableReady:Z

    .line 395
    .end local v1    # "i":I
    .end local v2    # "iconUponDrawables":[Landroid/graphics/drawable/Drawable;
    .end local v3    # "iconUponDrawablesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    :cond_4
    iget-object v5, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconUponLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    return-object v5
.end method

.method public getResourceForComponentNameDynamicIcon(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 5
    .param p1, "compName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 588
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/IconPackHelper;->isIconPackLoaded()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v1, v2

    .line 601
    :cond_0
    :goto_0
    return-object v1

    .line 592
    :cond_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mDynamicIconPackResourceMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 593
    .local v1, "dynamicIcon":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 595
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    .end local p1    # "compName":Landroid/content/ComponentName;
    .local v0, "compName":Landroid/content/ComponentName;
    iget-object v3, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mDynamicIconPackResourceMap:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "dynamicIcon":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 597
    .restart local v1    # "dynamicIcon":Ljava/lang/String;
    if-nez v1, :cond_2

    move-object p1, v0

    .end local v0    # "compName":Landroid/content/ComponentName;
    .restart local p1    # "compName":Landroid/content/ComponentName;
    move-object v1, v2

    .line 598
    goto :goto_0

    .end local p1    # "compName":Landroid/content/ComponentName;
    .restart local v0    # "compName":Landroid/content/ComponentName;
    :cond_2
    move-object p1, v0

    .end local v0    # "compName":Landroid/content/ComponentName;
    .restart local p1    # "compName":Landroid/content/ComponentName;
    goto :goto_0
.end method

.method public getResourceIdForComponentNameDynamicIcon(Landroid/content/ComponentName;)I
    .locals 5
    .param p1, "compName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 571
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/IconPackHelper;->isIconPackLoaded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 584
    :goto_0
    return v2

    .line 575
    :cond_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mDynamicIconPackResourceMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 576
    .local v1, "dynamicIcon":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 578
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    .end local p1    # "compName":Landroid/content/ComponentName;
    .local v0, "compName":Landroid/content/ComponentName;
    iget-object v3, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mDynamicIconPackResourceMap:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "dynamicIcon":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 580
    .restart local v1    # "dynamicIcon":Ljava/lang/String;
    if-nez v1, :cond_1

    move-object p1, v0

    .line 581
    .end local v0    # "compName":Landroid/content/ComponentName;
    .restart local p1    # "compName":Landroid/content/ComponentName;
    goto :goto_0

    .end local p1    # "compName":Landroid/content/ComponentName;
    .restart local v0    # "compName":Landroid/content/ComponentName;
    :cond_1
    move-object p1, v0

    .line 584
    .end local v0    # "compName":Landroid/content/ComponentName;
    .restart local p1    # "compName":Landroid/content/ComponentName;
    :cond_2
    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/IconPackHelper;->getResourceIdForDynamicIcon(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public getResourceIdForComponentNameIcon(Landroid/content/ComponentName;)I
    .locals 5
    .param p1, "compName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 529
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/IconPackHelper;->isIconPackLoaded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 542
    :goto_0
    return v2

    .line 533
    :cond_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconPackResourceMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 534
    .local v1, "drawable":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 536
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    .end local p1    # "compName":Landroid/content/ComponentName;
    .local v0, "compName":Landroid/content/ComponentName;
    iget-object v3, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconPackResourceMap:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "drawable":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 538
    .restart local v1    # "drawable":Ljava/lang/String;
    if-nez v1, :cond_1

    move-object p1, v0

    .line 539
    .end local v0    # "compName":Landroid/content/ComponentName;
    .restart local p1    # "compName":Landroid/content/ComponentName;
    goto :goto_0

    .end local p1    # "compName":Landroid/content/ComponentName;
    .restart local v0    # "compName":Landroid/content/ComponentName;
    :cond_1
    move-object p1, v0

    .line 542
    .end local v0    # "compName":Landroid/content/ComponentName;
    .restart local p1    # "compName":Landroid/content/ComponentName;
    :cond_2
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/IconPackHelper;->getResourceIdForDrawable(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public getResourceIdForDrawable(Ljava/lang/String;)I
    .locals 3
    .param p1, "resource"    # Ljava/lang/String;

    .prologue
    .line 525
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mLoadedIconPackResource:Landroid/content/res/Resources;

    const-string v1, "drawable"

    iget-object v2, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mLoadedIconPackName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isIconPackLoaded()Z
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mLoadedIconPackResource:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mLoadedIconPackName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconPackResourceMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadIconPack(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 296
    iget-object v1, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconBackLayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 297
    iget-object v1, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconMaskLayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 298
    iget-object v1, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconUponLayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 299
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconMaskLayerDrawableReady:Z

    .line 300
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconBackLayerDrawableReady:Z

    .line 301
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconUponLayerDrawableReady:Z

    .line 302
    iput-object v3, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconMaskLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 303
    iput-object v3, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconBackLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 304
    iput-object v3, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconUponLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 306
    iget-object v1, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 307
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 309
    .local v0, "res":Landroid/content/res/Resources;
    invoke-direct {p0, v0, p1}, Lnet/oneplus/h2launcher/IconPackHelper;->getIconResMapFromXml(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mIconPackResourceMap:Ljava/util/Map;

    .line 310
    invoke-direct {p0, v0, p1}, Lnet/oneplus/h2launcher/IconPackHelper;->getDynamicIconResMapFromXml(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mDynamicIconPackResourceMap:Ljava/util/Map;

    .line 311
    iput-object v0, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mLoadedIconPackResource:Landroid/content/res/Resources;

    .line 312
    iput-object p1, p0, Lnet/oneplus/h2launcher/IconPackHelper;->mLoadedIconPackName:Ljava/lang/String;

    .line 313
    const-string v1, "IconPackHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IconPack "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was loaded !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void
.end method

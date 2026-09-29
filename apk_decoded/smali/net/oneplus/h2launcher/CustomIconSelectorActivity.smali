.class public Lnet/oneplus/h2launcher/CustomIconSelectorActivity;
.super Landroid/app/Activity;
.source "CustomIconSelectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;,
        Lnet/oneplus/h2launcher/CustomIconSelectorActivity$IconLoaderTask;
    }
.end annotation


# static fields
.field private static final DRAWABLE_ASSETS:Ljava/lang/String; = "drawable.xml"

.field private static final DRAWABLE_ATTR:Ljava/lang/String; = "drawable"

.field private static final DRAWABLE_RESOURCES:Ljava/lang/String; = "drawable"

.field private static final ITEM_TAG:Ljava/lang/String; = "item"

.field private static final MIN_RES_NAME_LENGTH:I = 0x3

.field public static final RESOURCE_NAME_EXTRA:Ljava/lang/String; = "res_name"


# instance fields
.field private mAllIconsAdapter:Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;

.field private mAllIconsGridView:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

.field private mAppPackageName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFilteredLabel:Ljava/lang/String;

.field private mIconPackPackageName:Ljava/lang/String;

.field private mIconPackResources:Landroid/content/res/Resources;

.field private mMatchingResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/CustomIconSelectorActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/CustomIconSelectorActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->mIconPackPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lnet/oneplus/h2launcher/CustomIconSelectorActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/CustomIconSelectorActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->getDrawableFromName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/CustomIconSelectorActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/CustomIconSelectorActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$300(Lnet/oneplus/h2launcher/CustomIconSelectorActivity;Landroid/content/res/AssetManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/CustomIconSelectorActivity;
    .param p1, "x1"    # Landroid/content/res/AssetManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->findAssetsPath(Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lnet/oneplus/h2launcher/CustomIconSelectorActivity;Ljava/lang/Object;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/CustomIconSelectorActivity;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->getDrawableList(Ljava/lang/Object;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lnet/oneplus/h2launcher/CustomIconSelectorActivity;Landroid/content/res/Resources;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/CustomIconSelectorActivity;
    .param p1, "x1"    # Landroid/content/res/Resources;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->findResourcesPathId(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lnet/oneplus/h2launcher/CustomIconSelectorActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/CustomIconSelectorActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->mMatchingResources:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lnet/oneplus/h2launcher/CustomIconSelectorActivity;)Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/CustomIconSelectorActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->mAllIconsAdapter:Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;

    return-object v0
.end method

.method static synthetic access$702(Lnet/oneplus/h2launcher/CustomIconSelectorActivity;Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;)Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/CustomIconSelectorActivity;
    .param p1, "x1"    # Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;

    .prologue
    .line 37
    iput-object p1, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->mAllIconsAdapter:Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;

    return-object p1
.end method

.method static synthetic access$800(Lnet/oneplus/h2launcher/CustomIconSelectorActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/CustomIconSelectorActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lnet/oneplus/h2launcher/CustomIconSelectorActivity;)Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/CustomIconSelectorActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->mAllIconsGridView:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    return-object v0
.end method

.method private findAssetsPath(Landroid/content/res/AssetManager;)Ljava/lang/String;
    .locals 6
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0057

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "paths":[Ljava/lang/String;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 131
    .local v0, "path":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 132
    .local v2, "rootDir":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "drawable.xml"

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 136
    .end local v0    # "path":Ljava/lang/String;
    .end local v2    # "rootDir":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    return-object v3

    .line 133
    .restart local v0    # "path":Ljava/lang/String;
    .restart local v2    # "rootDir":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    goto :goto_1

    .line 130
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "path":Ljava/lang/String;
    .end local v2    # "rootDir":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private findResourcesPathId(Landroid/content/res/Resources;)I
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 140
    const-string v1, "drawable"

    const-string v2, "xml"

    iget-object v3, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->mIconPackPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 141
    .local v0, "id":I
    return v0
.end method

.method private getDrawableFromName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 220
    monitor-enter p1

    .line 222
    :try_start_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->mIconPackResources:Landroid/content/res/Resources;

    const-string v4, "drawable"

    iget-object v5, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->mIconPackPackageName:Ljava/lang/String;

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 223
    .local v1, "resId":I
    if-nez v1, :cond_0

    .line 224
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    .end local v1    # "resId":I
    :goto_0
    return-object v2

    .line 226
    .restart local v1    # "resId":I
    :cond_0
    :try_start_2
    iget-object v3, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->mIconPackResources:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    :try_start_3
    monitor-exit p1

    goto :goto_0

    .line 231
    .end local v1    # "resId":I
    :catchall_0
    move-exception v2

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private getDrawableList(Ljava/lang/Object;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 10
    .param p1, "container"    # Ljava/lang/Object;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 145
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 148
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 149
    .local v5, "parserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v4, 0x0

    .line 150
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    instance-of v8, p1, Landroid/content/res/AssetManager;

    if-eqz v8, :cond_2

    .line 151
    if-eqz p2, :cond_0

    .line 152
    check-cast p1, Landroid/content/res/AssetManager;

    .end local p1    # "container":Ljava/lang/Object;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "drawable.xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 153
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 154
    const-string v8, "UTF-8"

    invoke-interface {v4, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 163
    :cond_0
    :goto_0
    if-eqz v4, :cond_5

    .line 164
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    .line 165
    .local v7, "type":I
    :goto_1
    const/4 v8, 0x1

    if-eq v7, v8, :cond_5

    .line 166
    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 167
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 168
    .local v6, "tag":Ljava/lang/String;
    const-string v8, "item"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 169
    const/4 v8, 0x0

    const-string v9, "drawable"

    invoke-interface {v4, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "drawableName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->isResourceDrawable(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 171
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->isResourceMatching(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 174
    iget-object v8, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->mMatchingResources:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    .end local v0    # "drawableName":Ljava/lang/String;
    .end local v6    # "tag":Ljava/lang/String;
    :cond_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    goto :goto_1

    .line 156
    .end local v7    # "type":I
    .restart local p1    # "container":Ljava/lang/Object;
    :cond_2
    instance-of v8, p1, Landroid/content/res/Resources;

    if-eqz v8, :cond_0

    .line 157
    if-nez p3, :cond_4

    .line 158
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    if-eqz v2, :cond_3

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 191
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "parserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local p1    # "container":Ljava/lang/Object;
    :cond_3
    :goto_2
    return-object v8

    .line 187
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "parserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local p1    # "container":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 160
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_2
    check-cast p1, Landroid/content/res/Resources;

    .end local p1    # "container":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    goto :goto_0

    .line 186
    :cond_5
    if-eqz v2, :cond_6

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 191
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "parserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_6
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    goto :goto_2

    .line 187
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "parserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_1
    move-exception v1

    .line 188
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 182
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "parserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_2
    move-exception v8

    move-object v1, v8

    .line 183
    .local v1, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 186
    if-eqz v2, :cond_6

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    .line 187
    :catch_3
    move-exception v1

    .line 188
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 185
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 186
    if-eqz v2, :cond_7

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 189
    :cond_7
    :goto_5
    throw v8

    .line 187
    :catch_4
    move-exception v1

    .line 188
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 182
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v8

    move-object v1, v8

    goto :goto_4

    :catch_6
    move-exception v8

    move-object v1, v8

    goto :goto_4
.end method

.method private getFilteredLabel()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 96
    :try_start_0
    iget-object v7, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v8, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->mAppPackageName:Ljava/lang/String;

    const/16 v9, 0x80

    .line 97
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 98
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    .line 99
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    .line 100
    .local v2, "config":Landroid/content/res/Configuration;
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iput-object v7, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 102
    iget-object v7, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v8, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->mAppPackageName:Ljava/lang/String;

    .line 103
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 105
    .local v1, "appRes":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 104
    invoke-virtual {v1, v2, v7}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 108
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v7, :cond_1

    .line 109
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "label":Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 115
    const-string v7, "[^a-zA-Z]"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 116
    .local v5, "result":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v5, v6

    .line 125
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appRes":Landroid/content/res/Resources;
    .end local v2    # "config":Landroid/content/res/Configuration;
    .end local v4    # "label":Ljava/lang/String;
    .end local v5    # "result":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v5

    .line 111
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "appRes":Landroid/content/res/Resources;
    .restart local v2    # "config":Landroid/content/res/Configuration;
    :cond_1
    iget-object v7, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v4    # "label":Ljava/lang/String;
    goto :goto_0

    .line 122
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appRes":Landroid/content/res/Resources;
    .end local v2    # "config":Landroid/content/res/Configuration;
    .end local v4    # "label":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 123
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    move-object v5, v6

    .line 125
    goto :goto_1
.end method

.method private isResourceDrawable(Ljava/lang/String;)Z
    .locals 5
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 212
    if-nez p1, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v1

    .line 215
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->mIconPackResources:Landroid/content/res/Resources;

    const-string v3, "drawable"

    iget-object v4, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->mIconPackPackageName:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 216
    .local v0, "resId":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public isResourceMatching(Ljava/lang/String;)Z
    .locals 5
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 195
    const-string v3, "[^a-zA-Z]"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "filteredResName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v1

    .line 197
    :cond_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->mFilteredLabel:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->mFilteredLabel:Ljava/lang/String;

    .line 198
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->mFilteredLabel:Ljava/lang/String;

    .line 199
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    .line 200
    goto :goto_0

    .line 203
    :cond_3
    iget-object v3, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->mAppPackageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->mAppPackageName:Ljava/lang/String;

    .line 204
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->mAppPackageName:Ljava/lang/String;

    .line 205
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    .line 206
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    iput-object p0, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->mContext:Landroid/content/Context;

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->mMatchingResources:Ljava/util/List;

    .line 68
    const v1, 0x7f04006f

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    .line 71
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 72
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e01af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 71
    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 74
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 75
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "app_package"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->mAppPackageName:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "icon_pack_package"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->mIconPackPackageName:Ljava/lang/String;

    .line 78
    invoke-direct {p0}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->getFilteredLabel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->mFilteredLabel:Ljava/lang/String;

    .line 80
    const v1, 0x7f110144

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    iput-object v1, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->mAllIconsGridView:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    .line 81
    iget-object v1, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->mAllIconsGridView:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v1, v4}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->setAreHeadersSticky(Z)V

    .line 84
    :try_start_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->mIconPackPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->mIconPackResources:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    new-instance v1, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$IconLoaderTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$IconLoaderTask;-><init>(Lnet/oneplus/h2launcher/CustomIconSelectorActivity;Lnet/oneplus/h2launcher/CustomIconSelectorActivity$1;)V

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$IconLoaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 92
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v1, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0b006d

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 87
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 88
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->finish()V

    goto :goto_0
.end method

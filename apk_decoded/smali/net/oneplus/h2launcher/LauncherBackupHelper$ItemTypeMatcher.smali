.class Lnet/oneplus/h2launcher/LauncherBackupHelper$ItemTypeMatcher;
.super Ljava/lang/Object;
.source "LauncherBackupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/LauncherBackupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemTypeMatcher"
.end annotation


# instance fields
.field private final mIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lnet/oneplus/h2launcher/LauncherBackupHelper;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherBackupHelper;I)V
    .locals 1
    .param p2, "xml_res"    # I

    .prologue
    .line 1222
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper$ItemTypeMatcher;->this$0:Lnet/oneplus/h2launcher/LauncherBackupHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1223
    if-nez p2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v0, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper$ItemTypeMatcher;->mIntents:Ljava/util/ArrayList;

    .line 1224
    return-void

    .line 1223
    :cond_0
    invoke-direct {p0, p2}, Lnet/oneplus/h2launcher/LauncherBackupHelper$ItemTypeMatcher;->parseIntents(I)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method private parseIntents(I)Ljava/util/ArrayList;
    .locals 9
    .param p1, "xml_res"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1227
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1228
    .local v2, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    iget-object v6, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper$ItemTypeMatcher;->this$0:Lnet/oneplus/h2launcher/LauncherBackupHelper;

    iget-object v6, v6, Lnet/oneplus/h2launcher/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 1230
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v6, "resolve"

    invoke-static {v3, v6}, Lnet/oneplus/h2launcher/DefaultLayoutParser;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1231
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 1233
    .local v0, "depth":I
    :cond_0
    :goto_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    .local v4, "type":I
    const/4 v6, 0x3

    if-ne v4, v6, :cond_1

    .line 1234
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-le v6, v0, :cond_2

    :cond_1
    const/4 v6, 0x1

    if-eq v4, v6, :cond_2

    .line 1235
    const/4 v6, 0x2

    if-ne v4, v6, :cond_0

    .line 1237
    const-string v6, "favorite"

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1238
    const-string v6, "uri"

    invoke-static {v3, v6}, Lnet/oneplus/h2launcher/DefaultLayoutParser;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1240
    .local v5, "uri":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1243
    .end local v0    # "depth":I
    .end local v4    # "type":I
    .end local v5    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 1244
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_1
    const-string v6, "LauncherBackupHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to parse "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1246
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1248
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v2

    .line 1246
    .restart local v0    # "depth":I
    .restart local v4    # "type":I
    :cond_2
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2

    .end local v0    # "depth":I
    .end local v4    # "type":I
    :catchall_0
    move-exception v6

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    throw v6

    .line 1243
    :catch_1
    move-exception v6

    move-object v1, v6

    goto :goto_1

    :catch_2
    move-exception v6

    move-object v1, v6

    goto :goto_1
.end method


# virtual methods
.method public matches(Landroid/content/pm/ActivityInfo;Landroid/content/pm/PackageManager;)Z
    .locals 6
    .param p1, "activity"    # Landroid/content/pm/ActivityInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v2, 0x0

    .line 1252
    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper$ItemTypeMatcher;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1253
    .local v1, "intent":Landroid/content/Intent;
    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1254
    invoke-virtual {p2, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1255
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 1256
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1257
    :cond_1
    const/4 v2, 0x1

    .line 1260
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    return v2
.end method

.class Lnet/oneplus/h2launcher/CommonAppTypeParser$MyLayoutParser;
.super Lnet/oneplus/h2launcher/DefaultLayoutParser;
.source "CommonAppTypeParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/CommonAppTypeParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLayoutParser"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/CommonAppTypeParser;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/CommonAppTypeParser;)V
    .locals 8

    .prologue
    .line 93
    iput-object p1, p0, Lnet/oneplus/h2launcher/CommonAppTypeParser$MyLayoutParser;->this$0:Lnet/oneplus/h2launcher/CommonAppTypeParser;

    .line 94
    iget-object v1, p1, Lnet/oneplus/h2launcher/CommonAppTypeParser;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v0, p1, Lnet/oneplus/h2launcher/CommonAppTypeParser;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p1, Lnet/oneplus/h2launcher/CommonAppTypeParser;->mResId:I

    const-string v6, "resolve"

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    .line 94
    invoke-direct/range {v0 .. v7}, Lnet/oneplus/h2launcher/DefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lnet/oneplus/h2launcher/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;I)V

    .line 96
    return-void
.end method


# virtual methods
.method protected addShortcut(Ljava/lang/String;Landroid/content/Intent;I)J
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "type"    # I

    .prologue
    .line 100
    if-nez p3, :cond_0

    .line 101
    iget-object v0, p0, Lnet/oneplus/h2launcher/CommonAppTypeParser$MyLayoutParser;->this$0:Lnet/oneplus/h2launcher/CommonAppTypeParser;

    iput-object p2, v0, Lnet/oneplus/h2launcher/CommonAppTypeParser;->parsedIntent:Landroid/content/Intent;

    .line 102
    iget-object v0, p0, Lnet/oneplus/h2launcher/CommonAppTypeParser$MyLayoutParser;->this$0:Lnet/oneplus/h2launcher/CommonAppTypeParser;

    iput-object p1, v0, Lnet/oneplus/h2launcher/CommonAppTypeParser;->parsedTitle:Ljava/lang/String;

    .line 104
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/DefaultLayoutParser;->addShortcut(Ljava/lang/String;Landroid/content/Intent;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public parseValues()V
    .locals 4

    .prologue
    .line 108
    iget-object v2, p0, Lnet/oneplus/h2launcher/CommonAppTypeParser$MyLayoutParser;->mSourceRes:Landroid/content/res/Resources;

    iget v3, p0, Lnet/oneplus/h2launcher/CommonAppTypeParser$MyLayoutParser;->mLayoutId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 110
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/CommonAppTypeParser$MyLayoutParser;->mRootTag:Ljava/lang/String;

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/CommonAppTypeParser$MyLayoutParser;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 111
    new-instance v2, Lnet/oneplus/h2launcher/DefaultLayoutParser$ResolveParser;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/DefaultLayoutParser$ResolveParser;-><init>(Lnet/oneplus/h2launcher/DefaultLayoutParser;)V

    invoke-virtual {v2, v1}, Lnet/oneplus/h2launcher/DefaultLayoutParser$ResolveParser;->parseAndAdd(Landroid/content/res/XmlResourceParser;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 116
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v2, "CommonAppTypeParser"

    const-string v3, "Unable to parse default app info"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

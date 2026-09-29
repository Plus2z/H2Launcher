.class Lnet/oneplus/h2launcher/DefaultLayoutParser$UriShortcutParser;
.super Lnet/oneplus/h2launcher/AutoInstallsLayout$ShortcutParser;
.source "DefaultLayoutParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/DefaultLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UriShortcutParser"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/DefaultLayoutParser;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/DefaultLayoutParser;Landroid/content/res/Resources;)V
    .locals 0
    .param p2, "iconRes"    # Landroid/content/res/Resources;

    .prologue
    .line 187
    iput-object p1, p0, Lnet/oneplus/h2launcher/DefaultLayoutParser$UriShortcutParser;->this$0:Lnet/oneplus/h2launcher/DefaultLayoutParser;

    .line 188
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/AutoInstallsLayout$ShortcutParser;-><init>(Lnet/oneplus/h2launcher/AutoInstallsLayout;Landroid/content/res/Resources;)V

    .line 189
    return-void
.end method


# virtual methods
.method protected parseIntent(Landroid/content/res/XmlResourceParser;)Landroid/content/Intent;
    .locals 5
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    .line 193
    const/4 v1, 0x0

    .line 195
    .local v1, "uri":Ljava/lang/String;
    :try_start_0
    const-string v2, "uri"

    invoke-static {p1, v2}, Lnet/oneplus/h2launcher/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 199
    :goto_0
    return-object v2

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/net/URISyntaxException;
    const-string v2, "DefaultLayoutParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shortcut has malformed uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v2, 0x0

    goto :goto_0
.end method

.class public Lnet/oneplus/h2launcher/DefaultLayoutParser$ResolveParser;
.super Ljava/lang/Object;
.source "DefaultLayoutParser.java"

# interfaces
.implements Lnet/oneplus/h2launcher/AutoInstallsLayout$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/DefaultLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ResolveParser"
.end annotation


# instance fields
.field private final mChildParser:Lnet/oneplus/h2launcher/DefaultLayoutParser$AppShortcutWithUriParser;

.field final synthetic this$0:Lnet/oneplus/h2launcher/DefaultLayoutParser;


# direct methods
.method protected constructor <init>(Lnet/oneplus/h2launcher/DefaultLayoutParser;)V
    .locals 2
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/DefaultLayoutParser;

    .prologue
    .line 207
    iput-object p1, p0, Lnet/oneplus/h2launcher/DefaultLayoutParser$ResolveParser;->this$0:Lnet/oneplus/h2launcher/DefaultLayoutParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    new-instance v0, Lnet/oneplus/h2launcher/DefaultLayoutParser$AppShortcutWithUriParser;

    iget-object v1, p0, Lnet/oneplus/h2launcher/DefaultLayoutParser$ResolveParser;->this$0:Lnet/oneplus/h2launcher/DefaultLayoutParser;

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/DefaultLayoutParser$AppShortcutWithUriParser;-><init>(Lnet/oneplus/h2launcher/DefaultLayoutParser;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/DefaultLayoutParser$ResolveParser;->mChildParser:Lnet/oneplus/h2launcher/DefaultLayoutParser$AppShortcutWithUriParser;

    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;)J
    .locals 8
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    .line 216
    .local v3, "groupDepth":I
    const-wide/16 v0, -0x1

    .line 217
    .local v0, "addedId":J
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    .local v4, "type":I
    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 218
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v3, :cond_3

    .line 219
    :cond_1
    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const-wide/16 v6, -0x1

    cmp-long v5, v0, v6

    if-gtz v5, :cond_0

    .line 222
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "fallback_item_name":Ljava/lang/String;
    const-string v5, "favorite"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 224
    iget-object v5, p0, Lnet/oneplus/h2launcher/DefaultLayoutParser$ResolveParser;->mChildParser:Lnet/oneplus/h2launcher/DefaultLayoutParser$AppShortcutWithUriParser;

    invoke-virtual {v5, p1}, Lnet/oneplus/h2launcher/DefaultLayoutParser$AppShortcutWithUriParser;->parseAndAdd(Landroid/content/res/XmlResourceParser;)J

    move-result-wide v0

    goto :goto_0

    .line 226
    :cond_2
    const-string v5, "DefaultLayoutParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fallback groups can contain only favorites, found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 230
    .end local v2    # "fallback_item_name":Ljava/lang/String;
    :cond_3
    return-wide v0
.end method

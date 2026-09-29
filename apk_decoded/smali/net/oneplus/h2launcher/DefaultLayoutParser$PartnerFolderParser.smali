.class Lnet/oneplus/h2launcher/DefaultLayoutParser$PartnerFolderParser;
.super Ljava/lang/Object;
.source "DefaultLayoutParser.java"

# interfaces
.implements Lnet/oneplus/h2launcher/AutoInstallsLayout$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/DefaultLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PartnerFolderParser"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/DefaultLayoutParser;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/DefaultLayoutParser;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/DefaultLayoutParser;

    .prologue
    .line 237
    iput-object p1, p0, Lnet/oneplus/h2launcher/DefaultLayoutParser$PartnerFolderParser;->this$0:Lnet/oneplus/h2launcher/DefaultLayoutParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 243
    iget-object v5, p0, Lnet/oneplus/h2launcher/DefaultLayoutParser$PartnerFolderParser;->this$0:Lnet/oneplus/h2launcher/DefaultLayoutParser;

    iget-object v5, v5, Lnet/oneplus/h2launcher/DefaultLayoutParser;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v5}, Lnet/oneplus/h2launcher/Partner;->get(Landroid/content/pm/PackageManager;)Lnet/oneplus/h2launcher/Partner;

    move-result-object v1

    .line 244
    .local v1, "partner":Lnet/oneplus/h2launcher/Partner;
    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 246
    .local v3, "partnerRes":Landroid/content/res/Resources;
    const-string v5, "partner_folder"

    const-string v6, "xml"

    .line 247
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 246
    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 248
    .local v4, "resId":I
    if-eqz v4, :cond_0

    .line 249
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 250
    .local v2, "partnerParser":Landroid/content/res/XmlResourceParser;
    const-string v5, "folder"

    invoke-static {v2, v5}, Lnet/oneplus/h2launcher/AutoInstallsLayout;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 252
    new-instance v0, Lnet/oneplus/h2launcher/AutoInstallsLayout$FolderParser;

    iget-object v5, p0, Lnet/oneplus/h2launcher/DefaultLayoutParser$PartnerFolderParser;->this$0:Lnet/oneplus/h2launcher/DefaultLayoutParser;

    iget-object v6, p0, Lnet/oneplus/h2launcher/DefaultLayoutParser$PartnerFolderParser;->this$0:Lnet/oneplus/h2launcher/DefaultLayoutParser;

    invoke-virtual {v6, v3}, Lnet/oneplus/h2launcher/DefaultLayoutParser;->getFolderElementsMap(Landroid/content/res/Resources;)Ljava/util/HashMap;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lnet/oneplus/h2launcher/AutoInstallsLayout$FolderParser;-><init>(Lnet/oneplus/h2launcher/AutoInstallsLayout;Ljava/util/HashMap;)V

    .line 253
    .local v0, "folderParser":Lnet/oneplus/h2launcher/AutoInstallsLayout$FolderParser;
    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/AutoInstallsLayout$FolderParser;->parseAndAdd(Landroid/content/res/XmlResourceParser;)J

    move-result-wide v6

    .line 256
    .end local v0    # "folderParser":Lnet/oneplus/h2launcher/AutoInstallsLayout$FolderParser;
    .end local v2    # "partnerParser":Landroid/content/res/XmlResourceParser;
    .end local v3    # "partnerRes":Landroid/content/res/Resources;
    .end local v4    # "resId":I
    :goto_0
    return-wide v6

    :cond_0
    const-wide/16 v6, -0x1

    goto :goto_0
.end method

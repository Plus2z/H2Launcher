.class Lnet/oneplus/h2launcher/DefaultLayoutParser$MyFolderParser;
.super Lnet/oneplus/h2launcher/AutoInstallsLayout$FolderParser;
.source "DefaultLayoutParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/DefaultLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyFolderParser"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/DefaultLayoutParser;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/DefaultLayoutParser;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/DefaultLayoutParser;

    .prologue
    .line 263
    iput-object p1, p0, Lnet/oneplus/h2launcher/DefaultLayoutParser$MyFolderParser;->this$0:Lnet/oneplus/h2launcher/DefaultLayoutParser;

    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/AutoInstallsLayout$FolderParser;-><init>(Lnet/oneplus/h2launcher/AutoInstallsLayout;)V

    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;)J
    .locals 4
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    const-string v1, "folderItems"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lnet/oneplus/h2launcher/AutoInstallsLayout;->getAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v0

    .line 269
    .local v0, "resId":I
    if-eqz v0, :cond_0

    .line 270
    iget-object v1, p0, Lnet/oneplus/h2launcher/DefaultLayoutParser$MyFolderParser;->this$0:Lnet/oneplus/h2launcher/DefaultLayoutParser;

    iget-object v1, v1, Lnet/oneplus/h2launcher/DefaultLayoutParser;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 271
    const-string v1, "folder"

    invoke-static {p1, v1}, Lnet/oneplus/h2launcher/AutoInstallsLayout;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 273
    :cond_0
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/AutoInstallsLayout$FolderParser;->parseAndAdd(Landroid/content/res/XmlResourceParser;)J

    move-result-wide v2

    return-wide v2
.end method

.class public Lnet/oneplus/h2launcher/DefaultLayoutParser;
.super Lnet/oneplus/h2launcher/AutoInstallsLayout;
.source "DefaultLayoutParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/DefaultLayoutParser$MyFolderParser;,
        Lnet/oneplus/h2launcher/DefaultLayoutParser$PartnerFolderParser;,
        Lnet/oneplus/h2launcher/DefaultLayoutParser$ResolveParser;,
        Lnet/oneplus/h2launcher/DefaultLayoutParser$UriShortcutParser;,
        Lnet/oneplus/h2launcher/DefaultLayoutParser$AppShortcutWithUriParser;
    }
.end annotation


# static fields
.field private static final ATTR_CONTAINER:Ljava/lang/String; = "container"

.field private static final ATTR_FOLDER_ITEMS:Ljava/lang/String; = "folderItems"

.field private static final ATTR_SCREEN:Ljava/lang/String; = "screen"

.field protected static final ATTR_URI:Ljava/lang/String; = "uri"

.field private static final TAG:Ljava/lang/String; = "DefaultLayoutParser"

.field private static final TAG_APPWIDGET:Ljava/lang/String; = "appwidget"

.field private static final TAG_CUSTOMWIDGET:Ljava/lang/String; = "customwidget"

.field protected static final TAG_FAVORITE:Ljava/lang/String; = "favorite"

.field private static final TAG_FAVORITES:Ljava/lang/String; = "favorites"

.field private static final TAG_FOLDER:Ljava/lang/String; = "folder"

.field private static final TAG_PARTNER_FOLDER:Ljava/lang/String; = "partner-folder"

.field protected static final TAG_RESOLVE:Ljava/lang/String; = "resolve"

.field private static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lnet/oneplus/h2launcher/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetHost"    # Landroid/appwidget/AppWidgetHost;
    .param p3, "callback"    # Lnet/oneplus/h2launcher/AutoInstallsLayout$LayoutParserCallback;
    .param p4, "sourceRes"    # Landroid/content/res/Resources;
    .param p5, "layoutId"    # I

    .prologue
    .line 47
    const-string v6, "favorites"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/AutoInstallsLayout;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lnet/oneplus/h2launcher/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lnet/oneplus/h2launcher/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetHost"    # Landroid/appwidget/AppWidgetHost;
    .param p3, "callback"    # Lnet/oneplus/h2launcher/AutoInstallsLayout$LayoutParserCallback;
    .param p4, "sourceRes"    # Landroid/content/res/Resources;
    .param p5, "layoutId"    # I
    .param p6, "rootTag"    # Ljava/lang/String;
    .param p7, "hotseatAllAppsRank"    # I

    .prologue
    .line 53
    invoke-direct/range {p0 .. p7}, Lnet/oneplus/h2launcher/AutoInstallsLayout;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lnet/oneplus/h2launcher/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;I)V

    .line 54
    return-void
.end method


# virtual methods
.method protected getFolderElementsMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lnet/oneplus/h2launcher/AutoInstallsLayout$TagParser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lnet/oneplus/h2launcher/DefaultLayoutParser;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/DefaultLayoutParser;->getFolderElementsMap(Landroid/content/res/Resources;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method getFolderElementsMap(Landroid/content/res/Resources;)Ljava/util/HashMap;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lnet/oneplus/h2launcher/AutoInstallsLayout$TagParser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    .local v0, "parsers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lnet/oneplus/h2launcher/AutoInstallsLayout$TagParser;>;"
    const-string v1, "favorite"

    new-instance v2, Lnet/oneplus/h2launcher/DefaultLayoutParser$AppShortcutWithUriParser;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/DefaultLayoutParser$AppShortcutWithUriParser;-><init>(Lnet/oneplus/h2launcher/DefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v1, "shortcut"

    new-instance v2, Lnet/oneplus/h2launcher/DefaultLayoutParser$UriShortcutParser;

    invoke-direct {v2, p0, p1}, Lnet/oneplus/h2launcher/DefaultLayoutParser$UriShortcutParser;-><init>(Lnet/oneplus/h2launcher/DefaultLayoutParser;Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-object v0
.end method

.method protected getLayoutElementsMap()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lnet/oneplus/h2launcher/AutoInstallsLayout$TagParser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 72
    .local v0, "parsers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lnet/oneplus/h2launcher/AutoInstallsLayout$TagParser;>;"
    const-string v1, "favorite"

    new-instance v2, Lnet/oneplus/h2launcher/DefaultLayoutParser$AppShortcutWithUriParser;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/DefaultLayoutParser$AppShortcutWithUriParser;-><init>(Lnet/oneplus/h2launcher/DefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v1, "appwidget"

    new-instance v2, Lnet/oneplus/h2launcher/AutoInstallsLayout$AppWidgetParser;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/AutoInstallsLayout$AppWidgetParser;-><init>(Lnet/oneplus/h2launcher/AutoInstallsLayout;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v1, "customwidget"

    new-instance v2, Lnet/oneplus/h2launcher/AutoInstallsLayout$CustomWidgetParser;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/AutoInstallsLayout$CustomWidgetParser;-><init>(Lnet/oneplus/h2launcher/AutoInstallsLayout;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v1, "shortcut"

    new-instance v2, Lnet/oneplus/h2launcher/DefaultLayoutParser$UriShortcutParser;

    iget-object v3, p0, Lnet/oneplus/h2launcher/DefaultLayoutParser;->mSourceRes:Landroid/content/res/Resources;

    invoke-direct {v2, p0, v3}, Lnet/oneplus/h2launcher/DefaultLayoutParser$UriShortcutParser;-><init>(Lnet/oneplus/h2launcher/DefaultLayoutParser;Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v1, "resolve"

    new-instance v2, Lnet/oneplus/h2launcher/DefaultLayoutParser$ResolveParser;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/DefaultLayoutParser$ResolveParser;-><init>(Lnet/oneplus/h2launcher/DefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v1, "folder"

    new-instance v2, Lnet/oneplus/h2launcher/DefaultLayoutParser$MyFolderParser;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/DefaultLayoutParser$MyFolderParser;-><init>(Lnet/oneplus/h2launcher/DefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v1, "partner-folder"

    new-instance v2, Lnet/oneplus/h2launcher/DefaultLayoutParser$PartnerFolderParser;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/DefaultLayoutParser$PartnerFolderParser;-><init>(Lnet/oneplus/h2launcher/DefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-object v0
.end method

.method protected parseContainerAndScreen(Landroid/content/res/XmlResourceParser;[J)V
    .locals 5
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "out"    # [J

    .prologue
    const/4 v4, 0x0

    .line 84
    const-wide/16 v2, -0x64

    aput-wide v2, p2, v4

    .line 85
    const-string v1, "container"

    invoke-static {p1, v1}, Lnet/oneplus/h2launcher/DefaultLayoutParser;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "strContainer":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 87
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, p2, v4

    .line 89
    :cond_0
    const/4 v1, 0x1

    const-string v2, "screen"

    invoke-static {p1, v2}, Lnet/oneplus/h2launcher/DefaultLayoutParser;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, p2, v1

    .line 90
    return-void
.end method

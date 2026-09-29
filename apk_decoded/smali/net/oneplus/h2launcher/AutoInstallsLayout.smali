.class public Lnet/oneplus/h2launcher/AutoInstallsLayout;
.super Ljava/lang/Object;
.source "AutoInstallsLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/AutoInstallsLayout$LayoutParserCallback;,
        Lnet/oneplus/h2launcher/AutoInstallsLayout$FolderParser;,
        Lnet/oneplus/h2launcher/AutoInstallsLayout$CustomWidgetParser;,
        Lnet/oneplus/h2launcher/AutoInstallsLayout$AppWidgetParser;,
        Lnet/oneplus/h2launcher/AutoInstallsLayout$ShortcutParser;,
        Lnet/oneplus/h2launcher/AutoInstallsLayout$AutoInstallParser;,
        Lnet/oneplus/h2launcher/AutoInstallsLayout$AppShortcutParser;,
        Lnet/oneplus/h2launcher/AutoInstallsLayout$TagParser;
    }
.end annotation


# static fields
.field private static final ACTION_APPWIDGET_DEFAULT_WORKSPACE_CONFIGURE:Ljava/lang/String; = "com.android.launcher.action.APPWIDGET_DEFAULT_WORKSPACE_CONFIGURE"

.field static final ACTION_LAUNCHER_CUSTOMIZATION:Ljava/lang/String; = "android.autoinstalls.config.action.PLAY_AUTO_INSTALL"

.field private static final ATTR_CLASS_NAME:Ljava/lang/String; = "className"

.field private static final ATTR_CONTAINER:Ljava/lang/String; = "container"

.field private static final ATTR_ICON:Ljava/lang/String; = "icon"

.field private static final ATTR_KEY:Ljava/lang/String; = "key"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final ATTR_RANK:Ljava/lang/String; = "rank"

.field private static final ATTR_SCREEN:Ljava/lang/String; = "screen"

.field private static final ATTR_SPAN_X:Ljava/lang/String; = "spanX"

.field private static final ATTR_SPAN_Y:Ljava/lang/String; = "spanY"

.field private static final ATTR_TITLE:Ljava/lang/String; = "title"

.field private static final ATTR_URL:Ljava/lang/String; = "url"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field private static final ATTR_WORKSPACE:Ljava/lang/String; = "workspace"

.field private static final ATTR_X:Ljava/lang/String; = "x"

.field private static final ATTR_Y:Ljava/lang/String; = "y"

.field private static final FORMATTED_LAYOUT_RES:Ljava/lang/String; = "default_layout_%dx%d"

.field private static final FORMATTED_LAYOUT_RES_WITH_HOSTEAT:Ljava/lang/String; = "default_layout_%dx%d_h%s"

.field private static final HOTSEAT_CONTAINER_NAME:Ljava/lang/String;

.field private static final LAYOUT_RES:Ljava/lang/String; = "default_layout"

.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "AutoInstalls"

.field private static final TAG_APPWIDGET:Ljava/lang/String; = "appwidget"

.field private static final TAG_APP_ICON:Ljava/lang/String; = "appicon"

.field private static final TAG_AUTO_INSTALL:Ljava/lang/String; = "autoinstall"

.field private static final TAG_CUSTOMWIDGET:Ljava/lang/String; = "customwidget"

.field private static final TAG_EXTRA:Ljava/lang/String; = "extra"

.field private static final TAG_FOLDER:Ljava/lang/String; = "folder"

.field private static final TAG_INCLUDE:Ljava/lang/String; = "include"

.field private static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final TAG_WORKSPACE:Ljava/lang/String; = "workspace"


# instance fields
.field final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field protected final mCallback:Lnet/oneplus/h2launcher/AutoInstallsLayout$LayoutParserCallback;

.field final mContext:Landroid/content/Context;

.field protected mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private final mHotseatAllAppsRank:I

.field protected final mLayoutId:I

.field protected final mPackageManager:Landroid/content/pm/PackageManager;

.field protected final mRootTag:Ljava/lang/String;

.field protected final mSourceRes:Landroid/content/res/Resources;

.field private final mTemp:[J

.field final mValues:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    const/16 v0, -0x65

    .line 145
    invoke-static {v0}, Lnet/oneplus/h2launcher/LauncherSettings$Favorites;->containerToString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->HOTSEAT_CONTAINER_NAME:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lnet/oneplus/h2launcher/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetHost"    # Landroid/appwidget/AppWidgetHost;
    .param p3, "callback"    # Lnet/oneplus/h2launcher/AutoInstallsLayout$LayoutParserCallback;
    .param p4, "res"    # Landroid/content/res/Resources;
    .param p5, "layoutId"    # I
    .param p6, "rootTag"    # Ljava/lang/String;

    .prologue
    .line 170
    .line 171
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getInvariantDeviceProfile()Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-result-object v0

    iget v7, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->hotseatAllAppsRank:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 170
    invoke-direct/range {v0 .. v7}, Lnet/oneplus/h2launcher/AutoInstallsLayout;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lnet/oneplus/h2launcher/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;I)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lnet/oneplus/h2launcher/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetHost"    # Landroid/appwidget/AppWidgetHost;
    .param p3, "callback"    # Lnet/oneplus/h2launcher/AutoInstallsLayout$LayoutParserCallback;
    .param p4, "res"    # Landroid/content/res/Resources;
    .param p5, "layoutId"    # I
    .param p6, "rootTag"    # Ljava/lang/String;
    .param p7, "hotseatAllAppsRank"    # I

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mTemp:[J

    .line 177
    iput-object p1, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mContext:Landroid/content/Context;

    .line 178
    iput-object p2, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 179
    iput-object p3, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mCallback:Lnet/oneplus/h2launcher/AutoInstallsLayout$LayoutParserCallback;

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 182
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    .line 183
    iput-object p6, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mRootTag:Ljava/lang/String;

    .line 185
    iput-object p4, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    .line 186
    iput p5, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mLayoutId:I

    .line 187
    iput p7, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mHotseatAllAppsRank:I

    .line 188
    return-void
.end method

.method protected static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "firstElementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 691
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, "type":I
    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 694
    :cond_1
    if-eq v0, v2, :cond_2

    .line 695
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 698
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 699
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 702
    :cond_3
    return-void
.end method

.method static copyInteger(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1
    .param p0, "from"    # Landroid/content/ContentValues;
    .param p1, "to"    # Landroid/content/ContentValues;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 739
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 740
    return-void
.end method

.method static get(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lnet/oneplus/h2launcher/AutoInstallsLayout$LayoutParserCallback;)Lnet/oneplus/h2launcher/AutoInstallsLayout;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetHost"    # Landroid/appwidget/AppWidgetHost;
    .param p2, "callback"    # Lnet/oneplus/h2launcher/AutoInstallsLayout$LayoutParserCallback;

    .prologue
    .line 71
    const-string v1, "android.autoinstalls.config.action.PLAY_AUTO_INSTALL"

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 71
    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/Utilities;->findSystemApk(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/util/Pair;

    move-result-object v0

    .line 73
    .local v0, "customizationApkInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/content/res/Resources;>;"
    if-nez v0, :cond_0

    .line 74
    const/4 v1, 0x0

    .line 76
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/content/res/Resources;

    invoke-static {p0, v1, v2, p1, p2}, Lnet/oneplus/h2launcher/AutoInstallsLayout;->get(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Resources;Landroid/appwidget/AppWidgetHost;Lnet/oneplus/h2launcher/AutoInstallsLayout$LayoutParserCallback;)Lnet/oneplus/h2launcher/AutoInstallsLayout;

    move-result-object v1

    goto :goto_0
.end method

.method static get(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Resources;Landroid/appwidget/AppWidgetHost;Lnet/oneplus/h2launcher/AutoInstallsLayout$LayoutParserCallback;)Lnet/oneplus/h2launcher/AutoInstallsLayout;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "targetRes"    # Landroid/content/res/Resources;
    .param p3, "appWidgetHost"    # Landroid/appwidget/AppWidgetHost;
    .param p4, "callback"    # Lnet/oneplus/h2launcher/AutoInstallsLayout$LayoutParserCallback;

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 82
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getInvariantDeviceProfile()Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-result-object v7

    .line 85
    .local v7, "grid":Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "default_layout_%dx%d_h%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, v7, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numColumns:I

    .line 86
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, v7, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numRows:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, v7, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numHotseatIcons:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    .line 85
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 87
    .local v8, "layoutName":Ljava/lang/String;
    const-string v0, "xml"

    invoke-virtual {p2, v8, v0, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 90
    .local v5, "layoutId":I
    if-nez v5, :cond_0

    .line 91
    const-string v0, "AutoInstalls"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Formatted layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found. Trying layout without hosteat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "default_layout_%dx%d"

    new-array v2, v9, [Ljava/lang/Object;

    iget v3, v7, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numColumns:I

    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, v7, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numRows:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 93
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 95
    const-string v0, "xml"

    invoke-virtual {p2, v8, v0, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 99
    :cond_0
    if-nez v5, :cond_1

    .line 100
    const-string v0, "AutoInstalls"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Formatted layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found. Trying the default layout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v0, "default_layout"

    const-string v1, "xml"

    invoke-virtual {p2, v0, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 104
    :cond_1
    if-nez v5, :cond_2

    .line 105
    const-string v0, "AutoInstalls"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout definition not found in package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v0, 0x0

    .line 108
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lnet/oneplus/h2launcher/AutoInstallsLayout;

    const-string v6, "workspace"

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/AutoInstallsLayout;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lnet/oneplus/h2launcher/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected static getAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I
    .locals 2
    .param p0, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 723
    const-string v1, "http://schemas.android.com/apk/res-auto/net.oneplus.h2launcher"

    invoke-interface {p0, v1, p1, p2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 726
    .local v0, "value":I
    if-ne v0, p2, :cond_0

    .line 727
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1, p2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 729
    :cond_0
    return v0
.end method

.method protected static getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    .line 709
    const-string v1, "http://schemas.android.com/apk/res-auto/net.oneplus.h2launcher"

    invoke-interface {p0, v1, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 711
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 712
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 714
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected addShortcut(Ljava/lang/String;Landroid/content/Intent;I)J
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "type"    # I

    .prologue
    const/4 v5, 0x1

    .line 288
    iget-object v2, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mCallback:Lnet/oneplus/h2launcher/AutoInstallsLayout$LayoutParserCallback;

    invoke-interface {v2}, Lnet/oneplus/h2launcher/AutoInstallsLayout$LayoutParserCallback;->generateNewItemId()J

    move-result-wide v0

    .line 289
    .local v0, "id":J
    iget-object v2, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v3, "intent"

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v2, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v3, "title"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v2, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v3, "itemType"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 292
    iget-object v2, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v3, "spanX"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 293
    iget-object v2, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v3, "spanY"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 294
    iget-object v2, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v3, "_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 295
    iget-object v2, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mCallback:Lnet/oneplus/h2launcher/AutoInstallsLayout$LayoutParserCallback;

    iget-object v3, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-interface {v2, v3, v4}, Lnet/oneplus/h2launcher/AutoInstallsLayout$LayoutParserCallback;->insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 296
    const-wide/16 v0, -0x1

    .line 298
    .end local v0    # "id":J
    :cond_0
    return-wide v0
.end method

.method protected getFolderElementsMap()Ljava/util/HashMap;
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
    .line 303
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 304
    .local v0, "parsers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lnet/oneplus/h2launcher/AutoInstallsLayout$TagParser;>;"
    const-string v1, "appicon"

    new-instance v2, Lnet/oneplus/h2launcher/AutoInstallsLayout$AppShortcutParser;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/AutoInstallsLayout$AppShortcutParser;-><init>(Lnet/oneplus/h2launcher/AutoInstallsLayout;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v1, "autoinstall"

    new-instance v2, Lnet/oneplus/h2launcher/AutoInstallsLayout$AutoInstallParser;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/AutoInstallsLayout$AutoInstallParser;-><init>(Lnet/oneplus/h2launcher/AutoInstallsLayout;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v1, "shortcut"

    new-instance v2, Lnet/oneplus/h2launcher/AutoInstallsLayout$ShortcutParser;

    iget-object v3, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-direct {v2, p0, v3}, Lnet/oneplus/h2launcher/AutoInstallsLayout$ShortcutParser;-><init>(Lnet/oneplus/h2launcher/AutoInstallsLayout;Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
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
    .line 311
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 312
    .local v0, "parsers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lnet/oneplus/h2launcher/AutoInstallsLayout$TagParser;>;"
    const-string v1, "appicon"

    new-instance v2, Lnet/oneplus/h2launcher/AutoInstallsLayout$AppShortcutParser;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/AutoInstallsLayout$AppShortcutParser;-><init>(Lnet/oneplus/h2launcher/AutoInstallsLayout;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v1, "autoinstall"

    new-instance v2, Lnet/oneplus/h2launcher/AutoInstallsLayout$AutoInstallParser;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/AutoInstallsLayout$AutoInstallParser;-><init>(Lnet/oneplus/h2launcher/AutoInstallsLayout;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string v1, "folder"

    new-instance v2, Lnet/oneplus/h2launcher/AutoInstallsLayout$FolderParser;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/AutoInstallsLayout$FolderParser;-><init>(Lnet/oneplus/h2launcher/AutoInstallsLayout;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string v1, "appwidget"

    new-instance v2, Lnet/oneplus/h2launcher/AutoInstallsLayout$AppWidgetParser;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/AutoInstallsLayout$AppWidgetParser;-><init>(Lnet/oneplus/h2launcher/AutoInstallsLayout;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string v1, "customwidget"

    new-instance v2, Lnet/oneplus/h2launcher/AutoInstallsLayout$CustomWidgetParser;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/AutoInstallsLayout$CustomWidgetParser;-><init>(Lnet/oneplus/h2launcher/AutoInstallsLayout;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string v1, "shortcut"

    new-instance v2, Lnet/oneplus/h2launcher/AutoInstallsLayout$ShortcutParser;

    iget-object v3, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-direct {v2, p0, v3}, Lnet/oneplus/h2launcher/AutoInstallsLayout$ShortcutParser;-><init>(Lnet/oneplus/h2launcher/AutoInstallsLayout;Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    return-object v0
.end method

.method public loadLayout(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)I
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 194
    .local p2, "screenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iput-object p1, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 196
    :try_start_0
    iget v1, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mLayoutId:I

    invoke-virtual {p0, v1, p2}, Lnet/oneplus/h2launcher/AutoInstallsLayout;->parseLayout(ILjava/util/ArrayList;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 199
    :goto_0
    return v1

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AutoInstalls"

    const-string v2, "Got exception parsing layout."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected parseAndAddNode(Landroid/content/res/XmlResourceParser;Ljava/util/HashMap;Ljava/util/ArrayList;)I
    .locals 11
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lnet/oneplus/h2launcher/AutoInstallsLayout$TagParser;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    .local p2, "tagParserMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lnet/oneplus/h2launcher/AutoInstallsLayout$TagParser;>;"
    .local p3, "screenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v8, "include"

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 251
    const-string v8, "workspace"

    const/4 v9, 0x0

    invoke-static {p1, v8, v9}, Lnet/oneplus/h2launcher/AutoInstallsLayout;->getAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v4

    .line 252
    .local v4, "resId":I
    if-eqz v4, :cond_0

    .line 254
    invoke-virtual {p0, v4, p3}, Lnet/oneplus/h2launcher/AutoInstallsLayout;->parseLayout(ILjava/util/ArrayList;)I

    move-result v8

    .line 284
    .end local v4    # "resId":I
    :goto_0
    return v8

    .line 256
    .restart local v4    # "resId":I
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 260
    .end local v4    # "resId":I
    :cond_1
    iget-object v8, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 261
    iget-object v8, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mTemp:[J

    invoke-virtual {p0, p1, v8}, Lnet/oneplus/h2launcher/AutoInstallsLayout;->parseContainerAndScreen(Landroid/content/res/XmlResourceParser;[J)V

    .line 262
    iget-object v8, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mTemp:[J

    const/4 v9, 0x0

    aget-wide v0, v8, v9

    .line 263
    .local v0, "container":J
    iget-object v8, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mTemp:[J

    const/4 v9, 0x1

    aget-wide v6, v8, v9

    .line 265
    .local v6, "screenId":J
    iget-object v8, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v9, "container"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 266
    iget-object v8, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v9, "screen"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 267
    iget-object v8, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v9, "cellX"

    const-string v10, "x"

    invoke-static {p1, v10}, Lnet/oneplus/h2launcher/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v8, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v9, "cellY"

    const-string v10, "y"

    invoke-static {p1, v10}, Lnet/oneplus/h2launcher/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/oneplus/h2launcher/AutoInstallsLayout$TagParser;

    .line 271
    .local v5, "tagParser":Lnet/oneplus/h2launcher/AutoInstallsLayout$TagParser;
    if-nez v5, :cond_2

    .line 273
    const/4 v8, 0x0

    goto :goto_0

    .line 275
    :cond_2
    invoke-interface {v5, p1}, Lnet/oneplus/h2launcher/AutoInstallsLayout$TagParser;->parseAndAdd(Landroid/content/res/XmlResourceParser;)J

    move-result-wide v2

    .line 276
    .local v2, "newElementId":J
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-ltz v8, :cond_4

    .line 278
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-wide/16 v8, -0x64

    cmp-long v8, v0, v8

    if-nez v8, :cond_3

    .line 280
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_3
    const/4 v8, 0x1

    goto :goto_0

    .line 284
    :cond_4
    const/4 v8, 0x0

    goto :goto_0
.end method

.method protected parseContainerAndScreen(Landroid/content/res/XmlResourceParser;[J)V
    .locals 6
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "out"    # [J

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 230
    sget-object v2, Lnet/oneplus/h2launcher/AutoInstallsLayout;->HOTSEAT_CONTAINER_NAME:Ljava/lang/String;

    const-string v3, "container"

    invoke-static {p1, v3}, Lnet/oneplus/h2launcher/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 231
    const-wide/16 v2, -0x65

    aput-wide v2, p2, v4

    .line 233
    const-string v2, "rank"

    invoke-static {p1, v2}, Lnet/oneplus/h2launcher/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 234
    .local v0, "rank":J
    iget v2, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mHotseatAllAppsRank:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .end local v0    # "rank":J
    :goto_0
    aput-wide v0, p2, v5

    .line 239
    :goto_1
    return-void

    .line 234
    .restart local v0    # "rank":J
    :cond_0
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    .line 236
    .end local v0    # "rank":J
    :cond_1
    const-wide/16 v2, -0x64

    aput-wide v2, p2, v4

    .line 237
    const-string v2, "screen"

    invoke-static {p1, v2}, Lnet/oneplus/h2launcher/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, p2, v5

    goto :goto_1
.end method

.method protected parseLayout(ILjava/util/ArrayList;)I
    .locals 6
    .param p1, "layoutId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    .local p2, "screenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v5, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 209
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    iget-object v5, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mRootTag:Ljava/lang/String;

    invoke-static {v2, v5}, Lnet/oneplus/h2launcher/AutoInstallsLayout;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 210
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 212
    .local v1, "depth":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/AutoInstallsLayout;->getLayoutElementsMap()Ljava/util/HashMap;

    move-result-object v3

    .line 213
    .local v3, "tagParserMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lnet/oneplus/h2launcher/AutoInstallsLayout$TagParser;>;"
    const/4 v0, 0x0

    .line 215
    .local v0, "count":I
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    .local v4, "type":I
    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 216
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v1, :cond_2

    :cond_1
    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    .line 217
    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 220
    invoke-virtual {p0, v2, v3, p2}, Lnet/oneplus/h2launcher/AutoInstallsLayout;->parseAndAddNode(Landroid/content/res/XmlResourceParser;Ljava/util/HashMap;Ljava/util/ArrayList;)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_0

    .line 222
    :cond_2
    return v0
.end method

.class public Lnet/oneplus/h2launcher/model/WidgetsModel;
.super Ljava/lang/Object;
.source "WidgetsModel.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WidgetsModel"


# instance fields
.field private final mAppFilter:Lnet/oneplus/h2launcher/AppFilter;

.field private final mAppNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppWidgetMgr:Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

.field private final mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

.field private mContext:Landroid/content/Context;

.field private mIndexer:Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat;

.field private final mPackageItemInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/model/PackageItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRawList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/model/WidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mWidgetAndShortcutNameComparator:Lnet/oneplus/h2launcher/model/WidgetsAndShortcutNameComparator;

.field private final mWidgetsList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lnet/oneplus/h2launcher/model/PackageItemInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/model/WidgetItem;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/oneplus/h2launcher/AssetCache;Lnet/oneplus/h2launcher/AppFilter;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "assetCache"    # Lnet/oneplus/h2launcher/AssetCache;
    .param p3, "appFilter"    # Lnet/oneplus/h2launcher/AppFilter;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mAppWidgetMgr:Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    .line 57
    new-instance v0, Lnet/oneplus/h2launcher/model/WidgetsAndShortcutNameComparator;

    invoke-direct {v0, p1}, Lnet/oneplus/h2launcher/model/WidgetsAndShortcutNameComparator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mWidgetAndShortcutNameComparator:Lnet/oneplus/h2launcher/model/WidgetsAndShortcutNameComparator;

    .line 58
    new-instance v0, Lnet/oneplus/h2launcher/model/AppNameComparator;

    invoke-direct {v0, p1}, Lnet/oneplus/h2launcher/model/AppNameComparator;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/model/AppNameComparator;->getAppInfoComparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mAppNameComparator:Ljava/util/Comparator;

    .line 59
    iput-object p2, p0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    .line 60
    iput-object p3, p0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mAppFilter:Lnet/oneplus/h2launcher/AppFilter;

    .line 61
    new-instance v0, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat;

    invoke-direct {v0, p1}, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mIndexer:Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mWidgetsList:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mRawList:Ljava/util/ArrayList;

    .line 65
    iput-object p1, p0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method private constructor <init>(Lnet/oneplus/h2launcher/model/WidgetsModel;)V
    .locals 1
    .param p1, "model"    # Lnet/oneplus/h2launcher/model/WidgetsModel;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iget-object v0, p1, Lnet/oneplus/h2launcher/model/WidgetsModel;->mAppWidgetMgr:Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    iput-object v0, p0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mAppWidgetMgr:Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    .line 71
    iget-object v0, p1, Lnet/oneplus/h2launcher/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    .line 72
    iget-object v0, p1, Lnet/oneplus/h2launcher/model/WidgetsModel;->mWidgetsList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mWidgetsList:Ljava/util/HashMap;

    .line 73
    iget-object v0, p1, Lnet/oneplus/h2launcher/model/WidgetsModel;->mWidgetAndShortcutNameComparator:Lnet/oneplus/h2launcher/model/WidgetsAndShortcutNameComparator;

    iput-object v0, p0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mWidgetAndShortcutNameComparator:Lnet/oneplus/h2launcher/model/WidgetsAndShortcutNameComparator;

    .line 74
    iget-object v0, p1, Lnet/oneplus/h2launcher/model/WidgetsModel;->mAppNameComparator:Ljava/util/Comparator;

    iput-object v0, p0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mAppNameComparator:Ljava/util/Comparator;

    .line 75
    iget-object v0, p1, Lnet/oneplus/h2launcher/model/WidgetsModel;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    iput-object v0, p0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    .line 76
    iget-object v0, p1, Lnet/oneplus/h2launcher/model/WidgetsModel;->mAppFilter:Lnet/oneplus/h2launcher/AppFilter;

    iput-object v0, p0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mAppFilter:Lnet/oneplus/h2launcher/AppFilter;

    .line 77
    iget-object v0, p1, Lnet/oneplus/h2launcher/model/WidgetsModel;->mIndexer:Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat;

    iput-object v0, p0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mIndexer:Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat;

    .line 78
    iget-object v0, p1, Lnet/oneplus/h2launcher/model/WidgetsModel;->mRawList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mRawList:Ljava/util/ArrayList;

    .line 79
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/model/WidgetsModel;->clone()Lnet/oneplus/h2launcher/model/WidgetsModel;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lnet/oneplus/h2launcher/model/WidgetsModel;
    .locals 1

    .prologue
    .line 202
    new-instance v0, Lnet/oneplus/h2launcher/model/WidgetsModel;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/model/WidgetsModel;-><init>(Lnet/oneplus/h2launcher/model/WidgetsModel;)V

    return-object v0
.end method

.method public getPackageItemInfo(I)Lnet/oneplus/h2launcher/model/PackageItemInfo;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 89
    :cond_0
    const/4 v0, 0x0

    .line 91
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/model/PackageItemInfo;

    goto :goto_0
.end method

.method public getPackageSize()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getRawList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/model/WidgetItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mRawList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSortedWidgets(I)Ljava/util/List;
    .locals 2
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/model/WidgetItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mWidgetsList:Ljava/util/HashMap;

    iget-object v1, p0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public setWidgetsAndShortcuts(Ljava/util/ArrayList;Z)V
    .locals 17
    .param p2, "refresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/model/WidgetItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "rawWidgetsShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/WidgetItem;>;"
    invoke-static {}, Lnet/oneplus/h2launcher/Utilities;->assertWorkerThread()V

    .line 104
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/oneplus/h2launcher/model/WidgetsModel;->mRawList:Ljava/util/ArrayList;

    .line 111
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 114
    .local v10, "tmpPackageItemInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lnet/oneplus/h2launcher/model/PackageItemInfo;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mWidgetsList:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V

    .line 115
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 116
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mWidgetAndShortcutNameComparator:Lnet/oneplus/h2launcher/model/WidgetsAndShortcutNameComparator;

    invoke-virtual {v12}, Lnet/oneplus/h2launcher/model/WidgetsAndShortcutNameComparator;->reset()V

    .line 118
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v12

    invoke-virtual {v12}, Lnet/oneplus/h2launcher/LauncherAppState;->getInvariantDeviceProfile()Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-result-object v3

    .line 120
    .local v3, "idp":Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    new-instance v2, Landroid/content/ComponentName;

    const-string v12, "com.autonavi.manu.widget"

    const-string v13, "com.autonavi.manu.widget.remoteview.MainAppWidgetProvider"

    invoke-direct {v2, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .local v2, "componentAUTONAVI":Landroid/content/ComponentName;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/oneplus/h2launcher/model/WidgetItem;

    .line 127
    .local v4, "item":Lnet/oneplus/h2launcher/model/WidgetItem;
    iget-object v13, v4, Lnet/oneplus/h2launcher/model/WidgetItem;->componentName:Landroid/content/ComponentName;

    if-eqz v13, :cond_1

    iget-object v13, v4, Lnet/oneplus/h2launcher/model/WidgetItem;->componentName:Landroid/content/ComponentName;

    const-string v14, "com.autonavi.manu.widget"

    const-string v15, "com.autonavi.manu.widget.remoteview.MainAppWidgetProvider"

    invoke-static {v13, v14, v15}, Lnet/oneplus/h2launcher/util/ComponentNameHelper;->isSameComponent(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 133
    :cond_1
    iget-object v13, v4, Lnet/oneplus/h2launcher/model/WidgetItem;->widgetInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    if-eqz v13, :cond_2

    iget-object v13, v4, Lnet/oneplus/h2launcher/model/WidgetItem;->widgetInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    iget-boolean v13, v13, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-nez v13, :cond_0

    .line 137
    :cond_2
    iget-object v13, v4, Lnet/oneplus/h2launcher/model/WidgetItem;->widgetInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    if-eqz v13, :cond_3

    .line 139
    iget-object v13, v4, Lnet/oneplus/h2launcher/model/WidgetItem;->widgetInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    iget v13, v13, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->spanX:I

    iget-object v14, v4, Lnet/oneplus/h2launcher/model/WidgetItem;->widgetInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    iget v14, v14, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->minSpanX:I

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 140
    .local v5, "minSpanX":I
    iget-object v13, v4, Lnet/oneplus/h2launcher/model/WidgetItem;->widgetInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    iget v13, v13, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->spanY:I

    iget-object v14, v4, Lnet/oneplus/h2launcher/model/WidgetItem;->widgetInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    iget v14, v14, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->minSpanY:I

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 141
    .local v6, "minSpanY":I
    iget v13, v3, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numColumns:I

    if-gt v5, v13, :cond_0

    iget v13, v3, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numRows:I

    if-gt v6, v13, :cond_0

    .line 151
    .end local v5    # "minSpanX":I
    .end local v6    # "minSpanY":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mAppFilter:Lnet/oneplus/h2launcher/AppFilter;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mAppFilter:Lnet/oneplus/h2launcher/AppFilter;

    iget-object v14, v4, Lnet/oneplus/h2launcher/model/WidgetItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v13, v14}, Lnet/oneplus/h2launcher/AppFilter;->shouldShowApp(Landroid/content/ComponentName;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 159
    :cond_4
    iget-object v13, v4, Lnet/oneplus/h2launcher/model/WidgetItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 160
    .local v9, "packageName":Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/oneplus/h2launcher/model/PackageItemInfo;

    .line 161
    .local v8, "pInfo":Lnet/oneplus/h2launcher/model/PackageItemInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mWidgetsList:Ljava/util/HashMap;

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 162
    .local v11, "widgetsShortcutsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/WidgetItem;>;"
    if-nez v11, :cond_6

    .line 163
    new-instance v11, Ljava/util/ArrayList;

    .end local v11    # "widgetsShortcutsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/WidgetItem;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .restart local v11    # "widgetsShortcutsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/WidgetItem;>;"
    new-instance v8, Lnet/oneplus/h2launcher/model/PackageItemInfo;

    .end local v8    # "pInfo":Lnet/oneplus/h2launcher/model/PackageItemInfo;
    invoke-direct {v8, v9}, Lnet/oneplus/h2launcher/model/PackageItemInfo;-><init>(Ljava/lang/String;)V

    .line 166
    .restart local v8    # "pInfo":Lnet/oneplus/h2launcher/model/PackageItemInfo;
    if-eqz p2, :cond_5

    .line 167
    new-instance v13, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat;

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mIndexer:Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat;

    .line 170
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    iget-object v14, v8, Lnet/oneplus/h2launcher/model/PackageItemInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    const/4 v15, 0x1

    invoke-virtual {v13, v9, v14, v15, v8}, Lnet/oneplus/h2launcher/AssetCache;->getTitleAndIconForApp(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;ZLnet/oneplus/h2launcher/model/PackageItemInfo;)V

    .line 171
    invoke-virtual {v10, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mWidgetsList:Ljava/util/HashMap;

    invoke-virtual {v13, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_6
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 181
    .end local v4    # "item":Lnet/oneplus/h2launcher/model/WidgetItem;
    .end local v8    # "pInfo":Lnet/oneplus/h2launcher/model/PackageItemInfo;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v11    # "widgetsShortcutsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/WidgetItem;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/oneplus/h2launcher/model/PackageItemInfo;

    .line 182
    .local v7, "p":Lnet/oneplus/h2launcher/model/PackageItemInfo;
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mWidgetsList:Ljava/util/HashMap;

    invoke-virtual {v12, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 183
    .restart local v11    # "widgetsShortcutsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/WidgetItem;>;"
    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 186
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/oneplus/h2launcher/model/WidgetItem;

    iget-object v12, v12, Lnet/oneplus/h2launcher/model/WidgetItem;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    iput-object v12, v7, Lnet/oneplus/h2launcher/model/PackageItemInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 187
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    iget-object v14, v7, Lnet/oneplus/h2launcher/model/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v15, v7, Lnet/oneplus/h2launcher/model/PackageItemInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0, v7}, Lnet/oneplus/h2launcher/AssetCache;->getTitleAndIconForApp(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;ZLnet/oneplus/h2launcher/model/PackageItemInfo;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mIndexer:Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat;

    iget-object v14, v7, Lnet/oneplus/h2launcher/model/PackageItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v12, v14}, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat;->computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lnet/oneplus/h2launcher/model/PackageItemInfo;->titleSectionName:Ljava/lang/String;

    goto :goto_1

    .line 192
    .end local v7    # "p":Lnet/oneplus/h2launcher/model/PackageItemInfo;
    .end local v11    # "widgetsShortcutsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/WidgetItem;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/oneplus/h2launcher/model/WidgetsModel;->mAppNameComparator:Ljava/util/Comparator;

    invoke-static {v12, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 193
    return-void
.end method

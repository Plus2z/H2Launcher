.class public Lnet/oneplus/h2launcher/quickpage/DataProvider;
.super Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider;
.source "DataProvider.java"


# static fields
.field public static final PANEL_COUNT_LIMIT:I = 0x10

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

.field private mCallback:Lnet/oneplus/h2launcher/quickpage/QuickPageItem$ActivityCallback;

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;",
            ">;"
        }
    .end annotation
.end field

.field private mSchemeHelper:Lnet/oneplus/h2launcher/quickpage/SchemeHelper;

.field private mStats:Lnet/oneplus/h2launcher/Stats;

.field private mWidgetHost:Lnet/oneplus/h2launcher/LauncherAppWidgetHost;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lnet/oneplus/h2launcher/quickpage/DataProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/oneplus/h2launcher/LauncherAppWidgetHost;Lnet/oneplus/h2launcher/Stats;Lnet/oneplus/h2launcher/AssetCache;Lnet/oneplus/h2launcher/quickpage/SchemeHelper;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Lnet/oneplus/h2launcher/LauncherAppWidgetHost;
    .param p3, "stats"    # Lnet/oneplus/h2launcher/Stats;
    .param p4, "assetCache"    # Lnet/oneplus/h2launcher/AssetCache;
    .param p5, "helper"    # Lnet/oneplus/h2launcher/quickpage/SchemeHelper;

    .prologue
    .line 50
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider;-><init>()V

    .line 51
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mWidgetHost:Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    .line 53
    iput-object p3, p0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mStats:Lnet/oneplus/h2launcher/Stats;

    .line 54
    iput-object p4, p0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    .line 55
    iput-object p5, p0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mSchemeHelper:Lnet/oneplus/h2launcher/quickpage/SchemeHelper;

    .line 56
    check-cast p1, Lnet/oneplus/h2launcher/quickpage/QuickPageItem$ActivityCallback;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mCallback:Lnet/oneplus/h2launcher/quickpage/QuickPageItem$ActivityCallback;

    .line 58
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->loadFromDatabase()V

    .line 59
    return-void
.end method

.method private addToDatabase(Lnet/oneplus/h2launcher/quickpage/QuickPageItem;I)V
    .locals 13
    .param p1, "item"    # Lnet/oneplus/h2launcher/quickpage/QuickPageItem;
    .param p2, "index"    # I

    .prologue
    const-wide/16 v10, -0x1

    const/4 v7, 0x0

    const/4 v12, 0x4

    const/4 v2, 0x2

    .line 129
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->getViewType()I

    move-result v3

    .line 130
    .local v3, "type":I
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->getSize()I

    move-result v4

    .line 131
    .local v4, "size":I
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->getContent()Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, "content":Ljava/lang/String;
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mContext:Landroid/content/Context;

    if-ne v3, v2, :cond_2

    move-object v0, p1

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;

    .line 133
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->getWidgetId()I

    move-result v6

    :goto_0
    if-ne v3, v2, :cond_0

    move-object v0, p1

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;

    .line 134
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->getWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;

    .line 135
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->getWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    :cond_0
    if-ne v3, v12, :cond_3

    move-object v0, p1

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/NotePanel;

    .line 136
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->getReminderTime()J

    move-result-wide v8

    :goto_1
    if-ne v3, v12, :cond_1

    check-cast p1, Lnet/oneplus/h2launcher/quickpage/NotePanel;

    .line 137
    .end local p1    # "item":Lnet/oneplus/h2launcher/quickpage/QuickPageItem;
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->getReminderId()J

    move-result-wide v10

    :cond_1
    move v2, p2

    .line 132
    invoke-static/range {v1 .. v11}, Lnet/oneplus/h2launcher/LauncherModel;->addQuickPageItem(Landroid/content/Context;IIILjava/lang/String;ILjava/lang/String;JJ)V

    .line 138
    return-void

    .line 133
    .restart local p1    # "item":Lnet/oneplus/h2launcher/quickpage/QuickPageItem;
    :cond_2
    const/4 v6, -0x1

    goto :goto_0

    :cond_3
    move-wide v8, v10

    .line 136
    goto :goto_1
.end method

.method private loadFromDatabase()V
    .locals 26

    .prologue
    .line 66
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lnet/oneplus/h2launcher/LauncherModel;->loadQuickPageDb(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v22

    .line 67
    .local v22, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/quickpage/QuickPageItemInfo;>;"
    const/16 v23, 0x0

    .line 69
    .local v23, "shouldRecreateDatabase":Z
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mData:Ljava/util/List;

    .line 71
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mData:Ljava/util/List;

    new-instance v4, Lnet/oneplus/h2launcher/quickpage/HeaderItem;

    invoke-direct {v4}, Lnet/oneplus/h2launcher/quickpage/HeaderItem;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_0
    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lnet/oneplus/h2launcher/quickpage/QuickPageItemInfo;

    .line 74
    .local v21, "info":Lnet/oneplus/h2launcher/quickpage/QuickPageItemInfo;
    move-object/from16 v0, v21

    iget v8, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageItemInfo;->id:I

    .line 75
    .local v8, "id":I
    move-object/from16 v0, v21

    iget v7, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageItemInfo;->size:I

    .line 77
    .local v7, "size":I
    const/4 v2, 0x0

    .line 78
    .local v2, "quickPageItem":Lnet/oneplus/h2launcher/quickpage/QuickPageItem;
    move-object/from16 v0, v21

    iget v3, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageItemInfo;->type:I

    packed-switch v3, :pswitch_data_0

    .line 109
    :cond_1
    :goto_1
    :pswitch_0
    if-eqz v2, :cond_0

    .line 110
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mCallback:Lnet/oneplus/h2launcher/quickpage/QuickPageItem$ActivityCallback;

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->setCallback(Lnet/oneplus/h2launcher/quickpage/QuickPageItem$ActivityCallback;)V

    .line 111
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :pswitch_1
    new-instance v2, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    .end local v2    # "quickPageItem":Lnet/oneplus/h2launcher/quickpage/QuickPageItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mStats:Lnet/oneplus/h2launcher/Stats;

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mSchemeHelper:Lnet/oneplus/h2launcher/quickpage/SchemeHelper;

    invoke-direct/range {v2 .. v8}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;-><init>(Landroid/content/Context;Lnet/oneplus/h2launcher/Stats;Lnet/oneplus/h2launcher/AssetCache;Lnet/oneplus/h2launcher/quickpage/SchemeHelper;II)V

    .line 82
    .restart local v2    # "quickPageItem":Lnet/oneplus/h2launcher/quickpage/QuickPageItem;
    goto :goto_1

    .line 84
    :pswitch_2
    new-instance v2, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    .end local v2    # "quickPageItem":Lnet/oneplus/h2launcher/quickpage/QuickPageItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v7, v8}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;-><init>(Landroid/content/Context;II)V

    .line 85
    .restart local v2    # "quickPageItem":Lnet/oneplus/h2launcher/quickpage/QuickPageItem;
    goto :goto_1

    .line 87
    :pswitch_3
    move-object/from16 v0, v21

    iget-object v3, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageItemInfo;->component:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 88
    move-object/from16 v0, v21

    iget v3, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageItemInfo;->widgetId:I

    move-object/from16 v0, v21

    iget-object v4, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageItemInfo;->component:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v3, v4, v7}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->createWidgetPanel(IILjava/lang/String;I)Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;

    move-result-object v24

    check-cast v24, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;

    .line 90
    .local v24, "widget":Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;
    move-object/from16 v0, v21

    iget v3, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageItemInfo;->widgetId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    invoke-virtual/range {v24 .. v24}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->getWidgetId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 91
    sget-object v3, Lnet/oneplus/h2launcher/quickpage/DataProvider;->TAG:Ljava/lang/String;

    const-string v4, "need update widget with info id: %d, widget id: %d "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, v21

    iget v9, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageItemInfo;->widgetId:I

    .line 92
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    const/4 v6, 0x1

    invoke-virtual/range {v24 .. v24}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->getWidgetId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    .line 91
    invoke-static {v3, v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    invoke-virtual/range {v24 .. v24}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->getWidgetId()I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v3}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->updateItemWidgetId(Lnet/oneplus/h2launcher/quickpage/QuickPageItem;I)V

    .line 96
    :cond_2
    invoke-virtual/range {v24 .. v24}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->isValid()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 97
    move-object/from16 v2, v24

    goto/16 :goto_1

    .line 99
    :cond_3
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 104
    .end local v24    # "widget":Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;
    :pswitch_4
    new-instance v2, Lnet/oneplus/h2launcher/quickpage/NotePanel;

    .end local v2    # "quickPageItem":Lnet/oneplus/h2launcher/quickpage/QuickPageItem;
    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    iget-object v11, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageItemInfo;->content:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-wide v12, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageItemInfo;->reminderTime:J

    move-object/from16 v0, v21

    iget-wide v14, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageItemInfo;->reminderId:J

    move-object/from16 v0, v21

    iget-wide v0, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageItemInfo;->modified:J

    move-wide/from16 v16, v0

    const/16 v20, 0x1

    move-object v9, v2

    move/from16 v18, v7

    move/from16 v19, v8

    invoke-direct/range {v9 .. v20}, Lnet/oneplus/h2launcher/quickpage/NotePanel;-><init>(Landroid/content/Context;Ljava/lang/String;JJJIIZ)V

    .restart local v2    # "quickPageItem":Lnet/oneplus/h2launcher/quickpage/QuickPageItem;
    goto/16 :goto_1

    .line 115
    .end local v2    # "quickPageItem":Lnet/oneplus/h2launcher/quickpage/QuickPageItem;
    .end local v7    # "size":I
    .end local v8    # "id":I
    .end local v21    # "info":Lnet/oneplus/h2launcher/quickpage/QuickPageItemInfo;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mData:Ljava/util/List;

    new-instance v4, Lnet/oneplus/h2launcher/quickpage/FooterItem;

    invoke-direct {v4}, Lnet/oneplus/h2launcher/quickpage/FooterItem;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    if-eqz v23, :cond_5

    .line 119
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->recreateDatabase()V

    .line 121
    :cond_5
    return-void

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private removeFromDatabase(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 141
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mContext:Landroid/content/Context;

    add-int/lit8 v2, p1, -0x1

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/LauncherModel;->removeQuickPageItem(Landroid/content/Context;I)V

    .line 142
    move v0, p1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 143
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mContext:Landroid/content/Context;

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v0, v2}, Lnet/oneplus/h2launcher/LauncherModel;->updateQuickPageItemId(Landroid/content/Context;II)V

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_0
    return-void
.end method


# virtual methods
.method public addItem(Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;)V
    .locals 2
    .param p1, "item"    # Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;

    .prologue
    .line 310
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->getCountExcludingNotes()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    instance-of v0, p1, Lnet/oneplus/h2launcher/quickpage/NotePanel;

    if-nez v0, :cond_0

    .line 315
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 313
    check-cast v0, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->addToDatabase(Lnet/oneplus/h2launcher/quickpage/QuickPageItem;I)V

    .line 314
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mData:Ljava/util/List;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addItemToPosition(Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;I)V
    .locals 2
    .param p1, "item"    # Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;
    .param p2, "index"    # I

    .prologue
    .line 301
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->getCountExcludingNotes()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    instance-of v0, p1, Lnet/oneplus/h2launcher/quickpage/NotePanel;

    if-nez v0, :cond_0

    .line 306
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mData:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 305
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->recreateDatabase()V

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 268
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;

    .line 269
    .local v0, "data":Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;
    instance-of v2, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    if-eqz v2, :cond_0

    .line 270
    check-cast v0, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    .end local v0    # "data":Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->onRemove()V

    goto :goto_0

    .line 273
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 274
    return-void
.end method

.method public contains(I)Z
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 179
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;

    .line 180
    .local v0, "data":Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;
    invoke-interface {v0}, Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;->getViewType()I

    move-result v2

    if-ne p1, v2, :cond_0

    const/4 v1, 0x1

    .line 182
    .end local v0    # "data":Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public containsWidget(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 186
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;

    .line 187
    .local v0, "data":Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;->getViewType()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    move-object v1, v0

    .line 188
    check-cast v1, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->getWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;

    .line 189
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->getWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;

    .line 190
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->getWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 191
    check-cast v0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;

    .end local v0    # "data":Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->getWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    const/4 v1, 0x1

    .line 197
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public containsWidget(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 201
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;

    .line 202
    .local v0, "data":Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;->getViewType()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    move-object v1, v0

    .line 203
    check-cast v1, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->getWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;

    .line 204
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->getWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;

    .line 205
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->getWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 206
    check-cast v1, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->getWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;

    .line 207
    .end local v0    # "data":Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->getWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    const/4 v1, 0x1

    .line 213
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createWidgetPanel(IILjava/lang/String;I)Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;
    .locals 7
    .param p1, "id"    # I
    .param p2, "widgetId"    # I
    .param p3, "component"    # Ljava/lang/String;
    .param p4, "size"    # I

    .prologue
    .line 124
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mWidgetHost:Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    invoke-static {p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    move v4, p2

    move v5, p4

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;-><init>(Landroid/content/Context;Lnet/oneplus/h2launcher/LauncherAppWidgetHost;Landroid/content/ComponentName;III)V

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCountExcludingNotes()I
    .locals 4

    .prologue
    .line 277
    const/4 v1, 0x0

    .line 278
    .local v1, "i":I
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;

    .line 279
    .local v0, "data":Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;
    instance-of v3, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel;

    if-nez v3, :cond_0

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    .end local v0    # "data":Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;
    :cond_1
    return v1
.end method

.method public getCreateNotePanelIndex()I
    .locals 4

    .prologue
    .line 228
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 229
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;

    .line 230
    .local v0, "data":Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;
    const/4 v2, 0x4

    invoke-interface {v0}, Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;->getViewType()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 231
    check-cast v0, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    .end local v0    # "data":Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 228
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getItem(I)Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 293
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 294
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;

    return-object v0
.end method

.method public getNextAvailableId()I
    .locals 4

    .prologue
    .line 217
    const/4 v2, 0x0

    .line 218
    .local v2, "nextId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 219
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    if-eqz v3, :cond_0

    .line 220
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;

    invoke-interface {v3}, Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;->getIndex()I

    move-result v1

    .line 221
    .local v1, "id":I
    if-le v1, v2, :cond_0

    move v2, v1

    .line 218
    .end local v1    # "id":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_1
    add-int/lit8 v3, v2, 0x1

    return v3
.end method

.method public moveItem(II)V
    .locals 2
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .prologue
    .line 319
    if-ne p1, p2, :cond_0

    .line 326
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;

    .line 324
    .local v0, "item":Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mData:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 325
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->recreateDatabase()V

    goto :goto_0
.end method

.method public notifyContainerVisibilityChanged(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 240
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;

    .line 241
    .local v0, "data":Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;
    instance-of v2, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    if-eqz v2, :cond_0

    .line 242
    check-cast v0, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    .end local v0    # "data":Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;
    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->onContainerVisibilityChanged(Z)V

    goto :goto_0

    .line 245
    :cond_1
    return-void
.end method

.method public notifyPermissionsChanged()V
    .locals 3

    .prologue
    .line 260
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;

    .line 261
    .local v0, "data":Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;
    instance-of v2, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    if-eqz v2, :cond_0

    .line 262
    check-cast v0, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    .end local v0    # "data":Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->onPermissionsChanged()V

    goto :goto_0

    .line 265
    :cond_1
    return-void
.end method

.method public notifyUiComponentChanged()V
    .locals 3

    .prologue
    .line 248
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;

    .line 249
    .local v0, "data":Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;
    instance-of v2, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    if-eqz v2, :cond_0

    .line 250
    check-cast v0, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    .end local v0    # "data":Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->onUiComponentChanged()V

    goto :goto_0

    .line 253
    :cond_1
    return-void
.end method

.method public notifyUiComponentChanged(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 256
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->onUiComponentChanged()V

    .line 257
    return-void
.end method

.method public recreateDatabase()V
    .locals 5

    .prologue
    .line 149
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v2, "removedData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;>;"
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lnet/oneplus/h2launcher/LauncherModel;->clearQuickPageDb(Landroid/content/Context;)V

    .line 151
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2

    .line 152
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    .line 153
    .local v1, "item":Lnet/oneplus/h2launcher/quickpage/QuickPageItem;
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->getViewType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    move-object v3, v1

    check-cast v3, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    :cond_0
    add-int/lit8 v3, v0, -0x1

    invoke-direct {p0, v1, v3}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->addToDatabase(Lnet/oneplus/h2launcher/quickpage/QuickPageItem;I)V

    .line 151
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 160
    .end local v1    # "item":Lnet/oneplus/h2launcher/quickpage/QuickPageItem;
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;

    .line 161
    .local v1, "item":Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;
    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mData:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 163
    .end local v1    # "item":Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;
    :cond_3
    return-void
.end method

.method public removeItem(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 330
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->removeFromDatabase(I)V

    .line 333
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;

    .line 335
    .local v0, "removedItem":Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;
    if-eqz v0, :cond_0

    move-object v2, v0

    .line 336
    check-cast v2, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->onRemove()V

    .line 337
    sget-object v2, Lnet/oneplus/h2launcher/quickpage/DataProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removed quick page item = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    instance-of v2, v0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;

    if-eqz v2, :cond_0

    .line 339
    check-cast v0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;

    .end local v0    # "removedItem":Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->getWidgetId()I

    move-result v1

    .line 340
    .local v1, "widgetId":I
    sget-object v2, Lnet/oneplus/h2launcher/quickpage/DataProvider;->TAG:Ljava/lang/String;

    const-string v3, "removed widget id = %d "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mWidgetHost:Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    invoke-virtual {v2, v1}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 344
    .end local v1    # "widgetId":I
    :cond_0
    return-void
.end method

.method public updateItemContent(Lnet/oneplus/h2launcher/quickpage/QuickPageItem;)V
    .locals 3
    .param p1, "item"    # Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    .prologue
    .line 166
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->getIndex()I

    move-result v1

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/LauncherModel;->updateQuickPageItemContent(Landroid/content/Context;ILjava/lang/String;)V

    .line 167
    return-void
.end method

.method public updateItemWidgetId(Lnet/oneplus/h2launcher/quickpage/QuickPageItem;I)V
    .locals 2
    .param p1, "item"    # Lnet/oneplus/h2launcher/quickpage/QuickPageItem;
    .param p2, "widgetId"    # I

    .prologue
    .line 170
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/DataProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->getIndex()I

    move-result v1

    invoke-static {v0, v1, p2}, Lnet/oneplus/h2launcher/LauncherModel;->updateQuickPageItemWidgetId(Landroid/content/Context;II)V

    .line 171
    return-void
.end method

.method public validateContent()V
    .locals 0

    .prologue
    .line 174
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->clear()V

    .line 175
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->loadFromDatabase()V

    .line 176
    return-void
.end method

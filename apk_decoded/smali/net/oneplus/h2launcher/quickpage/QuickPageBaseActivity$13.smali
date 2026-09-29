.class Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$13;
.super Ljava/lang/Object;
.source "QuickPageBaseActivity.java"

# interfaces
.implements Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$ActionMenuCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->configureFloatingMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .prologue
    .line 977
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$13;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonPressed(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;)V
    .locals 27
    .param p1, "button"    # Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    .prologue
    .line 991
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .line 992
    .local v23, "buttonData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$13;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v5}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$000(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/DataProvider;

    move-result-object v5

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->getNextAvailableId()I

    move-result v10

    .line 998
    .local v10, "id":I
    sget-object v5, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$20;->$SwitchMap$net$oneplus$h2launcher$quickpage$view$FloatingActionMenu$MenuItem:[I

    invoke-virtual/range {p1 .. p1}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1062
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1063
    const-string v5, "tile_count"

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$13;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .line 1064
    invoke-static {v6}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$300(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->getItemCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 1063
    move-object/from16 v0, v23

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    invoke-static {}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->get()Lnet/oneplus/h2launcher/util/AnalyticHelper;

    move-result-object v5

    const-string v6, "launcher.shelf"

    move-object/from16 v0, v23

    invoke-virtual {v5, v6, v0}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->putAnalytics(Ljava/lang/String;Ljava/util/Map;)V

    .line 1067
    :cond_0
    return-void

    .line 1000
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$13;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v5}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$1800(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)V

    goto :goto_0

    .line 1003
    :pswitch_1
    const-string v26, "com.oneplus.note"

    .line 1004
    .local v26, "packageName":Ljava/lang/String;
    const-string v24, "com.oneplus.note.ui.QuickNoteWidgetProvider"

    .line 1005
    .local v24, "className":Ljava/lang/String;
    new-instance v25, Landroid/content/ComponentName;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    .local v25, "component":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$13;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->addBuildinWidget(Landroid/content/ComponentName;)I

    goto :goto_0

    .line 1009
    .end local v24    # "className":Ljava/lang/String;
    .end local v25    # "component":Landroid/content/ComponentName;
    .end local v26    # "packageName":Ljava/lang/String;
    :pswitch_2
    const-string v26, "com.oneplus.calendar"

    .line 1010
    .restart local v26    # "packageName":Ljava/lang/String;
    const-string v24, "com.android.calendar.oneplus.appwidget.OPCalendarAppWidgetProvider"

    .line 1011
    .restart local v24    # "className":Ljava/lang/String;
    new-instance v25, Landroid/content/ComponentName;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    .restart local v25    # "component":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$13;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->addBuildinWidget(Landroid/content/ComponentName;)I

    goto :goto_0

    .line 1015
    .end local v24    # "className":Ljava/lang/String;
    .end local v25    # "component":Landroid/content/ComponentName;
    .end local v26    # "packageName":Ljava/lang/String;
    :pswitch_3
    const-string v26, "com.oneplus.card"

    .line 1016
    .restart local v26    # "packageName":Ljava/lang/String;
    const-string v24, "com.oneplus.card.widget.CardWidgetProvider"

    .line 1017
    .restart local v24    # "className":Ljava/lang/String;
    new-instance v25, Landroid/content/ComponentName;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    .restart local v25    # "component":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$13;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->addBuildinWidget(Landroid/content/ComponentName;)I

    goto :goto_0

    .line 1021
    .end local v24    # "className":Ljava/lang/String;
    .end local v25    # "component":Landroid/content/ComponentName;
    .end local v26    # "packageName":Ljava/lang/String;
    :pswitch_4
    new-instance v4, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$13;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$13;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .line 1022
    invoke-virtual {v6}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->getStats()Lnet/oneplus/h2launcher/Stats;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$13;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->getAssetCache()Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$13;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v8}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$1900(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/SchemeHelper;

    move-result-object v8

    const/4 v9, -0x1

    invoke-direct/range {v4 .. v10}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;-><init>(Landroid/content/Context;Lnet/oneplus/h2launcher/Stats;Lnet/oneplus/h2launcher/AssetCache;Lnet/oneplus/h2launcher/quickpage/SchemeHelper;II)V

    .line 1023
    .local v4, "item":Lnet/oneplus/h2launcher/quickpage/QuickPageItem;
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$13;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->setCallback(Lnet/oneplus/h2launcher/quickpage/QuickPageItem$ActivityCallback;)V

    .line 1024
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$13;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v5}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$000(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/DataProvider;

    move-result-object v5

    invoke-virtual {v5, v4}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->addItem(Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;)V

    .line 1025
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$13;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->invalidateList()V

    .line 1026
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$13;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v5}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$200(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$13;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v6}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$100(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemCount()I

    move-result v6

    invoke-virtual {v5, v6}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->smoothScrollToPosition(I)V

    .line 1028
    const-string v5, "board_add"

    .line 1029
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    .line 1028
    move-object/from16 v0, v23

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1032
    .end local v4    # "item":Lnet/oneplus/h2launcher/quickpage/QuickPageItem;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$13;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    const-string v6, "android.permission.READ_CONTACTS"

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/util/PermissionUtils;->hasGrantedPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$13;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .line 1034
    invoke-static {v5}, Lnet/oneplus/h2launcher/Utilities;->shouldShowRequestPermission(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1035
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$13;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    const-string v6, "android.permission.READ_CONTACTS"

    const/16 v7, 0xc8

    invoke-static {v5, v6, v7}, Lnet/oneplus/h2launcher/util/PermissionUtils;->requestPermission(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 1037
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$13;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "hasShowRequestWindow"

    const/4 v7, 0x1

    .line 1038
    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1040
    :cond_1
    new-instance v4, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$13;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6, v10}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;-><init>(Landroid/content/Context;II)V

    .line 1041
    .restart local v4    # "item":Lnet/oneplus/h2launcher/quickpage/QuickPageItem;
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$13;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->setCallback(Lnet/oneplus/h2launcher/quickpage/QuickPageItem$ActivityCallback;)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$13;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v5}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$000(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/DataProvider;

    move-result-object v5

    invoke-virtual {v5, v4}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->addItem(Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;)V

    .line 1043
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$13;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->invalidateList()V

    .line 1044
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$13;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v5}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$200(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$13;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v6}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$100(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemCount()I

    move-result v6

    invoke-virtual {v5, v6}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->smoothScrollToPosition(I)V

    .line 1046
    const-string v5, "board_add"

    .line 1047
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    .line 1046
    move-object/from16 v0, v23

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1050
    .end local v4    # "item":Lnet/oneplus/h2launcher/quickpage/QuickPageItem;
    :pswitch_6
    new-instance v4, Lnet/oneplus/h2launcher/quickpage/NotePanel;

    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$13;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    const-string v13, ""

    const-wide/16 v14, -0x1

    const-wide/16 v16, -0x1

    .line 1051
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const/16 v20, -0x1

    const/16 v22, 0x0

    move-object v11, v4

    move/from16 v21, v10

    invoke-direct/range {v11 .. v22}, Lnet/oneplus/h2launcher/quickpage/NotePanel;-><init>(Landroid/content/Context;Ljava/lang/String;JJJIIZ)V

    .line 1052
    .restart local v4    # "item":Lnet/oneplus/h2launcher/quickpage/QuickPageItem;
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$13;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->setCallback(Lnet/oneplus/h2launcher/quickpage/QuickPageItem$ActivityCallback;)V

    .line 1053
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$13;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v5}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$000(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/DataProvider;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->addItemToPosition(Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;I)V

    .line 1054
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$13;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->invalidateList()V

    .line 1055
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$13;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v5}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$200(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->smoothScrollToPosition(I)V

    .line 1057
    const-string v5, "board_add"

    .line 1058
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    .line 1057
    move-object/from16 v0, v23

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 998
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onCollapse()V
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$13;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$1200(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->hide()V

    .line 987
    return-void
.end method

.method public onExpand()V
    .locals 2

    .prologue
    .line 980
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$13;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$1200(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->setType(I)V

    .line 981
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$13;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$1200(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->show()V

    .line 982
    return-void
.end method

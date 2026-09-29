.class public Lnet/oneplus/h2launcher/oos/StyleConfigurationLoader;
.super Lnet/oneplus/h2launcher/oos/BaseLoader;
.source "StyleConfigurationLoader.java"


# static fields
.field private static final ATTR_ADD_EXTRA_WORKSPACE_ITEMS:Ljava/lang/String; = "add_extra_workspace_items"

.field private static final ATTR_CAPTURE_ENTIRE_SCREEN:Ljava/lang/String; = "capture_entire_screen"

.field private static final ATTR_CARD_TYPE:Ljava/lang/String; = "card_type"

.field private static final ATTR_DISALLOW_SAME_ICON_ON_DESKTOP:Ljava/lang/String; = "disallow_same_icon_on_desktop"

.field private static final ATTR_DRAW_WALLPAPER_COLOR_MASK:Ljava/lang/String; = "draw_wallpaper_color_mask"

.field private static final ATTR_SCROLLABLE_WALLPAPER:Ljava/lang/String; = "scrollable_wallpaper"

.field private static final ATTR_SHOW_ALL_APPS:Ljava/lang/String; = "show_all_apps"

.field private static final ATTR_SHOW_CLEAR_BUTTON:Ljava/lang/String; = "show_clear_button"

.field private static final ATTR_SHOW_DYNAMIC_ICON:Ljava/lang/String; = "show_dynamic_icon"

.field private static final ATTR_SHOW_HOT_SEAT:Ljava/lang/String; = "show_hot_seat"

.field private static final ATTR_SHOW_ICON_REARRANGEMENT:Ljava/lang/String; = "show_icon_rearrangement"

.field private static final ATTR_SHOW_INTERNAL_CLOCK:Ljava/lang/String; = "show_internal_clock"

.field private static final ATTR_SHOW_SEARCH_BAR:Ljava/lang/String; = "show_search_bar"

.field private static final ATTR_SHOW_SEARCH_BAR_IN_OPTIONS:Ljava/lang/String; = "show_search_bar_in_options"

.field private static final ATTR_SHOW_STANDARD_FOLDER:Ljava/lang/String; = "show_standard_folder"

.field private static final ATTR_SHOW_WIDGETS_BUTTON:Ljava/lang/String; = "show_widgets_button"

.field private static final ATTR_SHOW_WIDGETS_CONFIGURABLE:Ljava/lang/String; = "show_widgets_configurable"

.field private static final ATTR_WORKSPACE_ALLOW_REORDERING_HOME_SCREEN:Ljava/lang/String; = "workspace_allow_reordering_home_screen"

.field private static final ATTR_WORKSPACE_COLUMNS:Ljava/lang/String; = "workspace_columns"

.field private static final ATTR_WORKSPACE_ROWS:Ljava/lang/String; = "workspace_rows"

.field private static final ATTR_WORKSPACE_SCREEN_SCALE_IN_OPTIONS:Ljava/lang/String; = "workspace_screen_scale_in_options"

.field private static final DEBUG:Z = false

.field public static final H2_SYSTEM_DEFAULT_ICONS:Ljava/lang/String; = "com.oneplus.iconpack.h2default"

.field public static final O2_SYSTEM_DEFAULT_ICONS:Ljava/lang/String; = "SYSTEM_DEFAULT_ICONS"

.field private static final TAG:Ljava/lang/String; = "Launcher.StyleConfigurationLoader"

.field private static final TAG_CONFIGURATION:Ljava/lang/String; = "configuration"

.field private static final TAG_STYLE:Ljava/lang/String; = "style"


# instance fields
.field private mCallback:Lnet/oneplus/h2launcher/oos/StyleLoaderCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/oos/BaseLoader;-><init>(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method private fillStyleConfigurationInfo(Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 99
    const-string v0, "show_search_bar"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->setShowSearchBar(Z)V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    const-string v0, "show_internal_clock"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->setShowInternalClock(Z)V

    goto :goto_0

    .line 103
    :cond_2
    const-string v0, "show_all_apps"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->setShowAllApps(Z)V

    goto :goto_0

    .line 105
    :cond_3
    const-string v0, "show_hot_seat"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 106
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->setShowHotSeat(Z)V

    goto :goto_0

    .line 107
    :cond_4
    const-string v0, "workspace_rows"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 108
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->setWorkspaceRows(I)V

    goto :goto_0

    .line 109
    :cond_5
    const-string v0, "workspace_columns"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 110
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->setWorkspaceColumns(I)V

    goto :goto_0

    .line 111
    :cond_6
    const-string v0, "card_type"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 112
    invoke-virtual {p1, p3}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->setCardType(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_7
    const-string v0, "show_search_bar_in_options"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 114
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->setShowSearchBarInOptions(Z)V

    goto :goto_0

    .line 115
    :cond_8
    const-string v0, "workspace_screen_scale_in_options"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 116
    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p1, v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->setWorkspaceScreenScaleInOptions(F)V

    goto :goto_0

    .line 117
    :cond_9
    const-string v0, "show_widgets_button"

    invoke-virtual {v0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 118
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->setShowWidgetsButton(Z)V

    goto/16 :goto_0

    .line 119
    :cond_a
    const-string v0, "show_clear_button"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 120
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->setShowClearButton(Z)V

    goto/16 :goto_0

    .line 121
    :cond_b
    const-string v0, "capture_entire_screen"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 122
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->setCaptureEntireScreen(Z)V

    goto/16 :goto_0

    .line 123
    :cond_c
    const-string v0, "draw_wallpaper_color_mask"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 124
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->setDrawWallpaperColorMask(Z)V

    goto/16 :goto_0

    .line 125
    :cond_d
    const-string v0, "scrollable_wallpaper"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 126
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->setScrollableWallpaper(Z)V

    goto/16 :goto_0

    .line 127
    :cond_e
    const-string v0, "add_extra_workspace_items"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 128
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->setAddExtraWorkspaceItems(Z)V

    goto/16 :goto_0

    .line 129
    :cond_f
    const-string v0, "show_dynamic_icon"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 130
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->setShowDynamicIcon(Z)V

    goto/16 :goto_0

    .line 131
    :cond_10
    const-string v0, "show_icon_rearrangement"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 132
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->setShowIconRearrangement(Z)V

    goto/16 :goto_0

    .line 133
    :cond_11
    const-string v0, "show_standard_folder"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 134
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->setShowStandardFolderIconShape(Z)V

    goto/16 :goto_0

    .line 135
    :cond_12
    const-string v0, "workspace_allow_reordering_home_screen"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 136
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->setWorkspaceAllowReorderingHomeScreen(Z)V

    goto/16 :goto_0

    .line 137
    :cond_13
    const-string v0, "show_widgets_configurable"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 138
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->setShowWidgetsConfigurable(Z)V

    goto/16 :goto_0

    .line 139
    :cond_14
    const-string v0, "disallow_same_icon_on_desktop"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->setDisallowSameIconOnDesktop(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public load(Lnet/oneplus/h2launcher/oos/StyleLoaderCallback;)V
    .locals 8
    .param p1, "callback"    # Lnet/oneplus/h2launcher/oos/StyleLoaderCallback;

    .prologue
    const/4 v7, 0x0

    .line 52
    iput-object p1, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationLoader;->mCallback:Lnet/oneplus/h2launcher/oos/StyleLoaderCallback;

    .line 53
    const/4 v3, 0x0

    .line 54
    .local v3, "xmlResourceId":I
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->isSimplifiedLayout()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 55
    const v3, 0x7f080019

    .line 60
    :cond_0
    :goto_0
    new-instance v2, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;

    invoke-direct {v2}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;-><init>()V

    .line 62
    .local v2, "styleConfigurationInfo":Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;
    :try_start_0
    iget-object v5, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 64
    .local v4, "xmlResourceParser":Landroid/content/res/XmlResourceParser;
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    .line 65
    .local v1, "eventType":I
    :goto_1
    const/4 v5, 0x1

    if-eq v1, v5, :cond_4

    .line 66
    packed-switch v1, :pswitch_data_0

    .line 84
    :cond_1
    :goto_2
    :pswitch_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    goto :goto_1

    .line 56
    .end local v1    # "eventType":I
    .end local v2    # "styleConfigurationInfo":Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;
    .end local v4    # "xmlResourceParser":Landroid/content/res/XmlResourceParser;
    :cond_2
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->isStandardLayout()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 57
    const v3, 0x7f08001a

    goto :goto_0

    .line 72
    .restart local v1    # "eventType":I
    .restart local v2    # "styleConfigurationInfo":Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;
    .restart local v4    # "xmlResourceParser":Landroid/content/res/XmlResourceParser;
    :pswitch_1
    :try_start_1
    const-string v5, "configuration"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 73
    const/4 v5, 0x0

    .line 75
    invoke-interface {v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 76
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v6

    .line 73
    invoke-direct {p0, v2, v5, v6}, Lnet/oneplus/h2launcher/oos/StyleConfigurationLoader;->fillStyleConfigurationInfo(Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 87
    .end local v1    # "eventType":I
    .end local v4    # "xmlResourceParser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    iget-object v5, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationLoader;->mCallback:Lnet/oneplus/h2launcher/oos/StyleLoaderCallback;

    if-eqz v5, :cond_3

    .line 91
    iget-object v5, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationLoader;->mCallback:Lnet/oneplus/h2launcher/oos/StyleLoaderCallback;

    invoke-interface {v5, v2}, Lnet/oneplus/h2launcher/oos/StyleLoaderCallback;->onStyleConfigurationLoaded(Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;)V

    .line 92
    iput-object v7, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationLoader;->mCallback:Lnet/oneplus/h2launcher/oos/StyleLoaderCallback;

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    return-void

    .line 90
    .restart local v1    # "eventType":I
    .restart local v4    # "xmlResourceParser":Landroid/content/res/XmlResourceParser;
    :cond_4
    iget-object v5, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationLoader;->mCallback:Lnet/oneplus/h2launcher/oos/StyleLoaderCallback;

    if-eqz v5, :cond_3

    .line 91
    iget-object v5, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationLoader;->mCallback:Lnet/oneplus/h2launcher/oos/StyleLoaderCallback;

    invoke-interface {v5, v2}, Lnet/oneplus/h2launcher/oos/StyleLoaderCallback;->onStyleConfigurationLoaded(Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;)V

    .line 92
    iput-object v7, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationLoader;->mCallback:Lnet/oneplus/h2launcher/oos/StyleLoaderCallback;

    goto :goto_3

    .line 90
    .end local v1    # "eventType":I
    .end local v4    # "xmlResourceParser":Landroid/content/res/XmlResourceParser;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationLoader;->mCallback:Lnet/oneplus/h2launcher/oos/StyleLoaderCallback;

    if-eqz v6, :cond_5

    .line 91
    iget-object v6, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationLoader;->mCallback:Lnet/oneplus/h2launcher/oos/StyleLoaderCallback;

    invoke-interface {v6, v2}, Lnet/oneplus/h2launcher/oos/StyleLoaderCallback;->onStyleConfigurationLoaded(Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;)V

    .line 92
    iput-object v7, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationLoader;->mCallback:Lnet/oneplus/h2launcher/oos/StyleLoaderCallback;

    :cond_5
    throw v5

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected reload()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

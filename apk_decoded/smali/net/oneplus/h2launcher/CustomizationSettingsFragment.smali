.class public Lnet/oneplus/h2launcher/CustomizationSettingsFragment;
.super Landroid/support/v4/app/Fragment;
.source "CustomizationSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;,
        Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter;
    }
.end annotation


# static fields
.field public static final ACTION_SHELF_ENABLED_CHANGED:Ljava/lang/String; = "net.oneplus.h2launcher.action.SHELF_ENABLED_CHANGED"

.field public static final DOUBLE_TAP_ENABLED_SAVED:Ljava/lang/String; = "double_tap_to_lock_enabled_saved"

.field public static final EXTRA_SHELF_ENABLED:Ljava/lang/String; = "net.oneplus.h2launcher.extra.SHELF_ENABLED"

.field public static final GESTURE_SETTINGS:Ljava/lang/String; = "gesture_settings"

.field public static final GESTURE_TYPE_DOUBLE_TAP:I = 0x8

.field public static final GESTURE_TYPE_SHELF:I = 0x0

.field public static final GESTURE_TYPE_SWIPE_DOWN:I = 0x2

.field public static final GESTURE_TYPE_SWIPE_UP:I = 0x1

.field public static final GESTURE_TYPE_WIDGETS:I = 0x3

.field public static final SHELF_ENABLED_SAVED:Ljava/lang/String; = "shelf_enabled_saved"

.field public static final SWIPE_DOWN_ENABLED_SAVED:Ljava/lang/String; = "swipe_down_enabled_saved"

.field public static final SWIPE_UP_ENABLED_SAVED:Ljava/lang/String; = "swipe_up_enabled_saved"

.field public static final TYPE_SWITCH_LAYOUT:I = 0x4

.field public static final WIDGETS_ENABLED_SAVED:Ljava/lang/String; = "widgets_enabled_saved"


# instance fields
.field private final SYSTEM_PROPERTY_KEY_IS_BETA_ROM:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mGestureSharedPrefs:Landroid/content/SharedPreferences;

.field private mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

.field private mSettingEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 43
    const-class v0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;

    .line 44
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->TAG:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->mView:Landroid/view/View;

    .line 66
    iput-object v1, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->mSettingEntries:Ljava/util/ArrayList;

    .line 71
    const-string v0, "ro.build.beta"

    iput-object v0, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->SYSTEM_PROPERTY_KEY_IS_BETA_ROM:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/CustomizationSettingsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/CustomizationSettingsFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->mSettingEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/CustomizationSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/CustomizationSettingsFragment;

    .prologue
    .line 41
    invoke-direct {p0}, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->loadSettingsFromPreferences()V

    return-void
.end method

.method private isEnableLayoutSwitch()Z
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 287
    const/4 v3, 0x0

    .line 289
    .local v3, "isBeta":Ljava/lang/String;
    :try_start_0
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 290
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "get"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v1, v5, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 291
    .local v4, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "ro.build.beta"

    aput-object v10, v8, v9

    invoke-virtual {v4, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 297
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :goto_0
    const-string v5, "1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 298
    iget-object v5, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->TAG:Ljava/lang/String;

    const-string v7, "[isEnableLayoutSwitch] true"

    invoke-static {v5, v7}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 302
    :goto_1
    return v5

    .line 292
    :catch_0
    move-exception v2

    .line 294
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    :goto_2
    invoke-virtual {v2}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    goto :goto_0

    .line 301
    .end local v2    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_0
    iget-object v5, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->TAG:Ljava/lang/String;

    const-string v6, "[isEnableLayoutSwitch] false"

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v7

    .line 302
    goto :goto_1

    .line 292
    :catch_1
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v2

    goto :goto_2
.end method

.method private loadSettingsFromPreferences()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 307
    iget-object v1, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->mSettingEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;

    .line 308
    .local v0, "entry":Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;
    iget v2, v0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;->type:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 310
    :pswitch_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->mGestureSharedPrefs:Landroid/content/SharedPreferences;

    const-string v3, "shelf_enabled_saved"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;->enabled:Z

    goto :goto_0

    .line 313
    :pswitch_2
    iget-object v2, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->mGestureSharedPrefs:Landroid/content/SharedPreferences;

    const-string v3, "swipe_up_enabled_saved"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;->enabled:Z

    goto :goto_0

    .line 316
    :pswitch_3
    iget-object v2, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->mGestureSharedPrefs:Landroid/content/SharedPreferences;

    const-string v3, "swipe_down_enabled_saved"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;->enabled:Z

    goto :goto_0

    .line 319
    :pswitch_4
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/oos/StyleManager;->showWidgetsButton()Z

    move-result v2

    iput-boolean v2, v0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;->enabled:Z

    goto :goto_0

    .line 322
    :pswitch_5
    iget-object v2, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->mGestureSharedPrefs:Landroid/content/SharedPreferences;

    const-string v3, "double_tap_to_lock_enabled_saved"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;->enabled:Z

    goto :goto_0

    .line 326
    .end local v0    # "entry":Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;
    :cond_0
    return-void

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private preparePreferencesEditor(Landroid/content/SharedPreferences$Editor;)V
    .locals 13
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 335
    const-string v6, "0"

    .local v6, "shelfEnabled":Ljava/lang/String;
    const-string v8, "0"

    .local v8, "swipeUpEnabled":Ljava/lang/String;
    const-string v7, "0"

    .local v7, "swipeDownEnabled":Ljava/lang/String;
    const-string v9, "0"

    .local v9, "widgetEnabled":Ljava/lang/String;
    const-string v1, "0"

    .line 336
    .local v1, "doubleTapEnabled":Ljava/lang/String;
    iget-object v10, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->mSettingEntries:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;

    .line 337
    .local v3, "entry":Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;
    iget-boolean v2, v3, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;->enabled:Z

    .line 338
    .local v2, "enabled":Z
    iget v11, v3, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;->type:I

    packed-switch v11, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 340
    :pswitch_1
    const-string v11, "shelf_enabled_saved"

    invoke-interface {p1, v11, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 341
    if-eqz v2, :cond_0

    const-string v6, "1"

    .line 343
    :goto_1
    const-string v0, "net.oneplus.h2launcher.action.SHELF_ENABLED_CHANGED"

    .line 344
    .local v0, "action":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 345
    .local v4, "intent":Landroid/content/Intent;
    const-string v11, "net.oneplus.h2launcher.extra.SHELF_ENABLED"

    invoke-virtual {v4, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 346
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 341
    .end local v0    # "action":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v6, "0"

    goto :goto_1

    .line 350
    :pswitch_2
    const-string v11, "swipe_up_enabled_saved"

    invoke-interface {p1, v11, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 351
    if-eqz v2, :cond_1

    const-string v8, "1"

    .line 352
    :goto_2
    goto :goto_0

    .line 351
    :cond_1
    const-string v8, "0"

    goto :goto_2

    .line 354
    :pswitch_3
    const-string v11, "swipe_down_enabled_saved"

    invoke-interface {p1, v11, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 355
    if-eqz v2, :cond_2

    const-string v7, "1"

    .line 356
    :goto_3
    goto :goto_0

    .line 355
    :cond_2
    const-string v7, "0"

    goto :goto_3

    .line 358
    :pswitch_4
    const-string v11, "widgets_enabled_saved"

    invoke-interface {p1, v11, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 359
    if-eqz v2, :cond_3

    const-string v9, "1"

    .line 360
    :goto_4
    goto :goto_0

    .line 359
    :cond_3
    const-string v9, "0"

    goto :goto_4

    .line 362
    :pswitch_5
    const-string v11, "double_tap_to_lock_enabled_saved"

    invoke-interface {p1, v11, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 363
    if-eqz v2, :cond_4

    const-string v1, "1"

    :goto_5
    goto :goto_0

    :cond_4
    const-string v1, "0"

    goto :goto_5

    .line 369
    .end local v2    # "enabled":Z
    .end local v3    # "entry":Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;
    :cond_5
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 370
    .local v5, "mdmData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "g_shelf"

    invoke-interface {v5, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v10, "g_quick_search"

    invoke-interface {v5, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const-string v10, "g_quick_notification"

    invoke-interface {v5, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    invoke-static {}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->get()Lnet/oneplus/h2launcher/util/AnalyticHelper;

    move-result-object v10

    const-string v11, "launcher.options"

    invoke-virtual {v10, v11, v5}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->putAnalytics(Ljava/lang/String;Ljava/util/Map;)V

    .line 374
    invoke-static {}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->get()Lnet/oneplus/h2launcher/util/AnalyticHelper;

    move-result-object v10

    const-string v11, "launcher.options.h2"

    const-string v12, "h2_widget"

    invoke-virtual {v10, v11, v12, v9}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->putAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    return-void

    .line 338
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private updateSwitchLayoutSub()V
    .locals 5

    .prologue
    .line 144
    iget-object v2, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->mSettingEntries:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->mSettingEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;

    .line 148
    .local v0, "entry":Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;
    if-eqz v0, :cond_0

    .line 151
    iget v3, v0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;->type:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 152
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->isStandardLayout()Z

    move-result v2

    if-eqz v2, :cond_3

    const v1, 0x7f0b00c4

    .line 153
    .local v1, "subtitleResId":I
    :goto_1
    if-nez v1, :cond_4

    const/4 v2, 0x0

    :goto_2
    iput-object v2, v0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;->subtitle:Ljava/lang/String;

    goto :goto_0

    .line 152
    .end local v1    # "subtitleResId":I
    :cond_3
    const v1, 0x7f0b00bf

    goto :goto_1

    .line 153
    .restart local v1    # "subtitleResId":I
    :cond_4
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "gesture_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->mGestureSharedPrefs:Landroid/content/SharedPreferences;

    .line 78
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 83
    iget-object v9, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->mView:Landroid/view/View;

    if-nez v9, :cond_4

    .line 84
    const v9, 0x7f04005f

    const/4 v10, 0x0

    invoke-virtual {p1, v9, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->mView:Landroid/view/View;

    .line 85
    iget-object v9, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->mView:Landroid/view/View;

    const v10, 0x7f110126

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iput-object v9, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 86
    iget-object v9, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setHasFixedSize(Z)V

    .line 87
    new-instance v1, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter;-><init>(Lnet/oneplus/h2launcher/CustomizationSettingsFragment;)V

    .line 88
    .local v1, "adapter":Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter;
    new-instance v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-direct {v3, v9}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 89
    .local v3, "layoutManager":Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->setOrientation(I)V

    .line 90
    iget-object v9, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v9, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setLayoutManager(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)V

    .line 91
    iget-object v9, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v9, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setAdapter(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)V

    .line 93
    iget-object v9, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->mView:Landroid/view/View;

    const v10, 0x7f110095

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 94
    .local v0, "actionbar":Landroid/view/View;
    const v9, 0x7f0e00c3

    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 97
    invoke-static {}, Lnet/oneplus/h2launcher/Utilities;->getDeviceTag()Ljava/lang/String;

    move-result-object v10

    const/4 v9, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v9, :pswitch_data_0

    .line 106
    :goto_1
    iget-object v9, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->mView:Landroid/view/View;

    const v10, 0x7f11001e

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 107
    .local v2, "backButton":Landroid/widget/ImageView;
    if-eqz v2, :cond_1

    .line 108
    const v9, 0x7f0200d7

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    new-instance v9, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$1;

    invoke-direct {v9, p0}, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$1;-><init>(Lnet/oneplus/h2launcher/CustomizationSettingsFragment;)V

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    :cond_1
    const v7, 0x7f0e00be

    .line 118
    .local v7, "textColor":I
    iget-object v9, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->mView:Landroid/view/View;

    const v10, 0x7f11007b

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 119
    .local v8, "title":Landroid/widget/TextView;
    if-eqz v8, :cond_2

    .line 120
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    const v9, 0x7f0b0075

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 124
    :cond_2
    iget-object v9, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->mView:Landroid/view/View;

    const v10, 0x7f1100de

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 125
    .local v6, "saveButton":Landroid/widget/TextView;
    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    .end local v0    # "actionbar":Landroid/view/View;
    .end local v1    # "adapter":Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter;
    .end local v2    # "backButton":Landroid/widget/ImageView;
    .end local v3    # "layoutManager":Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;
    .end local v6    # "saveButton":Landroid/widget/TextView;
    .end local v7    # "textColor":I
    .end local v8    # "title":Landroid/widget/TextView;
    :cond_3
    :goto_2
    iget-object v9, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->mView:Landroid/view/View;

    return-object v9

    .line 97
    .restart local v0    # "actionbar":Landroid/view/View;
    .restart local v1    # "adapter":Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter;
    .restart local v3    # "layoutManager":Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;
    :sswitch_0
    const-string v11, "18821"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v9, 0x0

    goto :goto_0

    :sswitch_1
    const-string v11, "18857"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    .line 100
    :pswitch_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 101
    .local v4, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    const/high16 v10, 0x42100000    # 36.0f

    invoke-static {v9, v10}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScrollerUtils;->convertDpToPx(Landroid/content/Context;F)I

    move-result v9

    iput v9, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 127
    .end local v0    # "actionbar":Landroid/view/View;
    .end local v1    # "adapter":Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter;
    .end local v3    # "layoutManager":Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;
    .end local v4    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    iget-object v9, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 128
    .local v5, "parent":Landroid/view/ViewGroup;
    if-eqz v5, :cond_3

    .line 129
    iget-object v9, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->mView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_2

    .line 97
    nop

    :sswitch_data_0
    .sparse-switch
        0x2ccccf0 -> :sswitch_0
        0x2cccd53 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 138
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 140
    invoke-direct {p0}, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->updateSwitchLayoutSub()V

    .line 141
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 400
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 401
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->saveCustomizationSettings()V

    .line 402
    return-void
.end method

.method saveCustomizationSettings()V
    .locals 2

    .prologue
    .line 329
    iget-object v1, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->mGestureSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 330
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->preparePreferencesEditor(Landroid/content/SharedPreferences$Editor;)V

    .line 331
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 332
    return-void
.end method

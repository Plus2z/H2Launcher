.class public Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;
.super Ljava/lang/Object;
.source "WidgetPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$ViewHolder;,
        Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetSelectionAdapter;,
        Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetPickerCallback;
    }
.end annotation


# static fields
.field public static final PACKAGE_CHANGED_DELAY:I = 0x1f4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetSelectionAdapter;

.field private mCallback:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetPickerCallback;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mShowing:Z

.field private mWidgetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/model/WidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetManager:Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

.field private mWidgetPreviewLoader:Lnet/oneplus/h2launcher/WidgetPreviewLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "widgetManager"    # Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->mWidgetManager:Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    .line 52
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->mWidgetList:Ljava/util/List;

    .line 55
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetSelectionAdapter;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->mWidgetList:Ljava/util/List;

    invoke-direct {v0, p0, p1, v1}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetSelectionAdapter;-><init>(Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->mAdapter:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetSelectionAdapter;

    .line 56
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getWidgetCache()Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->mWidgetPreviewLoader:Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    .line 58
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->initDialog()V

    .line 59
    return-void
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;)Lnet/oneplus/h2launcher/WidgetPreviewLoader;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;

    .prologue
    .line 30
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->mWidgetPreviewLoader:Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    return-object v0
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;)Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetPickerCallback;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;

    .prologue
    .line 30
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->mCallback:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetPickerCallback;

    return-object v0
.end method


# virtual methods
.method public checkPackageContainsInWidgetList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 165
    .local v0, "isExist":Z
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->mWidgetList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/model/WidgetItem;

    .line 166
    .local v1, "item":Lnet/oneplus/h2launcher/model/WidgetItem;
    if-eqz v1, :cond_0

    iget-object v3, v1, Lnet/oneplus/h2launcher/model/WidgetItem;->componentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lnet/oneplus/h2launcher/model/WidgetItem;->componentName:Landroid/content/ComponentName;

    .line 167
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 168
    iget-object v3, v1, Lnet/oneplus/h2launcher/model/WidgetItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    const/4 v0, 0x1

    .line 175
    .end local v1    # "item":Lnet/oneplus/h2launcher/model/WidgetItem;
    :cond_1
    return v0
.end method

.method public checkPackageIsWidget(Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 179
    const/4 v3, 0x0

    .line 181
    .local v3, "isExist":Z
    :try_start_0
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->mWidgetManager:Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->getAllProviders()Ljava/util/List;

    move-result-object v0

    .line 182
    .local v0, "allWidgets":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 183
    .local v2, "info":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v2, :cond_0

    .line 184
    iget-object v6, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 185
    .local v4, "providerPackageName":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 186
    const/4 v3, 0x1

    .line 196
    .end local v0    # "allWidgets":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .end local v2    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v4    # "providerPackageName":Ljava/lang/String;
    :cond_1
    :goto_0
    return v3

    .line 191
    :catch_0
    move-exception v1

    .line 192
    .local v1, "ex":Ljava/lang/IllegalStateException;
    sget-object v5, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->TAG:Ljava/lang/String;

    const-string v6, "myUserId is not running. Kill myself."

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0
.end method

.method public create()V
    .locals 22

    .prologue
    .line 62
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 63
    .local v17, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lnet/oneplus/h2launcher/LauncherAppState;->getInvariantDeviceProfile()Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-result-object v9

    .line 64
    .local v9, "idp":Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->mWidgetManager:Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->getAllProviders()Ljava/util/List;

    move-result-object v3

    .line 65
    .local v3, "allWidgets":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    const-string v13, "cn.ledongli.ldl"

    .line 66
    .local v13, "packageNameLDL":Ljava/lang/String;
    const-string v15, "com.oneplus.card"

    .line 67
    .local v15, "packageNameOPCard":Ljava/lang/String;
    const-string v16, "com.oneplus.note"

    .line 68
    .local v16, "packageNameOPNote":Ljava/lang/String;
    const-string v6, "com.oneplus.note.ui.QuickNoteWidgetProvider"

    .line 69
    .local v6, "classNameOPNoteQuickNote":Ljava/lang/String;
    const-string v5, "com.oneplus.note.ui.DetailWidgetProvider"

    .line 70
    .local v5, "classNameOPNoteDetail":Ljava/lang/String;
    const-string v14, "com.oneplus.calendar"

    .line 71
    .local v14, "packageNameOPCalendar":Ljava/lang/String;
    new-instance v7, Landroid/content/ComponentName;

    const-string v19, "com.oneplus.deskclock"

    const-string v20, "com.oneplus.alarmclock.DigitalAppWidgetProvider"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v7, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .local v7, "componentNameDigitialClock":Landroid/content/ComponentName;
    new-instance v8, Landroid/content/ComponentName;

    const-string v19, "net.oneplus.widget"

    const-string v20, "net.oneplus.widget.appwidget.WeatherWidgetProvider"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v8, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .local v8, "componentOnePlusWidget":Landroid/content/ComponentName;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/appwidget/AppWidgetProviderInfo;

    .line 79
    .local v10, "info":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v10, :cond_0

    .line 80
    iget-object v0, v10, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 81
    .local v11, "packageMane":Ljava/lang/String;
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    .line 83
    move-object/from16 v0, v20

    invoke-static {v0, v10}, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    move-result-object v18

    .line 84
    .local v18, "widgetInfo":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->mWidgetList:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v21, Lnet/oneplus/h2launcher/model/WidgetItem;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v9}, Lnet/oneplus/h2launcher/model/WidgetItem;-><init>(Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;Landroid/content/pm/PackageManager;Lnet/oneplus/h2launcher/InvariantDeviceProfile;)V

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    .end local v10    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v11    # "packageMane":Ljava/lang/String;
    .end local v18    # "widgetInfo":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_2
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/appwidget/AppWidgetProviderInfo;

    .line 90
    .restart local v10    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v10, :cond_2

    .line 91
    iget-object v0, v10, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 92
    .local v12, "packageName":Ljava/lang/String;
    iget-object v0, v10, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, "className":Ljava/lang/String;
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 94
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 95
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 96
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 97
    :cond_3
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    iget-object v0, v10, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    .line 98
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    iget-object v0, v10, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    .line 99
    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 100
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    .line 103
    move-object/from16 v0, v20

    invoke-static {v0, v10}, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    move-result-object v18

    .line 104
    .restart local v18    # "widgetInfo":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->mWidgetList:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v21, Lnet/oneplus/h2launcher/model/WidgetItem;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v9}, Lnet/oneplus/h2launcher/model/WidgetItem;-><init>(Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;Landroid/content/pm/PackageManager;Lnet/oneplus/h2launcher/InvariantDeviceProfile;)V

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 109
    .end local v4    # "className":Ljava/lang/String;
    .end local v10    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v18    # "widgetInfo":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->mAdapter:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetSelectionAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetSelectionAdapter;->notifyDataSetChanged()V

    .line 110
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->mShowing:Z

    .line 114
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->mWidgetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 115
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->mAdapter:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetSelectionAdapter;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetSelectionAdapter;->destroy()V

    .line 116
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->mShowing:Z

    .line 149
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 150
    return-void
.end method

.method public initDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 119
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->mContext:Landroid/content/Context;

    const v2, 0x7f0400ba

    const/4 v3, 0x0

    .line 120
    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 122
    .local v0, "gridView":Landroid/widget/GridView;
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->mAdapter:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetSelectionAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->mContext:Landroid/content/Context;

    .line 124
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 123
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 125
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->mContext:Landroid/content/Context;

    const v2, 0x7f0e035f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setBackgroundColor(I)V

    .line 131
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->mContext:Landroid/content/Context;

    const v3, 0x7f0a02a4

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->mDialog:Landroid/app/Dialog;

    .line 132
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 133
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 134
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 135
    return-void
.end method

.method public invalidateWidgetList()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->mWidgetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 159
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->create()V

    .line 160
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->mShowing:Z

    return v0
.end method

.method public show(Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetPickerCallback;)V
    .locals 2
    .param p1, "callback"    # Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetPickerCallback;

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "WidgetPickerCallback can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->mCallback:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetPickerCallback;

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->mShowing:Z

    .line 144
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 145
    return-void
.end method

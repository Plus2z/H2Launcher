.class public Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
.super Landroid/appwidget/AppWidgetProviderInfo;
.source "LauncherAppWidgetProviderInfo.java"


# instance fields
.field public canReorder:Z

.field public isCustomWidget:Z

.field public minSpanX:I

.field public minSpanY:I

.field public spanX:I

.field public spanY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/oneplus/h2launcher/CustomAppWidget;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "widget"    # Lnet/oneplus/h2launcher/CustomAppWidget;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 57
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    .line 29
    iput-boolean v8, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    .line 30
    iput-boolean v7, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->canReorder:Z

    .line 58
    iput-boolean v7, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    .line 60
    new-instance v7, Landroid/content/ComponentName;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p1, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v7, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 61
    invoke-interface {p2}, Lnet/oneplus/h2launcher/CustomAppWidget;->getIcon()I

    move-result v7

    iput v7, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->icon:I

    .line 62
    invoke-interface {p2}, Lnet/oneplus/h2launcher/CustomAppWidget;->getLabel()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 63
    invoke-interface {p2}, Lnet/oneplus/h2launcher/CustomAppWidget;->getPreviewImage()I

    move-result v7

    iput v7, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->previewImage:I

    .line 64
    invoke-interface {p2}, Lnet/oneplus/h2launcher/CustomAppWidget;->getWidgetLayout()I

    move-result v7

    iput v7, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->initialLayout:I

    .line 65
    invoke-interface {p2}, Lnet/oneplus/h2launcher/CustomAppWidget;->getResizeMode()I

    move-result v7

    iput v7, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->resizeMode:I

    .line 66
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->initSpans()V

    .line 70
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v7

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncher()Lnet/oneplus/h2launcher/Launcher;

    move-result-object v5

    .line 71
    .local v5, "launcher":Lnet/oneplus/h2launcher/Launcher;
    const/4 v0, 0x0

    .line 72
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Launcher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, p1, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    .local v1, "c":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v1, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 80
    :goto_0
    const-class v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 82
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string v7, "providerInfo"

    invoke-virtual {v2, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 83
    .local v6, "providerInfo":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 84
    invoke-virtual {v6, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2

    .line 91
    .end local v6    # "providerInfo":Ljava/lang/reflect/Field;
    :goto_1
    return-void

    .line 76
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    .line 77
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 86
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v4

    .line 87
    .local v4, "e1":Ljava/lang/IllegalAccessException;
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 88
    .end local v4    # "e1":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v3

    .line 89
    .local v3, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v3}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetProviderInfo;-><init>(Landroid/os/Parcel;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->canReorder:Z

    .line 54
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->initSpans()V

    .line 55
    return-void
.end method

.method public static fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 45
    .local v1, "p":Landroid/os/Parcel;
    invoke-virtual {p1, v1, v2}, Landroid/appwidget/AppWidgetProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 46
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 47
    new-instance v0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;-><init>(Landroid/os/Parcel;)V

    .line 48
    .local v0, "lawpi":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 49
    return-object v0
.end method

.method private initSpans()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 94
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    .line 95
    .local v0, "app":Lnet/oneplus/h2launcher/LauncherAppState;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getInvariantDeviceProfile()Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-result-object v1

    .line 98
    .local v1, "idp":Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    iget-object v7, v1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->landscapeProfile:Lnet/oneplus/h2launcher/DeviceProfile;

    invoke-virtual {v7, v8}, Lnet/oneplus/h2launcher/DeviceProfile;->getWorkspacePadding(Z)Landroid/graphics/Rect;

    move-result-object v2

    .line 99
    .local v2, "paddingLand":Landroid/graphics/Rect;
    iget-object v7, v1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->portraitProfile:Lnet/oneplus/h2launcher/DeviceProfile;

    invoke-virtual {v7, v8}, Lnet/oneplus/h2launcher/DeviceProfile;->getWorkspacePadding(Z)Landroid/graphics/Rect;

    move-result-object v3

    .line 103
    .local v3, "paddingPort":Landroid/graphics/Rect;
    iget-object v7, v1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->landscapeProfile:Lnet/oneplus/h2launcher/DeviceProfile;

    iget v7, v7, Lnet/oneplus/h2launcher/DeviceProfile;->widthPx:I

    iget v8, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    iget v8, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    iget-object v8, v1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->portraitProfile:Lnet/oneplus/h2launcher/DeviceProfile;

    iget v8, v8, Lnet/oneplus/h2launcher/DeviceProfile;->widthPx:I

    iget v9, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iget v9, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget v8, v1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numColumns:I

    invoke-static {v7, v8}, Lnet/oneplus/h2launcher/DeviceProfile;->calculateCellWidth(II)I

    move-result v7

    int-to-float v5, v7

    .line 107
    .local v5, "smallestCellWidth":F
    iget-object v7, v1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->landscapeProfile:Lnet/oneplus/h2launcher/DeviceProfile;

    iget v7, v7, Lnet/oneplus/h2launcher/DeviceProfile;->heightPx:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    iget-object v8, v1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->portraitProfile:Lnet/oneplus/h2launcher/DeviceProfile;

    iget v8, v8, Lnet/oneplus/h2launcher/DeviceProfile;->heightPx:I

    iget v9, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget v8, v1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numRows:I

    invoke-static {v7, v8}, Lnet/oneplus/h2launcher/DeviceProfile;->calculateCellWidth(II)I

    move-result v7

    int-to-float v4, v7

    .line 115
    .local v4, "smallestCellHeight":F
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const/4 v9, 0x0

    .line 114
    invoke-static {v7, v8, v9}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    .line 116
    .local v6, "widgetPadding":Landroid/graphics/Rect;
    iget v7, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->minWidth:I

    iget v8, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    iget v8, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v7, v5

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v7, v8

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->spanX:I

    .line 118
    iget v7, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->minHeight:I

    iget v8, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v7, v4

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v7, v8

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->spanY:I

    .line 121
    iget v7, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->minResizeWidth:I

    iget v8, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    iget v8, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v7, v5

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v7, v8

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->minSpanX:I

    .line 123
    iget v7, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->minResizeHeight:I

    iget v8, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v7, v4

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v7, v8

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->minSpanY:I

    .line 125
    return-void
.end method


# virtual methods
.method public getIcon(Landroid/content/Context;Lnet/oneplus/h2launcher/AssetCache;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cache"    # Lnet/oneplus/h2launcher/AssetCache;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 137
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->icon:I

    invoke-virtual {p2, v0, v1}, Lnet/oneplus/h2launcher/AssetCache;->getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    .line 141
    :cond_0
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getInvariantDeviceProfile()Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-result-object v0

    iget v0, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->fillResIconDpi:I

    .line 140
    invoke-super {p0, p1, v0}, Landroid/appwidget/AppWidgetProviderInfo;->loadIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 1
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 129
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-static {v0}, Lnet/oneplus/h2launcher/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMinSpans(Lnet/oneplus/h2launcher/InvariantDeviceProfile;Landroid/content/Context;)Landroid/graphics/Point;
    .locals 4
    .param p1, "idp"    # Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 153
    new-instance v2, Landroid/graphics/Point;

    iget v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->minSpanX:I

    :goto_0
    iget v3, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    iget v1, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->minSpanY:I

    :cond_0
    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public getUser()Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v0

    goto :goto_0
.end method

.method public toString(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 145
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WidgetProviderInfo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "WidgetProviderInfo provider:%s package:%s short:%s label:%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 149
    invoke-virtual {v3}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 148
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

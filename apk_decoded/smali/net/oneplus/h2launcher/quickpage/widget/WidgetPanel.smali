.class public Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;
.super Lnet/oneplus/h2launcher/quickpage/QuickPageItem;
.source "WidgetPanel.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppWidgetHost:Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

.field private mAppWidgetId:I

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAppWidgetProviderInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

.field private mContent:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHasScrollableContent:Z

.field private mMinHeight:I

.field private mParentView:Landroid/widget/FrameLayout;

.field private mResolvedMinHeight:I

.field private mSize:I

.field private mWidget:Landroid/appwidget/AppWidgetHostView;

.field private mWidgetLabel:Ljava/lang/String;

.field private mWidgetValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/oneplus/h2launcher/LauncherAppWidgetHost;Landroid/content/ComponentName;III)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Lnet/oneplus/h2launcher/LauncherAppWidgetHost;
    .param p3, "widgetComponent"    # Landroid/content/ComponentName;
    .param p4, "widgetId"    # I
    .param p5, "size"    # I
    .param p6, "id"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;-><init>()V

    .line 56
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mContext:Landroid/content/Context;

    .line 57
    move/from16 v0, p6

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mId:I

    .line 58
    move/from16 v0, p5

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mSize:I

    .line 60
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v8

    iput-object v8, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 62
    :try_start_0
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "setBindAppWidgetPermission"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 64
    .local v5, "setBindAppWidgetPermission":Ljava/lang/reflect/Method;
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v5, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 73
    .end local v5    # "setBindAppWidgetPermission":Ljava/lang/reflect/Method;
    :goto_0
    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mAppWidgetHost:Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    .line 75
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 77
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f0400dd

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    iput-object v8, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mParentView:Landroid/widget/FrameLayout;

    .line 79
    const/4 v8, -0x1

    move/from16 v0, p4

    if-ne v0, v8, :cond_1

    .line 80
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mAppWidgetHost:Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v8

    iput v8, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mAppWidgetId:I

    .line 81
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v9, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mAppWidgetId:I

    move-object/from16 v0, p3

    invoke-virtual {v8, v9, v0}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v1

    .line 82
    .local v1, "allowed":Z
    if-nez v1, :cond_0

    .line 83
    sget-object v8, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->TAG:Ljava/lang/String;

    const-string v9, "bind widget failed, is the widget component valid?"

    invoke-static {v8, v9}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_0
    sget-object v8, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->TAG:Ljava/lang/String;

    const-string v9, "allowed:%b, id:%d, component:%s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mAppWidgetId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    .end local v1    # "allowed":Z
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 91
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v9

    .line 90
    move-object/from16 v0, p3

    invoke-static {v8, v0, v9}, Lnet/oneplus/h2launcher/LauncherModel;->getProviderInfo(Landroid/content/Context;Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    move-result-object v8

    iput-object v8, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mAppWidgetProviderInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    .line 93
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v9, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mAppWidgetId:I

    invoke-virtual {v8, v9}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v6

    .line 94
    .local v6, "widgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v6, :cond_2

    const/4 v7, 0x1

    .line 96
    .local v7, "widgetInfoValid":Z
    :goto_2
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mAppWidgetProviderInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    if-eqz v8, :cond_4

    if-eqz v7, :cond_4

    .line 97
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mAppWidgetProviderInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    iget-object v9, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mWidgetLabel:Ljava/lang/String;

    .line 98
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->getWidgetView()Landroid/appwidget/AppWidgetHostView;

    move-result-object v8

    iput-object v8, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mWidget:Landroid/appwidget/AppWidgetHostView;

    .line 99
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mWidget:Landroid/appwidget/AppWidgetHostView;

    if-eqz v8, :cond_3

    .line 100
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v4, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 102
    .local v4, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v8, 0x11

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 103
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 105
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mWidget:Landroid/appwidget/AppWidgetHostView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    .line 107
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mAppWidgetProviderInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    iget v8, v8, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->minHeight:I

    iput v8, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mMinHeight:I

    .line 109
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mParentView:Landroid/widget/FrameLayout;

    iget-object v9, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mWidget:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v8, v9, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mParentView:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mWidget:Landroid/appwidget/AppWidgetHostView;

    invoke-static {v8}, Lnet/oneplus/h2launcher/quickpage/view/util/ViewGroupUtils;->hasScrollableChildren(Landroid/view/ViewGroup;)Z

    move-result v8

    iput-boolean v8, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mHasScrollableContent:Z

    .line 113
    const/4 v8, 0x1

    iput-boolean v8, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mWidgetValid:Z

    .line 114
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mAppWidgetProviderInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    invoke-direct {p0, v8}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->isVerticalResize(Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;)Z

    move-result v8

    iput-boolean v8, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mVerticalResizable:Z

    .line 121
    .end local v4    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :goto_3
    return-void

    .line 65
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    .end local v6    # "widgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v7    # "widgetInfoValid":Z
    :catch_0
    move-exception v2

    .line 66
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    sget-object v8, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->TAG:Ljava/lang/String;

    const-string v9, "Failed to get method by reflection: "

    invoke-static {v8, v9, v2}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 67
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 68
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v8, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->TAG:Ljava/lang/String;

    const-string v9, "Failed to invoke the method by reflection: "

    invoke-static {v8, v9, v2}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 69
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v2

    .line 70
    .local v2, "e":Ljava/lang/IllegalAccessException;
    sget-object v8, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->TAG:Ljava/lang/String;

    const-string v9, "Illegal access to the target: "

    invoke-static {v8, v9, v2}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 87
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .restart local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    move/from16 v0, p4

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mAppWidgetId:I

    goto/16 :goto_1

    .line 94
    .restart local v6    # "widgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 116
    .restart local v7    # "widgetInfoValid":Z
    :cond_3
    const/4 v8, 0x0

    iput-boolean v8, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mWidgetValid:Z

    goto :goto_3

    .line 119
    :cond_4
    const/4 v8, 0x0

    iput-boolean v8, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mWidgetValid:Z

    goto :goto_3
.end method

.method static synthetic access$002(Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;I)I
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mResolvedMinHeight:I

    return p1
.end method

.method private covertPxTpDp(I)I
    .locals 6
    .param p1, "px"    # I

    .prologue
    .line 247
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 248
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    int-to-float v1, p1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v1, v2

    return v1
.end method

.method private getWidgetView()Landroid/appwidget/AppWidgetHostView;
    .locals 5

    .prologue
    .line 282
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mAppWidgetHost:Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mContext:Landroid/content/Context;

    iget v3, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mAppWidgetId:I

    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mAppWidgetProviderInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    .line 283
    invoke-virtual {v1, v2, v3, v4}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    .line 284
    .local v0, "hostView":Landroid/appwidget/AppWidgetHostView;
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setId(I)V

    .line 285
    return-object v0
.end method

.method private isInHouseWidget()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 293
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    sget-object v3, Lnet/oneplus/h2launcher/widget/WidgetConstant;->IN_HOUSE_WIDGET_LIST:[Landroid/content/ComponentName;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 295
    .local v0, "componentName":Landroid/content/ComponentName;
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mAppWidgetProviderInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    iget-object v5, v5, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 296
    const/4 v1, 0x1

    .line 301
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :cond_0
    return v1

    .line 294
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private isPartnerWidget()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 305
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 306
    sget-object v3, Lnet/oneplus/h2launcher/widget/WidgetConstant;->PARTNER_WIDGET_LIST:[Landroid/content/ComponentName;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 307
    .local v0, "componentName":Landroid/content/ComponentName;
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mAppWidgetProviderInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    iget-object v5, v5, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 308
    const/4 v1, 0x1

    .line 313
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :cond_0
    return v1

    .line 306
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private isVerticalResize(Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;)Z
    .locals 3
    .param p1, "appWidgetProviderInfo"    # Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    .prologue
    .line 124
    const/4 v0, 0x1

    .line 125
    .local v0, "isResizeable":Z
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->isInHouseWidget()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    iget v1, p1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 128
    :cond_0
    :goto_0
    return v0

    .line 126
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWrapContentWidget()Z
    .locals 1

    .prologue
    .line 289
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->isInHouseWidget()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->isPartnerWidget()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mId:I

    return v0
.end method

.method public getMaxHeight()I
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mAppWidgetProviderInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    iget v0, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->minResizeHeight:I

    return v0
.end method

.method public getParent()Landroid/view/View;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mParentView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mSize:I

    return v0
.end method

.method public getStandardHeight(I)I
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 193
    return p1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mWidgetLabel:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00d3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mWidgetLabel:Ljava/lang/String;

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mWidget:Landroid/appwidget/AppWidgetHostView;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x2

    return v0
.end method

.method public getWidgetId()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mAppWidgetId:I

    return v0
.end method

.method public getWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mAppWidgetProviderInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    return-object v0
.end method

.method public hasScrollableContent()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mHasScrollableContent:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mWidgetValid:Z

    return v0
.end method

.method public onContainerVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 259
    return-void
.end method

.method public onItemResizeFinished()V
    .locals 6

    .prologue
    .line 240
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mParentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mSize:I

    .line 241
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mSize:I

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->covertPxTpDp(I)I

    move-result v2

    .line 242
    .local v2, "mSizeInDp":I
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mWidget:Landroid/appwidget/AppWidgetHostView;

    const/4 v1, 0x0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIII)V

    .line 243
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->notifyItemSizeChanged()V

    .line 244
    return-void
.end method

.method public onItemResizeProgress(I)V
    .locals 6
    .param p1, "height"    # I

    .prologue
    .line 234
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mAppWidgetProviderInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    iget v2, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->minWidth:I

    .line 235
    .local v2, "width":I
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mWidget:Landroid/appwidget/AppWidgetHostView;

    const/4 v1, 0x0

    move v3, p1

    move v4, v2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIII)V

    .line 236
    return-void
.end method

.method public onItemViewAttached()V
    .locals 8

    .prologue
    .line 198
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mParentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 199
    .local v7, "parent":Landroid/view/ViewGroup;
    if-eqz v7, :cond_0

    .line 200
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 201
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 202
    invoke-virtual {v7}, Landroid/view/ViewGroup;->requestLayout()V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0154

    .line 205
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 209
    .local v6, "defaultHeight":I
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->isWrapContentWidget()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 211
    invoke-virtual {v7}, Landroid/view/ViewGroup;->requestLayout()V

    .line 212
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel$1;

    invoke-direct {v0, p0, v7, v6}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel$1;-><init>(Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;Landroid/view/ViewGroup;I)V

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 220
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mAppWidgetProviderInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    iget v2, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->minWidth:I

    .line 221
    .local v2, "width":I
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mMinHeight:I

    if-le v6, v0, :cond_3

    move v3, v6

    .line 222
    .local v3, "height":I
    :goto_1
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 223
    invoke-virtual {v7}, Landroid/view/ViewGroup;->requestLayout()V

    .line 225
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mWidget:Landroid/appwidget/AppWidgetHostView;

    const/4 v1, 0x0

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIII)V

    goto :goto_0

    .line 221
    .end local v3    # "height":I
    :cond_3
    iget v3, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mMinHeight:I

    goto :goto_1
.end method

.method public onRemove()V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method public onUiComponentChanged()V
    .locals 0

    .prologue
    .line 254
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 278
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->mContent:Ljava/lang/String;

    .line 279
    return-void
.end method

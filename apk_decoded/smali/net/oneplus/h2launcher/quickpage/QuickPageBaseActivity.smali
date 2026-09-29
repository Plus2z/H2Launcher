.class public abstract Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;
.super Landroid/app/Activity;
.source "QuickPageBaseActivity.java"

# interfaces
.implements Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;
.implements Lnet/oneplus/h2launcher/quickpage/QuickPageItem$ActivityCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$QuickPageContentObserver;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final HEADER_IMAGE:Ljava/lang/String; = "header_image.jpg"

.field public static final PERMISSIONS_REQUEST:I = 0xc8

.field private static final REFRESH_DELAY:I = 0x2bc

.field private static final REQUEST_CREATE_QUICK_PANEL_WIDGET:I = 0x15

.field private static final TAG:Ljava/lang/String;

.field private static sHasContactsPermission:Z


# instance fields
.field private mCurrentDisplayProgress:F

.field private mDimmerBackground:Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;

.field private mDragging:Z

.field private mEditingHolder:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;

.field private mFloatingActionMenu:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

.field private mHandler:Landroid/os/Handler;

.field private mInflated:Z

.field private mIsVisible:Z

.field private mLayoutManager:Lnet/oneplus/h2launcher/quickpage/view/NpaLinearLayoutManager;

.field private mNavigationBarBackground:Landroid/view/View;

.field private mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

.field private mQuickPage:Landroid/support/v4/widget/DrawerLayout;

.field private mQuickPageAdapter:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

.field private mQuickPageContentObserver:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$QuickPageContentObserver;

.field private mRecyclerView:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

.field private mRecyclerViewDragDropManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

.field private mRecyclerViewTouchActionGuardManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;

.field private mResizeHandler:Landroid/os/Handler;

.field private mSchemeHelper:Lnet/oneplus/h2launcher/quickpage/SchemeHelper;

.field private mShowStatusBarOverlay:Z

.field private mStatusBackground:Landroid/view/View;

.field private mStatusBarHeight:I

.field private mWelcomePanel:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

.field private mWidgetPicker:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;

.field private mWrappedAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    const-class v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->$assertionsDisabled:Z

    .line 86
    const-class v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->TAG:Ljava/lang/String;

    .line 90
    sput-boolean v1, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->sHasContactsPermission:Z

    return-void

    :cond_0
    move v0, v1

    .line 83
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mResizeHandler:Landroid/os/Handler;

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/DataProvider;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    return-object v0
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mWrappedAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    return-object v0
.end method

.method static synthetic access$1000(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mFloatingActionMenu:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    return-object v0
.end method

.method static synthetic access$1100(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mResizeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mDimmerBackground:Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;

    return-object v0
.end method

.method static synthetic access$1300(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerViewDragDropManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

    return-object v0
.end method

.method static synthetic access$1400(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/NpaLinearLayoutManager;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mLayoutManager:Lnet/oneplus/h2launcher/quickpage/view/NpaLinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$1500(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .prologue
    .line 83
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mStatusBarHeight:I

    return v0
.end method

.method static synthetic access$1600(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .prologue
    .line 83
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mShowStatusBarOverlay:Z

    return v0
.end method

.method static synthetic access$1602(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mShowStatusBarOverlay:Z

    return p1
.end method

.method static synthetic access$1700(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mStatusBackground:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .prologue
    .line 83
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->showWidgetPickerDialog()V

    return-void
.end method

.method static synthetic access$1900(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/SchemeHelper;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mSchemeHelper:Lnet/oneplus/h2launcher/quickpage/SchemeHelper;

    return-object v0
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerView:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    return-object v0
.end method

.method static synthetic access$2000(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mWidgetPicker:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;

    return-object v0
.end method

.method static synthetic access$2100(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .prologue
    .line 83
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->invalidateContent()V

    return-void
.end method

.method static synthetic access$300(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mQuickPageAdapter:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .prologue
    .line 83
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->isResizingQuickPageItem()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .prologue
    .line 83
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mDragging:Z

    return v0
.end method

.method static synthetic access$602(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mDragging:Z

    return p1
.end method

.method static synthetic access$702(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;)Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;
    .param p1, "x1"    # Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;

    .prologue
    .line 83
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mEditingHolder:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;

    return-object p1
.end method

.method static synthetic access$800(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerViewTouchActionGuardManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;

    return-object v0
.end method

.method static synthetic access$900(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .prologue
    .line 83
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->updateEditableLayout()V

    return-void
.end method

.method private configureFloatingMenu()V
    .locals 2

    .prologue
    .line 975
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mQuickPage:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x7f1100f6

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mFloatingActionMenu:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    .line 976
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mFloatingActionMenu:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->setDataProvider(Lnet/oneplus/h2launcher/quickpage/DataProvider;)V

    .line 977
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mFloatingActionMenu:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    new-instance v1, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$13;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$13;-><init>(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->setCallback(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$ActionMenuCallback;)V

    .line 1069
    return-void
.end method

.method private dismissSettingDialog()V
    .locals 3

    .prologue
    .line 363
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog_tag_setting"

    .line 364
    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 365
    .local v0, "settingDialog":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageDialogFragment;

    if-eqz v1, :cond_0

    .line 366
    check-cast v0, Landroid/app/DialogFragment;

    .end local v0    # "settingDialog":Landroid/app/Fragment;
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 368
    :cond_0
    return-void
.end method

.method private getBuildinWidgetProviders()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1134
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1135
    .local v8, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 1137
    .local v2, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    :try_start_0
    const-string v9, "android.appwidget.AppWidgetManager$LIST_TYPE"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1138
    .local v1, "LIST_TYPE":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v9, "H2_WINDOW_WIDGETS"

    invoke-virtual {v1, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1139
    .local v5, "h2WindowWidgets":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "getInstalledProviders"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    const/4 v12, 0x1

    const-class v13, Landroid/os/UserHandle;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1143
    .local v4, "getInstalledProviders":Ljava/lang/reflect/Method;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput-object v11, v9, v10

    invoke-virtual {v4, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/util/List;

    move-object v8, v0

    .line 1145
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1146
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1147
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1148
    .local v7, "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    sget-object v9, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Installed: provider="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    invoke-static {v7}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->getH2CardCategoryForWidget(Landroid/appwidget/AppWidgetProviderInfo;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1150
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 1153
    .end local v1    # "LIST_TYPE":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "getInstalledProviders":Ljava/lang/reflect/Method;
    .end local v5    # "h2WindowWidgets":Ljava/lang/Object;
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .end local v7    # "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    :catch_0
    move-exception v3

    .line 1154
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    sget-object v9, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->TAG:Ljava/lang/String;

    const-string v10, "Failed to get method: "

    invoke-static {v9, v10, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1164
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :cond_1
    :goto_1
    return-object v8

    .line 1155
    :catch_1
    move-exception v3

    .line 1156
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    sget-object v9, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->TAG:Ljava/lang/String;

    const-string v10, "Failed to find class: "

    invoke-static {v9, v10, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1157
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v3

    .line 1158
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v9, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->TAG:Ljava/lang/String;

    const-string v10, "failed to invoke target: "

    invoke-static {v9, v10, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1159
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v3

    .line 1160
    .local v3, "e":Ljava/lang/IllegalAccessException;
    sget-object v9, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->TAG:Ljava/lang/String;

    const-string v10, "illegal access exception: "

    invoke-static {v9, v10, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1161
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v3

    .line 1162
    .local v3, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v3}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getH2CardCategoryForWidget(Landroid/appwidget/AppWidgetProviderInfo;)Ljava/lang/String;
    .locals 9
    .param p0, "appWidgetInfo"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 1168
    const-string v1, ""

    .line 1171
    .local v1, "category":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "h2CardCategory"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1172
    .local v3, "h2CardCategory":Ljava/lang/reflect/Field;
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1180
    .end local v3    # "h2CardCategory":Ljava/lang/reflect/Field;
    :goto_0
    return-object v1

    .line 1173
    :catch_0
    move-exception v2

    .line 1174
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    sget-object v4, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->TAG:Ljava/lang/String;

    const-string v5, "Cannot find the field: AppWidgetProviderInfo:String h2CardCategory, %s"

    new-array v6, v6, [Ljava/lang/Object;

    .line 1175
    invoke-virtual {v2}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 1174
    invoke-static {v4, v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1176
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v2

    .line 1177
    .local v2, "e":Ljava/lang/IllegalAccessException;
    sget-object v4, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->TAG:Ljava/lang/String;

    const-string v5, "%s"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private inflate()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 690
    const v0, 0x7f0400b6

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mQuickPage:Landroid/support/v4/widget/DrawerLayout;

    .line 692
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mQuickPage:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x7f11019e

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerView:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    .line 694
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/NpaLinearLayoutManager;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/quickpage/view/NpaLinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mLayoutManager:Lnet/oneplus/h2launcher/quickpage/view/NpaLinearLayoutManager;

    .line 695
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerView:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mLayoutManager:Lnet/oneplus/h2launcher/quickpage/view/NpaLinearLayoutManager;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->setLayoutManager(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)V

    .line 696
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerView:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->getScheme()Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;->getBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->setBackgroundColor(I)V

    .line 700
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerViewDragDropManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

    .line 701
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerViewDragDropManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

    invoke-virtual {v0, v8}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->setInitiateOnLongPress(Z)V

    .line 702
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerViewDragDropManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

    invoke-virtual {v0, v9}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->setInitiateOnMove(Z)V

    .line 703
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 705
    .local v7, "extraPadding":I
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerViewDragDropManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

    new-instance v1, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;

    invoke-direct {v1, p0, v7}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$8;-><init>(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;I)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->setOnItemDragEventListener(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager$OnItemDragEventListener;)V

    .line 820
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerViewTouchActionGuardManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;

    .line 821
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerViewTouchActionGuardManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;

    .line 822
    invoke-virtual {v0, v8}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->setInterceptVerticalScrollingWhileAnimationRunning(Z)V

    .line 823
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerViewTouchActionGuardManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;

    invoke-virtual {v0, v8}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->setEnabled(Z)V

    .line 824
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerViewTouchActionGuardManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerViewDragDropManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->setDragDropManager(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;)V

    .line 826
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/DataProvider;

    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherAppState;->getAppWidgetHost()Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    move-result-object v2

    .line 827
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->getStats()Lnet/oneplus/h2launcher/Stats;

    move-result-object v3

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->getAssetCache()Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v4

    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mSchemeHelper:Lnet/oneplus/h2launcher/quickpage/SchemeHelper;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/quickpage/DataProvider;-><init>(Landroid/content/Context;Lnet/oneplus/h2launcher/LauncherAppWidgetHost;Lnet/oneplus/h2launcher/Stats;Lnet/oneplus/h2launcher/AssetCache;Lnet/oneplus/h2launcher/quickpage/SchemeHelper;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    .line 830
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerView:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->getSpring()Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;-><init>(Lnet/oneplus/h2launcher/quickpage/DataProvider;Lnet/oneplus/h2launcher/quickpage/rebound/Spring;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mQuickPageAdapter:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    .line 831
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mQuickPageAdapter:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerViewTouchActionGuardManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;

    invoke-virtual {v0, p0, v1}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->init(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;)V

    .line 832
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mQuickPageAdapter:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mSchemeHelper:Lnet/oneplus/h2launcher/quickpage/SchemeHelper;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->setSchemeHelper(Lnet/oneplus/h2launcher/quickpage/SchemeHelper;)V

    .line 833
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mQuickPageAdapter:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    new-instance v1, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$9;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$9;-><init>(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->setEventListener(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$EventListener;)V

    .line 886
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerViewDragDropManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mQuickPageAdapter:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->createWrappedAdapter(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mWrappedAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    .line 888
    new-instance v6, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator;

    invoke-direct {v6}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator;-><init>()V

    .line 889
    .local v6, "animator":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;
    invoke-virtual {v6, v9}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 890
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v6, v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->setAddDuration(J)V

    .line 893
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerView:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mWrappedAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->setAdapter(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)V

    .line 894
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerView:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    invoke-virtual {v0, v6}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->setItemAnimator(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;)V

    .line 895
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerView:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    new-instance v1, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$10;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$10;-><init>(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->addOnScrollListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;)V

    .line 930
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerViewTouchActionGuardManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerView:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->attachRecyclerView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    .line 931
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerViewDragDropManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerView:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->attachRecyclerView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    .line 933
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mQuickPage:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x7f11019f

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mDimmerBackground:Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;

    .line 934
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mDimmerBackground:Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;

    new-instance v1, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$11;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$11;-><init>(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->setCallback(Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground$Callback;)V

    .line 957
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mQuickPage:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x7f1101a1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mNavigationBarBackground:Landroid/view/View;

    .line 958
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mQuickPage:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x7f1101a2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mStatusBackground:Landroid/view/View;

    .line 959
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0138

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mStatusBarHeight:I

    .line 961
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->configureFloatingMenu()V

    .line 962
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->areSoftwareKeysEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->updateMarginsForConfigChange(Z)V

    .line 964
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerView:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    new-instance v1, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$12;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$12;-><init>(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->setShowMainButtonRunnable(Ljava/lang/Runnable;)V

    .line 971
    iput-boolean v8, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mInflated:Z

    .line 972
    return-void
.end method

.method private invalidateContent()V
    .locals 1

    .prologue
    .line 1307
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    if-eqz v0, :cond_0

    .line 1308
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->validateContent()V

    .line 1310
    :cond_0
    return-void
.end method

.method private isResizingQuickPageItem()Z
    .locals 1

    .prologue
    .line 1365
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mQuickPageAdapter:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mQuickPageAdapter:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->isLongPressing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mEditingHolder:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mEditingHolder:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->isResizing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showWidgetPickerDialog()V
    .locals 2

    .prologue
    .line 1194
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mWidgetPicker:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;

    new-instance v1, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$16;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$16;-><init>(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->show(Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetPickerCallback;)V

    .line 1234
    return-void
.end method

.method private updateEditableLayout()V
    .locals 6

    .prologue
    .line 679
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mQuickPageAdapter:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->getItemCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    .line 680
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerView:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    invoke-virtual {v3, v1}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->findViewHolderForAdapterPosition(I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v2

    .line 681
    .local v2, "item":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 682
    check-cast v0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;

    .line 683
    .local v0, "holder":Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->updateItemEditableLayout()V

    .line 684
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mQuickPageAdapter:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    iget-object v4, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->container:Lnet/oneplus/h2launcher/quickpage/widget/SpringFrameLayout;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->getAdapterPosition()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->updateItemLayout(Landroid/view/View;I)V

    .line 679
    .end local v0    # "holder":Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 687
    .end local v2    # "item":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_1
    return-void
.end method


# virtual methods
.method public addBuildinWidget(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 1086
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->addBuildinWidget(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public addBuildinWidget(Landroid/content/ComponentName;I)I
    .locals 10
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "widgetId"    # I

    .prologue
    const/4 v5, -0x1

    .line 1090
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->getNextAvailableId()I

    move-result v6

    .line 1091
    .local v6, "id":I
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherAppState;->getAppWidgetHost()Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    move-result-object v2

    .line 1092
    .local v2, "widgetHost":Lnet/oneplus/h2launcher/LauncherAppWidgetHost;
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;-><init>(Landroid/content/Context;Lnet/oneplus/h2launcher/LauncherAppWidgetHost;Landroid/content/ComponentName;III)V

    .line 1095
    .local v0, "widget":Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1096
    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->setCallback(Lnet/oneplus/h2launcher/quickpage/QuickPageItem$ActivityCallback;)V

    .line 1097
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->addItem(Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;)V

    .line 1098
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->invalidateList()V

    .line 1099
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerView:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mWrappedAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    invoke-virtual {v1, v3}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->smoothScrollToPosition(I)V

    .line 1101
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mFloatingActionMenu:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->collapse()V

    .line 1103
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerView:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    new-instance v3, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$14;

    invoke-direct {v3, p0, v0, v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$14;-><init>(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;Lnet/oneplus/h2launcher/LauncherAppWidgetHost;)V

    invoke-virtual {v1, v3}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->post(Ljava/lang/Runnable;)Z

    .line 1116
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1117
    .local v7, "mdmData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "widget_add"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    const-string v1, "widget_count"

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mQuickPageAdapter:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    .line 1119
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->getWidgetCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 1118
    invoke-interface {v7, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    invoke-static {}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->get()Lnet/oneplus/h2launcher/util/AnalyticHelper;

    move-result-object v1

    const-string v3, "launcher.shelf"

    invoke-virtual {v1, v3, v7}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->putAnalytics(Ljava/lang/String;Ljava/util/Map;)V

    .line 1122
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->getWidgetId()I

    move-result v5

    .line 1125
    .end local v7    # "mdmData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return v5

    .line 1124
    :cond_0
    sget-object v1, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->TAG:Ljava/lang/String;

    const-string v3, "the app widget is invalid, widget id: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->getWidgetId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-static {v1, v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public addNote(Ljava/lang/String;JJ)V
    .locals 14
    .param p1, "note"    # Ljava/lang/String;
    .param p2, "reminderTime"    # J
    .param p4, "reminderId"    # J

    .prologue
    .line 1072
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->getCreateNotePanelIndex()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 1073
    .local v0, "index":I
    new-instance v1, Lnet/oneplus/h2launcher/quickpage/NotePanel;

    .line 1074
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v10, -0x1

    add-int/lit8 v11, v0, -0x1

    const/4 v12, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    invoke-direct/range {v1 .. v12}, Lnet/oneplus/h2launcher/quickpage/NotePanel;-><init>(Landroid/content/Context;Ljava/lang/String;JJJIIZ)V

    .line 1075
    .local v1, "item":Lnet/oneplus/h2launcher/quickpage/QuickPageItem;
    invoke-virtual {v1, p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->setCallback(Lnet/oneplus/h2launcher/quickpage/QuickPageItem$ActivityCallback;)V

    .line 1076
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    invoke-virtual {v2, v1, v0}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->addItemToPosition(Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;I)V

    .line 1077
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->invalidateList()V

    .line 1078
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerView:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->smoothScrollToPosition(I)V

    .line 1081
    invoke-static {}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->get()Lnet/oneplus/h2launcher/util/AnalyticHelper;

    move-result-object v2

    const-string v3, "launcher.shelf"

    const-string v4, "board_add"

    .line 1082
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    .line 1081
    invoke-virtual {v2, v3, v4, v5}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->putAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    return-void
.end method

.method public addWidgetToWidgetList(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1290
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mInflated:Z

    if-eqz v0, :cond_0

    .line 1291
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$18;

    invoke-direct {v1, p0, p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$18;-><init>(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;Ljava/lang/String;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1301
    :cond_0
    return-void
.end method

.method public areDialogsShowing()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1237
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog_tag_setting"

    .line 1238
    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 1240
    .local v0, "isSettingDialogShowing":Z
    :goto_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mWidgetPicker:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mWidgetPicker:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-eqz v0, :cond_3

    :cond_1
    :goto_1
    return v1

    .end local v0    # "isSettingDialogShowing":Z
    :cond_2
    move v0, v2

    .line 1238
    goto :goto_0

    .restart local v0    # "isSettingDialogShowing":Z
    :cond_3
    move v1, v2

    .line 1240
    goto :goto_1
.end method

.method public closeDrawer()V
    .locals 2

    .prologue
    .line 603
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mQuickPage:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 604
    return-void
.end method

.method protected createQuickPage()V
    .locals 4

    .prologue
    .line 132
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;

    .line 133
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;-><init>(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mWidgetPicker:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;

    .line 134
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mWidgetPicker:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->create()V

    .line 136
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->inflate()V

    .line 139
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v0

    new-instance v1, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$1;-><init>(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/util/TaskWorker;->post(Ljava/lang/Runnable;)V

    .line 147
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lnet/oneplus/h2launcher/LauncherSettings$ExternalWidget;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mQuickPageContentObserver:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$QuickPageContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 149
    return-void
.end method

.method public dismissWidgetPicker()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mWidgetPicker:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mWidgetPicker:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mWidgetPicker:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->dismiss()V

    .line 360
    :cond_0
    return-void
.end method

.method public abstract getAssetCache()Lnet/oneplus/h2launcher/AssetCache;
.end method

.method public getCurrentDisplayProgress()F
    .locals 1

    .prologue
    .line 607
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mCurrentDisplayProgress:F

    return v0
.end method

.method protected getHeaderFile()Ljava/io/File;
    .locals 7

    .prologue
    .line 1351
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "header_image.jpg"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1353
    .local v1, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1354
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1355
    sget-object v2, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->TAG:Ljava/lang/String;

    const-string v3, "create file failed: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "header_image.jpg"

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1361
    :cond_0
    :goto_0
    return-object v1

    .line 1358
    :catch_0
    move-exception v0

    .line 1359
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected getHeaderUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1347
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->getHeaderFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public abstract getModel()Lnet/oneplus/h2launcher/LauncherModel;
.end method

.method public getQuickPageView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mQuickPage:Landroid/support/v4/widget/DrawerLayout;

    return-object v0
.end method

.method public getScheme()Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mSchemeHelper:Lnet/oneplus/h2launcher/quickpage/SchemeHelper;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/SchemeHelper;->getCurrentScheme()Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;

    move-result-object v0

    return-object v0
.end method

.method public abstract getStats()Lnet/oneplus/h2launcher/Stats;
.end method

.method public getWelcomePanel()Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mWelcomePanel:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    return-object v0
.end method

.method public invalidateList()V
    .locals 1

    .prologue
    .line 1316
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mWrappedAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 1317
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mWrappedAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1319
    :cond_0
    return-void
.end method

.method public invalidateListPosted()V
    .locals 2

    .prologue
    .line 1325
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v0

    new-instance v1, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$19;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$19;-><init>(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/util/TaskWorker;->postUI(Ljava/lang/Runnable;)V

    .line 1331
    return-void
.end method

.method protected invalidateScheme()V
    .locals 2

    .prologue
    .line 1337
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mFloatingActionMenu:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    if-eqz v0, :cond_0

    .line 1338
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mFloatingActionMenu:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->getScheme()Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;->getFloatingButtonColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->setMainButtonColor(I)V

    .line 1341
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerView:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    if-eqz v0, :cond_1

    .line 1342
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerView:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->getScheme()Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;->getBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->setBackgroundColor(I)V

    .line 1344
    :cond_1
    return-void
.end method

.method public isDrawerOpen()Z
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mQuickPage:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mQuickPage:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEditingQuickPageItem()Z
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mQuickPageAdapter:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mQuickPageAdapter:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->isLongPressing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQuickPageInflated()Z
    .locals 1

    .prologue
    .line 555
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mInflated:Z

    return v0
.end method

.method public leaveQuickPageEditMode()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 567
    sget-object v6, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->TAG:Ljava/lang/String;

    const-string v7, "leaveQuickPageEditMode: %b %b %b"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    iget-boolean v9, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mInflated:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v5

    iget-boolean v9, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mIsVisible:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v9, 0x2

    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->isResizingQuickPageItem()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 568
    iget-boolean v6, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mInflated:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mIsVisible:Z

    if-eqz v6, :cond_1

    .line 569
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->isResizingQuickPageItem()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 570
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mQuickPageAdapter:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->getItemCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_0

    .line 571
    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerView:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    invoke-virtual {v6, v1}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->findViewHolderForAdapterPosition(I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v3

    .line 573
    .local v3, "item":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v3, :cond_3

    instance-of v6, v3, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;

    if-eqz v6, :cond_3

    move-object v0, v3

    .line 574
    check-cast v0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;

    .line 575
    .local v0, "holder":Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;
    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mQuickPageAdapter:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->getEditableItem()I

    move-result v6

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->getAdapterPosition()I

    move-result v7

    if-ne v6, v7, :cond_2

    move v2, v4

    .line 576
    .local v2, "isCurrentEditItem":Z
    :goto_1
    if-eqz v2, :cond_3

    .line 577
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;->actionUp()V

    .line 584
    .end local v0    # "holder":Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;
    .end local v1    # "i":I
    .end local v2    # "isCurrentEditItem":Z
    .end local v3    # "item":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_0
    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerViewTouchActionGuardManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;

    invoke-virtual {v6, v4}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->setEnabled(Z)V

    .line 585
    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerViewTouchActionGuardManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;

    invoke-virtual {v6, v5}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->setItemInteractionStarted(Z)V

    .line 586
    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerViewTouchActionGuardManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;

    invoke-virtual {v6, v4}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->setMoveEventsEnabled(Z)V

    .line 587
    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mQuickPageAdapter:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->setEditing(Z)V

    .line 588
    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mQuickPageAdapter:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->setLongPressing(ZI)V

    .line 589
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->updateEditableLayout()V

    .line 591
    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mFloatingActionMenu:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->showMainButton()V

    .line 592
    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mFloatingActionMenu:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->collapse()V

    .line 593
    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mResizeHandler:Landroid/os/Handler;

    invoke-virtual {v4, v11}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 594
    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerViewDragDropManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->cancelDrag()V

    .line 595
    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mDimmerBackground:Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->hide()V

    .line 597
    iput-boolean v5, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mDragging:Z

    .line 598
    iput-object v11, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mEditingHolder:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;

    .line 600
    :cond_1
    return-void

    .restart local v0    # "holder":Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;
    .restart local v1    # "i":I
    .restart local v3    # "item":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_2
    move v2, v5

    .line 575
    goto :goto_1

    .line 570
    .end local v0    # "holder":Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$ViewHolder;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 374
    const/16 v1, 0x15

    if-ne p1, v1, :cond_0

    .line 375
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 376
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->getCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x2

    .line 377
    .local v0, "position":I
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->removeItem(I)V

    .line 378
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$5;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$5;-><init>(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)V

    const-wide/16 v4, 0x2bc

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 386
    .end local v0    # "position":I
    :cond_0
    return-void
.end method

.method public onComponentChanged()V
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->notifyUiComponentChanged()V

    .line 535
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->invalidateListPosted()V

    .line 536
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 127
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/SchemeHelper;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/quickpage/SchemeHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mSchemeHelper:Lnet/oneplus/h2launcher/quickpage/SchemeHelper;

    .line 128
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$QuickPageContentObserver;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$QuickPageContentObserver;-><init>(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mQuickPageContentObserver:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$QuickPageContentObserver;

    .line 129
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 396
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 398
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->clear()V

    .line 402
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mWidgetPicker:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mWidgetPicker:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->destroy()V

    .line 406
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerViewDragDropManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

    if-eqz v0, :cond_2

    .line 407
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerViewDragDropManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;->release()V

    .line 408
    iput-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerViewDragDropManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/RecyclerViewDragDropManager;

    .line 411
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerViewTouchActionGuardManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;

    if-eqz v0, :cond_3

    .line 412
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerViewTouchActionGuardManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->release()V

    .line 413
    iput-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerViewTouchActionGuardManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;

    .line 416
    :cond_3
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerView:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    if-eqz v0, :cond_4

    .line 417
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerView:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->clearOnScrollListeners()V

    .line 418
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerView:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->setItemAnimator(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;)V

    .line 419
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerView:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->setAdapter(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)V

    .line 420
    iput-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mRecyclerView:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    .line 423
    :cond_4
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mWrappedAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    if-eqz v0, :cond_5

    .line 424
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mWrappedAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/WrapperAdapterUtils;->releaseAll(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    .line 425
    iput-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mWrappedAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    .line 427
    :cond_5
    iput-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mQuickPageAdapter:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    .line 428
    iput-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mLayoutManager:Lnet/oneplus/h2launcher/quickpage/view/NpaLinearLayoutManager;

    .line 430
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mInflated:Z

    .line 432
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mSchemeHelper:Lnet/oneplus/h2launcher/quickpage/SchemeHelper;

    if-eqz v0, :cond_6

    .line 433
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mSchemeHelper:Lnet/oneplus/h2launcher/quickpage/SchemeHelper;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/SchemeHelper;->destroySchemes()V

    .line 434
    iput-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mSchemeHelper:Lnet/oneplus/h2launcher/quickpage/SchemeHelper;

    .line 437
    :cond_6
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mWelcomePanel:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    if-eqz v0, :cond_7

    invoke-static {p0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->isWeatherEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 438
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mWelcomePanel:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->toggleWeatherUpdate(Z)V

    .line 441
    :cond_7
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mQuickPageContentObserver:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$QuickPageContentObserver;

    if-eqz v0, :cond_8

    .line 442
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mQuickPageContentObserver:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$QuickPageContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 445
    :cond_8
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mFloatingActionMenu:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    if-eqz v0, :cond_9

    .line 446
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mFloatingActionMenu:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->removeGlobalLayoutListeners()V

    .line 448
    :cond_9
    return-void
.end method

.method public onItemAdapterChanged()V
    .locals 0

    .prologue
    .line 523
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->invalidateList()V

    .line 524
    return-void
.end method

.method public onItemContentChanged(Lnet/oneplus/h2launcher/quickpage/QuickPageItem;)V
    .locals 1
    .param p1, "item"    # Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    .prologue
    .line 518
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->updateItemContent(Lnet/oneplus/h2launcher/quickpage/QuickPageItem;)V

    .line 519
    return-void
.end method

.method public onItemSizeChanged()V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->recreateDatabase()V

    .line 529
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 339
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->dismissWidgetPicker()V

    .line 340
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->dismissSettingDialog()V

    .line 343
    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    if-eqz v4, :cond_1

    .line 344
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->getCount()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 345
    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    invoke-virtual {v4, v1}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->getItem(I)Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;

    move-result-object v0

    .line 346
    .local v0, "data":Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;
    instance-of v4, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    if-eqz v4, :cond_0

    move-object v2, v0

    .line 347
    check-cast v2, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    .line 348
    .local v2, "item":Lnet/oneplus/h2launcher/quickpage/QuickPageItem;
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->onNewIntent()V

    .line 344
    .end local v2    # "item":Lnet/oneplus/h2launcher/quickpage/QuickPageItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 353
    .end local v0    # "data":Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 354
    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 486
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->addWidgetToWidgetList(Ljava/lang/String;)V

    .line 487
    const-string v0, "net.oneplus.weather"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    invoke-static {p0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->isWeatherEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 489
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->dismissSettingDialog()V

    .line 490
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mWelcomePanel:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mWelcomePanel:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->toggleWeatherUpdate(Z)V

    .line 493
    :cond_0
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncher()Lnet/oneplus/h2launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getWeatherProvider()Lnet/oneplus/h2launcher/WeatherProvider;

    move-result-object v0

    .line 494
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/WeatherProvider;->registerContentObserver(Landroid/content/ContentResolver;)V

    .line 497
    :cond_1
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 501
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->updateRemoveWidgetList(Ljava/lang/String;)V

    .line 502
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 471
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->updateRemoveWidgetList(Ljava/lang/String;)V

    .line 472
    const-string v0, "net.oneplus.weather"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    invoke-static {p0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->isWeatherEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->dismissSettingDialog()V

    .line 475
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mWelcomePanel:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mWelcomePanel:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->toggleWeatherUpdate(Z)V

    .line 478
    :cond_0
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncher()Lnet/oneplus/h2launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getWeatherProvider()Lnet/oneplus/h2launcher/WeatherProvider;

    move-result-object v0

    .line 479
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/WeatherProvider;->unregisterContentObserver(Landroid/content/ContentResolver;)V

    .line 482
    :cond_1
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)V
    .locals 0
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "replacing"    # Z

    .prologue
    .line 508
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)V
    .locals 0
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "replacing"    # Z

    .prologue
    .line 514
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 390
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 391
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 392
    return-void
.end method

.method public onQuickPageHide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 643
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->leaveQuickPageEditMode()V

    .line 645
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mInflated:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mIsVisible:Z

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->notifyContainerVisibilityChanged(Z)V

    .line 647
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mQuickPage:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 650
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v0

    new-instance v1, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$7;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$7;-><init>(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/util/TaskWorker;->post(Ljava/lang/Runnable;)V

    .line 657
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mIsVisible:Z

    .line 659
    :cond_0
    return-void
.end method

.method public onQuickPageShow(Z)V
    .locals 4
    .param p1, "fromResume"    # Z

    .prologue
    const/4 v3, 0x1

    .line 618
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mInflated:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mIsVisible:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 620
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    invoke-virtual {v0, v3}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->notifyContainerVisibilityChanged(Z)V

    .line 622
    invoke-static {p0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->hasShownPreferenceDialog(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 623
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_CONTACTS"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    invoke-static {p0, v0, v1}, Lnet/oneplus/h2launcher/util/PermissionUtils;->requestPermission(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 625
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hasShowRequestWindow"

    .line 626
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 630
    :cond_0
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v0

    new-instance v1, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$6;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$6;-><init>(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/util/TaskWorker;->post(Ljava/lang/Runnable;)V

    .line 639
    :cond_1
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mIsVisible:Z

    .line 640
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 453
    packed-switch p1, :pswitch_data_0

    .line 467
    :cond_0
    return-void

    .line 455
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 456
    aget-object v1, p2, v0

    const-string v2, "android.permission.READ_CONTACTS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    aget v1, p3, v0

    if-nez v1, :cond_2

    .line 458
    const/4 v1, 0x1

    sput-boolean v1, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->sHasContactsPermission:Z

    .line 459
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->notifyPermissionsChanged()V

    .line 455
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 460
    :cond_2
    aget-object v1, p2, v0

    const-string v2, "android.permission.WRITE_CALENDAR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    aget v1, p3, v0

    if-nez v1, :cond_1

    .line 462
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->notifyPermissionsChanged()V

    goto :goto_1

    .line 453
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 7

    .prologue
    .line 299
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 301
    iget-boolean v5, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mInflated:Z

    if-eqz v5, :cond_1

    .line 302
    const-string v5, "android.permission.READ_CONTACTS"

    .line 303
    invoke-static {p0, v5}, Lnet/oneplus/h2launcher/util/PermissionUtils;->hasGrantedPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 304
    .local v1, "hasContactsPermission":Z
    sget-boolean v5, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->sHasContactsPermission:Z

    if-eq v1, v5, :cond_0

    .line 306
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v5

    new-instance v6, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$4;

    invoke-direct {v6, p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$4;-><init>(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)V

    invoke-virtual {v5, v6}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 314
    :cond_0
    sput-boolean v1, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->sHasContactsPermission:Z

    .line 316
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mWelcomePanel:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    if-eqz v5, :cond_1

    .line 317
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mWelcomePanel:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->updateTitleTextSize()V

    .line 321
    .end local v1    # "hasContactsPermission":Z
    :cond_1
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mFloatingActionMenu:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    if-eqz v5, :cond_2

    .line 322
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mFloatingActionMenu:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->collapse()V

    .line 326
    :cond_2
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    if-eqz v5, :cond_4

    .line 327
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->getCount()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v2, v4, :cond_4

    .line 328
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    invoke-virtual {v5, v2}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->getItem(I)Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;

    move-result-object v0

    .line 329
    .local v0, "data":Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;
    instance-of v5, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    if-eqz v5, :cond_3

    move-object v3, v0

    .line 330
    check-cast v3, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    .line 331
    .local v3, "item":Lnet/oneplus/h2launcher/quickpage/QuickPageItem;
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->onResume()V

    .line 327
    .end local v3    # "item":Lnet/oneplus/h2launcher/quickpage/QuickPageItem;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 335
    .end local v0    # "data":Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;
    .end local v2    # "i":I
    .end local v4    # "size":I
    :cond_4
    return-void
.end method

.method public resetWidgetPicker()V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mWidgetPicker:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->initDialog()V

    .line 552
    return-void
.end method

.method public setCurrentDisplayProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 614
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mCurrentDisplayProgress:F

    .line 615
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 1255
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mInflated:Z

    if-eqz v0, :cond_0

    .line 1256
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->updateMarginsForConfigChange(Z)V

    .line 1258
    :cond_0
    return-void

    .line 1256
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWelcomePanel(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;)V
    .locals 4
    .param p1, "welcomePanel"    # Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    .prologue
    .line 662
    invoke-static {p0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->isWeatherEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 663
    .local v0, "isWeatherEnabled":Z
    const-string v2, "net.oneplus.weather"

    invoke-static {p0, v2}, Lnet/oneplus/h2launcher/Utilities;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 666
    .local v1, "isWeatherInstalled":Z
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mWelcomePanel:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    .line 667
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mWelcomePanel:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, p0, v2}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->configurePanel(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;Z)V

    .line 669
    return-void

    .line 667
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public showDialog(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1184
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$15;

    invoke-direct {v1, p0, p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$15;-><init>(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1191
    return-void
.end method

.method protected updateExternalWidget()V
    .locals 28

    .prologue
    .line 152
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 153
    .local v3, "resolver":Landroid/content/ContentResolver;
    sget-object v4, Lnet/oneplus/h2launcher/LauncherSettings$ExternalWidget;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 155
    .local v24, "widgetCursor":Landroid/database/Cursor;
    invoke-static/range {v24 .. v24}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->isCursorDataAvailable(Landroid/database/Cursor;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 295
    :goto_0
    return-void

    .line 156
    :cond_0
    sget-boolean v4, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    if-nez v24, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 158
    :cond_1
    const-string v4, "_id"

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 159
    .local v16, "indexId":I
    const-string v4, "operationType"

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 160
    .local v17, "indexType":I
    const-string v4, "widgetId"

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 161
    .local v18, "indexWidgetId":I
    const-string v4, "CONTENT"

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 162
    .local v15, "indexContent":I
    const-string v4, "component"

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 164
    .local v14, "indexComponent":I
    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 165
    .local v12, "id":I
    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 166
    .local v22, "type":I
    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 167
    .local v25, "widgetId":I
    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v10, ""

    .line 169
    .local v10, "content":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, v24

    invoke-interface {v0, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v9, ""

    .line 171
    .local v9, "component":Ljava/lang/String;
    :goto_2
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 173
    if-ltz v25, :cond_2

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_6

    .line 174
    :cond_2
    sget-object v4, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->TAG:Ljava/lang/String;

    const-string v5, "ignored invalid widget data, id: %d, component: "

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v26, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v8, v26

    const/16 v26, 0x1

    aput-object v9, v8, v26

    invoke-static {v4, v5, v8}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    sget-object v4, Lnet/oneplus/h2launcher/LauncherSettings$ExternalWidget;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/16 v26, 0x0

    .line 176
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v8, v26

    .line 175
    invoke-virtual {v3, v4, v5, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 177
    .local v20, "removed":I
    if-lez v20, :cond_5

    .line 178
    sget-object v4, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the temporarily data has been removed: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 168
    .end local v9    # "component":Ljava/lang/String;
    .end local v10    # "content":Ljava/lang/String;
    .end local v20    # "removed":I
    :cond_3
    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 170
    .restart local v10    # "content":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v24

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 180
    .restart local v9    # "component":Ljava/lang/String;
    .restart local v20    # "removed":I
    :cond_5
    sget-object v4, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "caution! the temporarily data was not cleaned: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 185
    .end local v20    # "removed":I
    :cond_6
    packed-switch v22, :pswitch_data_0

    .line 288
    :cond_7
    :goto_3
    sget-object v4, Lnet/oneplus/h2launcher/LauncherSettings$ExternalWidget;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/16 v26, 0x0

    .line 289
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v8, v26

    .line 288
    invoke-virtual {v3, v4, v5, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 290
    .restart local v20    # "removed":I
    if-lez v20, :cond_11

    .line 291
    sget-object v4, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the temporarily data has been removed: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 187
    .end local v20    # "removed":I
    :pswitch_0
    sget-object v4, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add external widget with widgetId: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    .line 189
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    const/4 v8, -0x1

    .line 188
    move/from16 v0, v25

    invoke-virtual {v4, v5, v0, v9, v8}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->createWidgetPanel(IILjava/lang/String;I)Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;

    move-result-object v23

    check-cast v23, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;

    .line 191
    .local v23, "widget":Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;
    invoke-virtual/range {v23 .. v23}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->isValid()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 192
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->setCallback(Lnet/oneplus/h2launcher/quickpage/QuickPageItem$ActivityCallback;)V

    .line 194
    const-string v4, "EXTERNAL"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->setContent(Ljava/lang/String;)V

    .line 196
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v4

    new-instance v5, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-direct {v5, v0, v1, v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$2;-><init>(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;I)V

    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/util/TaskWorker;->postUI(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    .line 219
    :cond_8
    sget-object v4, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->TAG:Ljava/lang/String;

    const-string v5, "the app widget is invalid, widget id: %d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v26, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v8, v26

    invoke-static {v4, v5, v8}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 225
    .end local v23    # "widget":Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;
    :pswitch_1
    sget-object v4, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "remove external widget with widgetId: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v6, "widgetId = ? AND component = ? AND type = ?"

    .line 230
    .local v6, "selectionStatement":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 231
    const/4 v4, 0x3

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    const/4 v4, 0x1

    aput-object v9, v7, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    .line 232
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    .line 239
    .local v7, "selectionArguments":[Ljava/lang/String;
    :goto_4
    const/16 v21, 0x0

    .line 241
    .local v21, "shelfCursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v4, Lnet/oneplus/h2launcher/LauncherSettings$QuickPage;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 244
    invoke-static/range {v21 .. v21}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->isCursorDataAvailable(Landroid/database/Cursor;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 245
    sget-object v4, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->TAG:Ljava/lang/String;

    const-string v5, "ignored unexpected widget data, id: %d, component: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v26, 0x0

    .line 246
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v8, v26

    const/16 v26, 0x1

    aput-object v9, v8, v26

    .line 245
    invoke-static {v4, v5, v8}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    if-eqz v21, :cond_7

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 234
    .end local v7    # "selectionArguments":[Ljava/lang/String;
    .end local v21    # "shelfCursor":Landroid/database/Cursor;
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND content = ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 235
    const/4 v4, 0x4

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    const/4 v4, 0x1

    aput-object v9, v7, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    .line 236
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    const/4 v4, 0x3

    const-string v5, "EXTERNAL"

    aput-object v5, v7, v4

    .restart local v7    # "selectionArguments":[Ljava/lang/String;
    goto :goto_4

    .line 249
    .restart local v21    # "shelfCursor":Landroid/database/Cursor;
    :cond_a
    :try_start_1
    sget-boolean v4, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->$assertionsDisabled:Z

    if-nez v4, :cond_c

    if-nez v21, :cond_c

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    :catchall_0
    move-exception v4

    if-eqz v21, :cond_b

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v4

    .line 250
    :cond_c
    :try_start_2
    const-string v4, "_id"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 251
    .local v13, "index":I
    add-int/lit8 v19, v13, 0x1

    .line 255
    .local v19, "position":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->getCount()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_e

    .line 256
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mProvider:Lnet/oneplus/h2launcher/quickpage/DataProvider;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->getItem(I)Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;

    move-result-object v11

    .line 258
    .local v11, "data":Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;
    instance-of v4, v11, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;

    if-eqz v4, :cond_d

    .line 259
    check-cast v11, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;

    .end local v11    # "data":Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;
    invoke-virtual {v11}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->getWidgetId()I

    move-result v4

    move/from16 v0, v25

    if-eq v4, v0, :cond_f

    .line 260
    sget-object v4, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->TAG:Ljava/lang/String;

    const-string v5, "the widget at position %d to be removed is not the one expected with id: %d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v26, 0x0

    .line 261
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v8, v26

    const/16 v26, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v8, v26

    .line 260
    invoke-static {v4, v5, v8}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 281
    if-eqz v21, :cond_7

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 265
    .restart local v11    # "data":Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;
    :cond_d
    :try_start_3
    sget-object v4, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->TAG:Ljava/lang/String;

    const-string v5, "the target Shelf item is not a widget"

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 281
    if-eqz v21, :cond_7

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 269
    .end local v11    # "data":Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;
    :cond_e
    :try_start_4
    sget-object v4, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->TAG:Ljava/lang/String;

    const-string v5, "the widget is not existing anymore"

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 281
    if-eqz v21, :cond_7

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 273
    :cond_f
    :try_start_5
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v4

    new-instance v5, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$3;

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v5, v0, v1}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$3;-><init>(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;I)V

    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/util/TaskWorker;->postUI(Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 281
    if-eqz v21, :cond_10

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 284
    :cond_10
    sget-object v4, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removed the external widget: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 293
    .end local v6    # "selectionStatement":Ljava/lang/String;
    .end local v7    # "selectionArguments":[Ljava/lang/String;
    .end local v13    # "index":I
    .end local v19    # "position":I
    .end local v21    # "shelfCursor":Landroid/database/Cursor;
    .restart local v20    # "removed":I
    :cond_11
    sget-object v4, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "caution! the temporarily data was not cleaned: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected updateMarginsForConfigChange(Z)V
    .locals 2
    .param p1, "hasSoftwareKeys"    # Z

    .prologue
    .line 1245
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mNavigationBarBackground:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1248
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mFloatingActionMenu:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->updateMargin(Z)V

    .line 1251
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mQuickPageAdapter:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->setHasSoftwareKeys(Z)V

    .line 1252
    return-void
.end method

.method public updateRemoveWidgetList(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1265
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mInflated:Z

    if-eqz v0, :cond_0

    .line 1268
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$17;

    invoke-direct {v1, p0, p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$17;-><init>(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;Ljava/lang/String;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1283
    :cond_0
    return-void
.end method

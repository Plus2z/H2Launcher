.class public Lnet/oneplus/h2launcher/oos/StyleManager;
.super Ljava/lang/Object;
.source "StyleManager.java"

# interfaces
.implements Lnet/oneplus/h2launcher/oos/StyleLoaderCallback;


# static fields
.field public static final LAYOUT_STYLE:Ljava/lang/String; = "launcher.layout_style"

.field public static final LAYOUT_STYLE_SIMPLIFIED:I = 0x1

.field public static final LAYOUT_STYLE_STANDARD:I = 0x0

.field public static final LAYOUT_STYLE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String;

.field private static sContext:Landroid/content/Context;

.field private static sInstance:Lnet/oneplus/h2launcher/oos/StyleManager;

.field public static sLayoutStyle:I

.field private static sStyleConfigurationInfo:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;

.field private static sStyleResourceInfo:Lnet/oneplus/h2launcher/oos/StyleResourceInfo;


# instance fields
.field private mStyleConfigurationLoader:Lnet/oneplus/h2launcher/oos/StyleConfigurationLoader;

.field private mStyleResourceLoader:Lnet/oneplus/h2launcher/oos/StyleResourceLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lnet/oneplus/h2launcher/oos/StyleManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/oos/StyleManager;->TAG:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lnet/oneplus/h2launcher/oos/StyleManager;->sContext:Landroid/content/Context;

    .line 195
    const/4 v0, -0x1

    sput v0, Lnet/oneplus/h2launcher/oos/StyleManager;->sLayoutStyle:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sput-object p1, Lnet/oneplus/h2launcher/oos/StyleManager;->sContext:Landroid/content/Context;

    .line 32
    new-instance v0, Lnet/oneplus/h2launcher/oos/StyleConfigurationLoader;

    invoke-direct {v0, p1}, Lnet/oneplus/h2launcher/oos/StyleConfigurationLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/oos/StyleManager;->mStyleConfigurationLoader:Lnet/oneplus/h2launcher/oos/StyleConfigurationLoader;

    .line 33
    new-instance v0, Lnet/oneplus/h2launcher/oos/StyleResourceLoader;

    invoke-direct {v0, p1}, Lnet/oneplus/h2launcher/oos/StyleResourceLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/oos/StyleManager;->mStyleResourceLoader:Lnet/oneplus/h2launcher/oos/StyleResourceLoader;

    .line 34
    iget-object v0, p0, Lnet/oneplus/h2launcher/oos/StyleManager;->mStyleConfigurationLoader:Lnet/oneplus/h2launcher/oos/StyleConfigurationLoader;

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationLoader;->load(Lnet/oneplus/h2launcher/oos/StyleLoaderCallback;)V

    .line 35
    iget-object v0, p0, Lnet/oneplus/h2launcher/oos/StyleManager;->mStyleResourceLoader:Lnet/oneplus/h2launcher/oos/StyleResourceLoader;

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/oos/StyleResourceLoader;->load(Lnet/oneplus/h2launcher/oos/StyleLoaderCallback;)V

    .line 36
    return-void
.end method

.method public static getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lnet/oneplus/h2launcher/oos/StyleManager;->sInstance:Lnet/oneplus/h2launcher/oos/StyleManager;

    return-object v0
.end method

.method public static getLayoutStyle()I
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public static getTableType()I
    .locals 2

    .prologue
    .line 198
    sget-object v0, Lnet/oneplus/h2launcher/oos/StyleManager;->TAG:Ljava/lang/String;

    const-string v1, "Force use China SKU"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const/4 v0, 0x1

    invoke-static {v0}, Lnet/oneplus/h2launcher/oos/StyleManager;->saveLayoutStyle(I)V

    .line 201
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getLayoutStyle()I

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    sget-object v0, Lnet/oneplus/h2launcher/oos/StyleManager;->sInstance:Lnet/oneplus/h2launcher/oos/StyleManager;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lnet/oneplus/h2launcher/oos/StyleManager;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/oos/StyleManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/oneplus/h2launcher/oos/StyleManager;->sInstance:Lnet/oneplus/h2launcher/oos/StyleManager;

    .line 28
    :cond_0
    return-void
.end method

.method public static isO2Device()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public static isSimplifiedLayout()Z
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method public static isStandardLayout()Z
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public static saveLayoutStyle(I)V
    .locals 5
    .param p0, "style"    # I

    .prologue
    .line 217
    sput p0, Lnet/oneplus/h2launcher/oos/StyleManager;->sLayoutStyle:I

    .line 219
    sget-object v2, Lnet/oneplus/h2launcher/oos/StyleManager;->sContext:Landroid/content/Context;

    .line 220
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 219
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 221
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 222
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "launcher.layout_style"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 223
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 224
    return-void
.end method


# virtual methods
.method public addExtraWorkspaceItems()Z
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lnet/oneplus/h2launcher/oos/StyleManager;->sStyleConfigurationInfo:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->getAddExtraWorkspaceItems()Z

    move-result v0

    return v0
.end method

.method public disallowSameIconOnDesktop()Z
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lnet/oneplus/h2launcher/oos/StyleManager;->sStyleConfigurationInfo:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->getDisallowSameIconOnDesktop()Z

    move-result v0

    return v0
.end method

.method public drawWallpaperColorMask()Z
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lnet/oneplus/h2launcher/oos/StyleManager;->sStyleConfigurationInfo:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->getDrawWallpaperColorMask()Z

    move-result v0

    return v0
.end method

.method public getCardType()Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lnet/oneplus/h2launcher/oos/StyleManager;->sStyleConfigurationInfo:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->getCardType()Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;

    move-result-object v0

    return-object v0
.end method

.method public getQuickPageDefaultTiles()I
    .locals 1

    .prologue
    .line 186
    const v0, 0x7f08001c

    return v0
.end method

.method public getResourceId(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/oneplus/h2launcher/oos/StyleResourceInfo$ResourceIdNotFoundException;
        }
    .end annotation

    .prologue
    .line 157
    sget-object v0, Lnet/oneplus/h2launcher/oos/StyleManager;->sStyleResourceInfo:Lnet/oneplus/h2launcher/oos/StyleResourceInfo;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/oos/StyleResourceInfo;->getResourceId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSystemDefaultIcons()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    const-string v0, "com.oneplus.iconpack.h2default"

    return-object v0
.end method

.method public getWorkspaceColumns()I
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lnet/oneplus/h2launcher/oos/StyleManager;->sStyleConfigurationInfo:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->getWorkspaceColumns()I

    move-result v0

    return v0
.end method

.method public getWorkspaceRows()I
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lnet/oneplus/h2launcher/oos/StyleManager;->sStyleConfigurationInfo:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->getWorkspaceRows()I

    move-result v0

    return v0
.end method

.method public getWorkspaceScreenScaleInOptions()F
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lnet/oneplus/h2launcher/oos/StyleManager;->sStyleConfigurationInfo:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->getWorkspaceScreenScaleInOptions()F

    move-result v0

    return v0
.end method

.method public isSupportMemo()Z
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public isWallpaperScrollable()Z
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lnet/oneplus/h2launcher/oos/StyleManager;->sStyleConfigurationInfo:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->getScrollableWallpaper()Z

    move-result v0

    return v0
.end method

.method public isWorkspaceAllowReorderingHomeScreen()Z
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lnet/oneplus/h2launcher/oos/StyleManager;->sStyleConfigurationInfo:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->getWorkspaceAllowReorderingHomeScreen()Z

    move-result v0

    return v0
.end method

.method public needCaptureEntireScreen()Z
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lnet/oneplus/h2launcher/oos/StyleManager;->sStyleConfigurationInfo:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->captureEntireScreen()Z

    move-result v0

    return v0
.end method

.method public needVerifyApplications()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public onStyleConfigurationLoaded(Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;)V
    .locals 0
    .param p1, "styleConfigurationInfo"    # Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;

    .prologue
    .line 163
    sput-object p1, Lnet/oneplus/h2launcher/oos/StyleManager;->sStyleConfigurationInfo:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;

    .line 164
    return-void
.end method

.method public onStyleResourceLoaded(Lnet/oneplus/h2launcher/oos/StyleResourceInfo;)V
    .locals 0
    .param p1, "styleResourceInfo"    # Lnet/oneplus/h2launcher/oos/StyleResourceInfo;

    .prologue
    .line 168
    sput-object p1, Lnet/oneplus/h2launcher/oos/StyleManager;->sStyleResourceInfo:Lnet/oneplus/h2launcher/oos/StyleResourceInfo;

    .line 169
    return-void
.end method

.method public reloadStyleConfigurationInfo()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lnet/oneplus/h2launcher/oos/StyleManager;->mStyleConfigurationLoader:Lnet/oneplus/h2launcher/oos/StyleConfigurationLoader;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lnet/oneplus/h2launcher/oos/StyleManager;->mStyleConfigurationLoader:Lnet/oneplus/h2launcher/oos/StyleConfigurationLoader;

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationLoader;->load(Lnet/oneplus/h2launcher/oos/StyleLoaderCallback;)V

    .line 42
    :cond_0
    return-void
.end method

.method public reloadStyleResourceInfo()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lnet/oneplus/h2launcher/oos/StyleManager;->mStyleResourceLoader:Lnet/oneplus/h2launcher/oos/StyleResourceLoader;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lnet/oneplus/h2launcher/oos/StyleManager;->mStyleResourceLoader:Lnet/oneplus/h2launcher/oos/StyleResourceLoader;

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/oos/StyleResourceLoader;->load(Lnet/oneplus/h2launcher/oos/StyleLoaderCallback;)V

    .line 48
    :cond_0
    return-void
.end method

.method public showAllApps()Z
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lnet/oneplus/h2launcher/oos/StyleManager;->sStyleConfigurationInfo:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->getShowAllApps()Z

    move-result v0

    return v0
.end method

.method public showClearButton()Z
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lnet/oneplus/h2launcher/oos/StyleManager;->sStyleConfigurationInfo:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->getShowClearButton()Z

    move-result v0

    return v0
.end method

.method public showDynamicIcon()Z
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lnet/oneplus/h2launcher/oos/StyleManager;->sStyleConfigurationInfo:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->getShowDynamicIcon()Z

    move-result v0

    return v0
.end method

.method public showHotSeat()Z
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lnet/oneplus/h2launcher/oos/StyleManager;->sStyleConfigurationInfo:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->getShowHotSeat()Z

    move-result v0

    return v0
.end method

.method public showIconRearrangement()Z
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lnet/oneplus/h2launcher/oos/StyleManager;->sStyleConfigurationInfo:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->getShowIconRearrangement()Z

    move-result v0

    return v0
.end method

.method public showInternalClock()Z
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lnet/oneplus/h2launcher/oos/StyleManager;->sStyleConfigurationInfo:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->getShowInternalClock()Z

    move-result v0

    return v0
.end method

.method public showOnlineSearch()Z
    .locals 1

    .prologue
    .line 120
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->isO2Device()Z

    move-result v0

    return v0
.end method

.method public showSearchBar()Z
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lnet/oneplus/h2launcher/oos/StyleManager;->sStyleConfigurationInfo:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->getShowSearchBar()Z

    move-result v0

    return v0
.end method

.method public showSearchBarInOptions()Z
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lnet/oneplus/h2launcher/oos/StyleManager;->sStyleConfigurationInfo:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->getShowSearchBarInOptions()Z

    move-result v0

    return v0
.end method

.method public showStandardFolderIconShape()Z
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lnet/oneplus/h2launcher/oos/StyleManager;->sStyleConfigurationInfo:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->getShowStandardFolderIconShape()Z

    move-result v0

    return v0
.end method

.method public showWidgetsButton()Z
    .locals 5

    .prologue
    .line 68
    sget-object v2, Lnet/oneplus/h2launcher/oos/StyleManager;->sStyleConfigurationInfo:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->getShowWidgetsButton()Z

    move-result v1

    .line 69
    .local v1, "showWidgetsButton":Z
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/oos/StyleManager;->showWidgetsButtonConfigurable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    .end local v1    # "showWidgetsButton":Z
    :goto_0
    return v1

    .line 72
    .restart local v1    # "showWidgetsButton":Z
    :cond_0
    sget-object v2, Lnet/oneplus/h2launcher/oos/StyleManager;->sContext:Landroid/content/Context;

    const-string v3, "gesture_settings"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 74
    .local v0, "gesturePreferences":Landroid/content/SharedPreferences;
    const-string v2, "widgets_enabled_saved"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public showWidgetsButtonConfigurable()Z
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lnet/oneplus/h2launcher/oos/StyleManager;->sStyleConfigurationInfo:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->getShowWidgetsConfigurable()Z

    move-result v0

    return v0
.end method

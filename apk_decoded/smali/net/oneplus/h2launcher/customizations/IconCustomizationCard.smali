.class public Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;
.super Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;
.source "IconCustomizationCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;
    }
.end annotation


# static fields
.field private static final DEFAULT_SYSTEM_ICON_PACK:Ljava/lang/String;

.field public static final GRID_VIEW_NUM_COLUMNS:I = 0x3

.field public static final ICON_SIZE_LARGE:I = 0x3

.field public static final ICON_SIZE_SCALE_LARGE:F = 1.13f

.field public static final ICON_SIZE_SCALE_SMALL:F = 0.8f

.field public static final ICON_SIZE_SCALE_STANDARD:F = 1.0f

.field public static final ICON_SIZE_SMALL:I = 0x1

.field public static final ICON_SIZE_STANDARD:I = 0x2

.field public static final ICON_SIZE_UNKNOWN:I = -0x1

.field private static final INVALID_SELECTED_POSITION:I = -0x1

.field private static final KEY_CURRENT_ICON_PACK:Ljava/lang/String; = "icon_pack_saved"

.field private static final KEY_CURRENT_ICON_SIZE:Ljava/lang/String; = "current_icon_size"

.field private static final KEY_TEMP_ICON_PACK:Ljava/lang/String; = "current_icon_pack"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentIconPackValue:Ljava/lang/String;

.field private mGridView:Landroid/widget/GridView;

.field private mIconPackAdapter:Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;

.field private mIconPackChanged:Z

.field private mIconPackSharedPrefs:Landroid/content/SharedPreferences;

.field private mIconSizeChanged:Z

.field private mLargeIconButton:Lnet/oneplus/h2launcher/customizations/OptionButton;

.field private mSelectedIconButton:Lnet/oneplus/h2launcher/customizations/OptionButton;

.field private mSelectedIconSize:I

.field private mSmallIconButton:Lnet/oneplus/h2launcher/customizations/OptionButton;

.field private mStandardIconButton:Lnet/oneplus/h2launcher/customizations/OptionButton;

.field private mTempIconPackValue:Ljava/lang/String;

.field private mTempSelection:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->TAG:Ljava/lang/String;

    .line 48
    sget-object v0, Lnet/oneplus/h2launcher/IconPackHelper;->CUSTOM_SYSTEM_DEFAULT_ICONS:Ljava/lang/String;

    sput-object v0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->DEFAULT_SYSTEM_ICON_PACK:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    const-string v1, ""

    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mCurrentIconPackValue:Ljava/lang/String;

    .line 60
    const-string v1, ""

    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mTempIconPackValue:Ljava/lang/String;

    .line 61
    const/4 v1, -0x1

    iput v1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mTempSelection:I

    .line 82
    invoke-static {p1}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    move-result-object v0

    .line 83
    .local v0, "launcherApps":Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;
    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->addOnAppsChangedCallback(Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 85
    const-string v1, "icon_pack_shared_preferences"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mIconPackSharedPrefs:Landroid/content/SharedPreferences;

    .line 88
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mContent:Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->setupContentView(Landroid/view/View;)V

    .line 89
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->reloadCustomizationSettings()V

    .line 90
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;

    .prologue
    .line 41
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mIconPackSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;

    .prologue
    .line 41
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mIconPackChanged:Z

    return v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;

    .prologue
    .line 41
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mCurrentIconPackValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mCurrentIconPackValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;

    .prologue
    .line 41
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mTempIconPackValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->DEFAULT_SYSTEM_ICON_PACK:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;

    .prologue
    .line 41
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mIconSizeChanged:Z

    return v0
.end method

.method static synthetic access$600(Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;

    .prologue
    .line 41
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mSelectedIconSize:I

    return v0
.end method

.method static synthetic access$802(Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;I)I
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mTempSelection:I

    return p1
.end method

.method private getSelectedButton()Lnet/oneplus/h2launcher/customizations/OptionButton;
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mSelectedIconSize:I

    packed-switch v0, :pswitch_data_0

    .line 182
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mStandardIconButton:Lnet/oneplus/h2launcher/customizations/OptionButton;

    :goto_0
    return-object v0

    .line 176
    :pswitch_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mSmallIconButton:Lnet/oneplus/h2launcher/customizations/OptionButton;

    goto :goto_0

    .line 178
    :pswitch_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mStandardIconButton:Lnet/oneplus/h2launcher/customizations/OptionButton;

    goto :goto_0

    .line 180
    :pswitch_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mLargeIconButton:Lnet/oneplus/h2launcher/customizations/OptionButton;

    goto :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private notifyIconPackChanged(Z)V
    .locals 3
    .param p1, "preview"    # Z

    .prologue
    .line 485
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->cancelApplyingIconPack()V

    .line 487
    new-instance v0, Landroid/content/Intent;

    const-string v1, "icon_pack_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 489
    const-string v1, "preview"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 491
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 492
    return-void
.end method

.method private setDefaultIconPackValue()V
    .locals 1

    .prologue
    .line 187
    sget-object v0, Lnet/oneplus/h2launcher/IconPackHelper;->CUSTOM_SYSTEM_DEFAULT_ICONS:Ljava/lang/String;

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mTempIconPackValue:Ljava/lang/String;

    .line 188
    sget-object v0, Lnet/oneplus/h2launcher/IconPackHelper;->CUSTOM_SYSTEM_DEFAULT_ICONS:Ljava/lang/String;

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mCurrentIconPackValue:Ljava/lang/String;

    .line 189
    return-void
.end method

.method private setupContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "content"    # Landroid/view/View;

    .prologue
    .line 99
    const v0, 0x7f110145

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/customizations/OptionButton;

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mSmallIconButton:Lnet/oneplus/h2launcher/customizations/OptionButton;

    .line 100
    const v0, 0x7f110146

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/customizations/OptionButton;

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mStandardIconButton:Lnet/oneplus/h2launcher/customizations/OptionButton;

    .line 101
    const v0, 0x7f110147

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/customizations/OptionButton;

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mLargeIconButton:Lnet/oneplus/h2launcher/customizations/OptionButton;

    .line 103
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mSmallIconButton:Lnet/oneplus/h2launcher/customizations/OptionButton;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->setupIconButton(Landroid/widget/Button;I)V

    .line 104
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mStandardIconButton:Lnet/oneplus/h2launcher/customizations/OptionButton;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->setupIconButton(Landroid/widget/Button;I)V

    .line 105
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mLargeIconButton:Lnet/oneplus/h2launcher/customizations/OptionButton;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->setupIconButton(Landroid/widget/Button;I)V

    .line 106
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->setupGridView(Landroid/view/View;)V

    .line 107
    return-void
.end method

.method private setupGridView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 118
    const v0, 0x7f110148

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mGridView:Landroid/widget/GridView;

    .line 119
    new-instance v0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040066

    invoke-direct {v0, p0, v1, v2}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;-><init>(Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;Landroid/content/Context;I)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mIconPackAdapter:Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;

    .line 120
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mGridView:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 122
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setFocusable(Z)V

    .line 123
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 124
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mIconPackAdapter:Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 126
    :cond_0
    return-void
.end method

.method private setupIconButton(Landroid/widget/Button;I)V
    .locals 1
    .param p1, "iconSizeButton"    # Landroid/widget/Button;
    .param p2, "sizeType"    # I

    .prologue
    .line 110
    if-eqz p1, :cond_0

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 112
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 113
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    :cond_0
    return-void
.end method

.method private updateIconSize(Z)V
    .locals 7
    .param p1, "preview"    # Z

    .prologue
    const/4 v6, 0x0

    .line 147
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 148
    .local v1, "context":Landroid/content/Context;
    iget v5, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mSelectedIconSize:I

    invoke-static {v5}, Lnet/oneplus/h2launcher/Utilities;->setSelectedIconSize(I)V

    .line 149
    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v5

    invoke-static {v1, v5}, Lnet/oneplus/h2launcher/Utilities;->setFolderScaledLayoutParams(Landroid/content/Context;Lnet/oneplus/h2launcher/DeviceProfile;)V

    .line 151
    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v4

    .line 152
    .local v4, "workspace":Lnet/oneplus/h2launcher/Workspace;
    invoke-static {v1}, Lnet/oneplus/h2launcher/Utilities;->getIconScaleValue(Landroid/content/Context;)F

    move-result v2

    .line 153
    .local v2, "iconSizeScale":F
    if-eqz p1, :cond_1

    .line 154
    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Workspace;->getCurrentPage()I

    move-result v3

    .line 155
    .local v3, "pageIndex":I
    invoke-virtual {v4, v3, v2, v6}, Lnet/oneplus/h2launcher/Workspace;->updateShortcutIconSizeInPage(IFLjava/lang/String;)V

    .line 170
    .end local v3    # "pageIndex":I
    :cond_0
    :goto_0
    invoke-virtual {v4, v2}, Lnet/oneplus/h2launcher/Workspace;->updateIconSize(F)V

    .line 171
    return-void

    .line 157
    :cond_1
    invoke-virtual {v4, v2, v6}, Lnet/oneplus/h2launcher/Workspace;->updateAllShortcutIconSize(FLjava/lang/String;)V

    .line 158
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v5

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/oos/StyleManager;->showHotSeat()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 159
    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v5

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Hotseat;->updateAllAppsButtonIconSize()V

    .line 163
    :cond_2
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v5

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/oos/StyleManager;->showAllApps()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 164
    invoke-static {v1}, Lnet/oneplus/h2launcher/Utilities;->getAppsViewNumCols(Landroid/content/Context;)I

    move-result v0

    .line 165
    .local v0, "appsViewColNum":I
    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v5

    invoke-virtual {v5, v0}, Lnet/oneplus/h2launcher/DeviceProfile;->updateAppsViewNumCols(I)V

    .line 166
    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v5

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->updateAllAppsFromCustomizations()V

    .line 167
    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Launcher;->getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    move-result-object v5

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->getAdapter()Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    move-result-object v5

    invoke-virtual {v5, v2}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->setIconSizeScale(F)V

    goto :goto_0
.end method


# virtual methods
.method protected getBottommostViewInScrollableView()Landroid/view/View;
    .locals 3

    .prologue
    .line 373
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mGridView:Landroid/widget/GridView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .local v0, "childCount":I
    if-lez v0, :cond_0

    .line 374
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mGridView:Landroid/widget/GridView;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 376
    .end local v0    # "childCount":I
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->getBottommostViewInScrollableView()Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method protected getContentView()Landroid/view/View;
    .locals 3

    .prologue
    .line 94
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 95
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f040070

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method protected getSaveCustomizationTask()Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 268
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mCurrentIconPackValue:Ljava/lang/String;

    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mTempIconPackValue:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mIconPackChanged:Z

    .line 269
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mSelectedIconSize:I

    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mIconPackSharedPrefs:Landroid/content/SharedPreferences;

    const-string v4, "current_icon_size"

    const/4 v5, 0x2

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v0, v3, :cond_1

    :goto_1
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mIconSizeChanged:Z

    .line 272
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mIconPackChanged:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mIconSizeChanged:Z

    if-nez v0, :cond_2

    .line 273
    const/4 v0, 0x0

    .line 276
    :goto_2
    return-object v0

    :cond_0
    move v0, v2

    .line 268
    goto :goto_0

    :cond_1
    move v1, v2

    .line 269
    goto :goto_1

    .line 276
    :cond_2
    new-instance v0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$1;

    sget-object v1, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->TAG:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$1;-><init>(Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected getScrollableView()Landroid/view/View;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 130
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mSelectedIconButton:Lnet/oneplus/h2launcher/customizations/OptionButton;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mSelectedIconButton:Lnet/oneplus/h2launcher/customizations/OptionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/customizations/OptionButton;->setSelected(Z)V

    :cond_0
    move-object v0, p1

    .line 133
    check-cast v0, Lnet/oneplus/h2launcher/customizations/OptionButton;

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mSelectedIconButton:Lnet/oneplus/h2launcher/customizations/OptionButton;

    .line 134
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mSelectedIconButton:Lnet/oneplus/h2launcher/customizations/OptionButton;

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/customizations/OptionButton;->setSelected(Z)V

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mSelectedIconSize:I

    .line 138
    invoke-direct {p0, v2}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->updateIconSize(Z)V

    .line 139
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v6, 0x7f110130

    const/4 v7, 0x1

    .line 193
    iget v4, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mTempSelection:I

    if-ne p3, v4, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v1

    .line 198
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 199
    invoke-virtual {p1, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 200
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 201
    .local v3, "selection":Landroid/view/View;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mTempSelection:I

    if-ne v4, v5, :cond_4

    .line 202
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 207
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "selection":Landroid/view/View;
    :cond_2
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/customizations/Selection;

    .line 208
    .local v3, "selection":Lnet/oneplus/h2launcher/customizations/Selection;
    if-eqz v3, :cond_3

    .line 209
    invoke-virtual {v3, v7}, Lnet/oneplus/h2launcher/customizations/Selection;->setSelected(Z)V

    .line 212
    :cond_3
    iput p3, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mTempSelection:I

    .line 213
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mIconPackAdapter:Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;

    invoke-virtual {v4, p3}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter$IconPack;

    iget-object v4, v4, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter$IconPack;->value:Ljava/lang/String;

    iput-object v4, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mTempIconPackValue:Ljava/lang/String;

    .line 214
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mIconPackSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "current_icon_pack"

    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mTempIconPackValue:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 215
    invoke-direct {p0, v7}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->notifyIconPackChanged(Z)V

    .line 217
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v4

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/oos/StyleManager;->showAllApps()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 218
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->getAllAppsViewController()Lnet/oneplus/h2launcher/AllAppsViewController;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/AllAppsViewController;->setAppsAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 219
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->getAllAppsViewController()Lnet/oneplus/h2launcher/AllAppsViewController;

    move-result-object v4

    invoke-virtual {v4, v7}, Lnet/oneplus/h2launcher/AllAppsViewController;->setUpdateIconsInBackground(Z)V

    goto :goto_0

    .line 198
    .restart local v0    # "child":Landroid/view/View;
    .local v3, "selection":Landroid/view/View;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public onPackageAdded(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 327
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mIconPackAdapter:Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mIconPackAdapter:Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;->loadIconPackList()V

    .line 329
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mIconPackAdapter:Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;->notifyDataSetChanged()V

    .line 331
    :cond_0
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 336
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    const/4 v3, 0x0

    .line 309
    if-eqz p1, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->isIconPackNeedChangeToDefault()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->setDefaultIconPackValue()V

    .line 311
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mIconPackSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 312
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "current_icon_pack"

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mTempIconPackValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 313
    const-string v1, "icon_pack_saved"

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mCurrentIconPackValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 314
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 315
    invoke-direct {p0, v3}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->notifyIconPackChanged(Z)V

    .line 316
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1, v3}, Lnet/oneplus/h2launcher/Launcher;->setIconPackNeedChangeToDefault(Z)V

    .line 319
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mIconPackAdapter:Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;

    if-eqz v1, :cond_1

    .line 320
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mIconPackAdapter:Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;->loadIconPackList()V

    .line 321
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mIconPackAdapter:Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;->notifyDataSetChanged()V

    .line 323
    :cond_1
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)V
    .locals 0
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "replacing"    # Z

    .prologue
    .line 342
    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 0
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 353
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)V
    .locals 0
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "replacing"    # Z

    .prologue
    .line 348
    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 0
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 358
    return-void
.end method

.method protected reloadCustomizationSettings()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 225
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mIconPackSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "current_icon_pack"

    sget-object v3, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->DEFAULT_SYSTEM_ICON_PACK:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mTempIconPackValue:Ljava/lang/String;

    .line 227
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mIconPackSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "icon_pack_saved"

    sget-object v3, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->DEFAULT_SYSTEM_ICON_PACK:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mCurrentIconPackValue:Ljava/lang/String;

    .line 231
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mTempIconPackValue:Ljava/lang/String;

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mCurrentIconPackValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mIconPackChanged:Z

    if-eqz v1, :cond_1

    .line 232
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mCurrentIconPackValue:Ljava/lang/String;

    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mTempIconPackValue:Ljava/lang/String;

    .line 233
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mIconPackSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "current_icon_pack"

    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mCurrentIconPackValue:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 234
    invoke-direct {p0, v4}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->notifyIconPackChanged(Z)V

    .line 235
    iput-boolean v4, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mIconPackChanged:Z

    .line 238
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mTempIconPackValue:Ljava/lang/String;

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mCurrentIconPackValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 239
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherAppState;->getAssetCache()Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/AssetCache;->updateDbIconsForIconPackChanged()V

    .line 243
    :cond_2
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mIconPackSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "current_icon_size"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 244
    .local v0, "savedIconSize":I
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mSelectedIconButton:Lnet/oneplus/h2launcher/customizations/OptionButton;

    if-nez v1, :cond_6

    .line 245
    iput v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mSelectedIconSize:I

    .line 246
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->getSelectedButton()Lnet/oneplus/h2launcher/customizations/OptionButton;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mSelectedIconButton:Lnet/oneplus/h2launcher/customizations/OptionButton;

    .line 247
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mSelectedIconButton:Lnet/oneplus/h2launcher/customizations/OptionButton;

    invoke-virtual {v1, v5}, Lnet/oneplus/h2launcher/customizations/OptionButton;->setSelected(Z)V

    .line 257
    :cond_3
    :goto_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mIconPackAdapter:Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;

    if-eqz v1, :cond_4

    .line 258
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mIconPackAdapter:Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;->notifyDataSetChanged()V

    .line 261
    :cond_4
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mGridView:Landroid/widget/GridView;

    if-eqz v1, :cond_5

    .line 262
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->smoothScrollToPosition(I)V

    .line 264
    :cond_5
    return-void

    .line 248
    :cond_6
    iget v1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mSelectedIconSize:I

    if-ne v1, v0, :cond_7

    iget-boolean v1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mIconSizeChanged:Z

    if-eqz v1, :cond_3

    .line 249
    :cond_7
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mSelectedIconButton:Lnet/oneplus/h2launcher/customizations/OptionButton;

    invoke-virtual {v1, v4}, Lnet/oneplus/h2launcher/customizations/OptionButton;->setSelected(Z)V

    .line 250
    iput v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mSelectedIconSize:I

    .line 251
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->getSelectedButton()Lnet/oneplus/h2launcher/customizations/OptionButton;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mSelectedIconButton:Lnet/oneplus/h2launcher/customizations/OptionButton;

    .line 252
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mSelectedIconButton:Lnet/oneplus/h2launcher/customizations/OptionButton;

    invoke-virtual {v1, v5}, Lnet/oneplus/h2launcher/customizations/OptionButton;->setSelected(Z)V

    .line 253
    invoke-direct {p0, v4}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->updateIconSize(Z)V

    .line 254
    iput-boolean v4, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->mIconSizeChanged:Z

    goto :goto_0
.end method

.method public removeOnAppsChangedCallback()V
    .locals 2

    .prologue
    .line 361
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    move-result-object v0

    .line 362
    .local v0, "launcherApps":Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;
    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->removeOnAppsChangedCallback(Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 363
    return-void
.end method

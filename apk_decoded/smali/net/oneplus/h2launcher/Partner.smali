.class public Lnet/oneplus/h2launcher/Partner;
.super Ljava/lang/Object;
.source "Partner.java"


# static fields
.field private static final ACTION_PARTNER_CUSTOMIZATION:Ljava/lang/String; = "net.oneplus.h2launcher.action.PARTNER_CUSTOMIZATION"

.field public static final RES_DEFAULT_LAYOUT_SIMPLIFIED:Ljava/lang/String; = "partner_default_layout_simplified"

.field public static final RES_DEFAULT_LAYOUT_SIMPLIFIED_4x5:Ljava/lang/String; = "partner_default_layout_simplified_4x5"

.field public static final RES_DEFAULT_LAYOUT_SIMPLIFIED_4x5_BASED_O2:Ljava/lang/String; = "partner_default_layout_simplified_4x5_based_o2"

.field public static final RES_DEFAULT_LAYOUT_SIMPLIFIED_BASED_O2:Ljava/lang/String; = "partner_default_layout_simplified_based_o2"

.field public static final RES_DEFAULT_LAYOUT_STANDARD:Ljava/lang/String; = "partner_default_layout_standard"

.field public static final RES_DEFAULT_LAYOUT_STANDARD_5x5:Ljava/lang/String; = "partner_default_layout_standard_5x5"

.field public static final RES_DEFAULT_LAYOUT_STANDARD_5x5_BASED_H2:Ljava/lang/String; = "partner_default_layout_standard_5x5_based_h2"

.field public static final RES_DEFAULT_LAYOUT_STANDARD_BASED_H2:Ljava/lang/String; = "partner_default_layout_standard_based_h2"

.field public static final RES_DEFAULT_WALLPAPER_HIDDEN:Ljava/lang/String; = "default_wallpapper_hidden"

.field public static final RES_FOLDER:Ljava/lang/String; = "partner_folder"

.field public static final RES_GRID_ICON_SIZE_DP:Ljava/lang/String; = "grid_icon_size_dp"

.field public static final RES_GRID_NUM_COLUMNS:Ljava/lang/String; = "grid_num_columns"

.field public static final RES_GRID_NUM_ROWS:Ljava/lang/String; = "grid_num_rows"

.field public static final RES_REQUIRE_FIRST_RUN_FLOW:Ljava/lang/String; = "requires_first_run_flow"

.field public static final RES_SYSTEM_WALLPAPER_DIR:Ljava/lang/String; = "system_wallpaper_directory"

.field public static final RES_WALLPAPERS:Ljava/lang/String; = "partner_wallpapers"

.field static final TAG:Ljava/lang/String; = "Launcher.Partner"

.field private static sPartner:Lnet/oneplus/h2launcher/Partner;

.field private static sSearched:Z


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput-boolean v0, Lnet/oneplus/h2launcher/Partner;->sSearched:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lnet/oneplus/h2launcher/Partner;->mPackageName:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lnet/oneplus/h2launcher/Partner;->mResources:Landroid/content/res/Resources;

    .line 89
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/pm/PackageManager;)Lnet/oneplus/h2launcher/Partner;
    .locals 5
    .param p0, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 73
    const-class v3, Lnet/oneplus/h2launcher/Partner;

    monitor-enter v3

    :try_start_0
    sget-boolean v1, Lnet/oneplus/h2launcher/Partner;->sSearched:Z

    if-nez v1, :cond_1

    .line 74
    const-string v1, "net.oneplus.h2launcher.action.PARTNER_CUSTOMIZATION"

    invoke-static {v1, p0}, Lnet/oneplus/h2launcher/Utilities;->findSystemApk(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/util/Pair;

    move-result-object v0

    .line 75
    .local v0, "apkInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/content/res/Resources;>;"
    if-eqz v0, :cond_0

    .line 76
    new-instance v4, Lnet/oneplus/h2launcher/Partner;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/content/res/Resources;

    invoke-direct {v4, v1, v2}, Lnet/oneplus/h2launcher/Partner;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    sput-object v4, Lnet/oneplus/h2launcher/Partner;->sPartner:Lnet/oneplus/h2launcher/Partner;

    .line 78
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lnet/oneplus/h2launcher/Partner;->sSearched:Z

    .line 80
    .end local v0    # "apkInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/content/res/Resources;>;"
    :cond_1
    sget-object v1, Lnet/oneplus/h2launcher/Partner;->sPartner:Lnet/oneplus/h2launcher/Partner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v1

    .line 73
    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1
.end method


# virtual methods
.method public applyInvariantDeviceProfileOverrides(Lnet/oneplus/h2launcher/InvariantDeviceProfile;Landroid/util/DisplayMetrics;)V
    .locals 10
    .param p1, "inv"    # Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    .param p2, "dm"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 164
    const/4 v3, -0x1

    .line 165
    .local v3, "numRows":I
    const/4 v2, -0x1

    .line 166
    .local v2, "numColumns":I
    const/high16 v1, -0x40800000    # -1.0f

    .line 169
    .local v1, "iconSize":F
    :try_start_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "grid_num_rows"

    const-string v8, "integer"

    .line 170
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 169
    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 171
    .local v5, "resId":I
    if-lez v5, :cond_0

    .line 172
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 175
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "grid_num_columns"

    const-string v8, "integer"

    .line 176
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 175
    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 177
    if-lez v5, :cond_1

    .line 178
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 181
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "grid_icon_size_dp"

    const-string v8, "dimen"

    .line 182
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 181
    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 183
    if-lez v5, :cond_2

    .line 184
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 185
    .local v4, "px":I
    invoke-static {v4, p2}, Lnet/oneplus/h2launcher/Utilities;->dpiFromPx(ILandroid/util/DisplayMetrics;)F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 192
    .end local v4    # "px":I
    :cond_2
    if-lez v3, :cond_3

    if-lez v2, :cond_3

    .line 193
    iput v3, p1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numRows:I

    .line 194
    iput v2, p1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numColumns:I

    .line 197
    :cond_3
    const/4 v6, 0x0

    cmpl-float v6, v1, v6

    if-lez v6, :cond_4

    .line 198
    iput v1, p1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->iconSize:F

    .line 200
    .end local v5    # "resId":I
    :cond_4
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    const-string v6, "Launcher.Partner"

    const-string v7, "Invalid Partner grid resource!"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getIdentifierName()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 108
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lnet/oneplus/h2launcher/Utilities;->isLessOrEqualDefaultDensity(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 109
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->isSimplifiedLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    new-array v1, v3, [I

    aput v3, v1, v2

    invoke-static {v1}, Lcom/oneplus/sdk/utils/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    const-string v1, "partner_default_layout_simplified_4x5_based_o2"

    .line 133
    :goto_0
    return-object v1

    .line 113
    :cond_0
    const-string v1, "partner_default_layout_simplified_4x5"

    goto :goto_0

    .line 116
    :cond_1
    new-array v1, v3, [I

    aput v2, v1, v2

    invoke-static {v1}, Lcom/oneplus/sdk/utils/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    const-string v1, "partner_default_layout_standard_5x5_based_h2"

    goto :goto_0

    .line 119
    :cond_2
    const-string v1, "partner_default_layout_standard_5x5"

    goto :goto_0

    .line 123
    :cond_3
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->isSimplifiedLayout()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 124
    new-array v1, v3, [I

    aput v3, v1, v2

    invoke-static {v1}, Lcom/oneplus/sdk/utils/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 125
    const-string v1, "partner_default_layout_simplified_based_o2"

    goto :goto_0

    .line 127
    :cond_4
    const-string v1, "partner_default_layout_simplified"

    goto :goto_0

    .line 130
    :cond_5
    new-array v1, v3, [I

    aput v2, v1, v2

    invoke-static {v1}, Lcom/oneplus/sdk/utils/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 131
    const-string v1, "partner_default_layout_standard_based_h2"

    goto :goto_0

    .line 133
    :cond_6
    const-string v1, "partner_default_layout_standard"

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lnet/oneplus/h2launcher/Partner;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lnet/oneplus/h2launcher/Partner;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getWallpaperDirectory()Ljava/io/File;
    .locals 5

    .prologue
    .line 152
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "system_wallpaper_directory"

    const-string v3, "string"

    .line 153
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 152
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 154
    .local v0, "resId":I
    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasDefaultLayout()Z
    .locals 5

    .prologue
    .line 100
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 101
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Partner;->getIdentifierName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "xml"

    .line 102
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 100
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 103
    .local v0, "defaultLayout":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasFolder()Z
    .locals 5

    .prologue
    .line 140
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "partner_folder"

    const-string v3, "xml"

    .line 141
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 140
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 142
    .local v0, "folder":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideDefaultWallpaper()Z
    .locals 5

    .prologue
    .line 146
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "default_wallpapper_hidden"

    const-string v3, "bool"

    .line 147
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 146
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 148
    .local v0, "resId":I
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requiresFirstRunFlow()Z
    .locals 5

    .prologue
    .line 158
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "requires_first_run_flow"

    const-string v3, "bool"

    .line 159
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 158
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 160
    .local v0, "resId":I
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

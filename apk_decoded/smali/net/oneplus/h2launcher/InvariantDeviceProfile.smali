.class public Lnet/oneplus/h2launcher/InvariantDeviceProfile;
.super Ljava/lang/Object;
.source "InvariantDeviceProfile.java"


# static fields
.field private static final ICON_SIZE_DEFINED_IN_APP_DP:F = 48.0f

.field private static KNEARESTNEIGHBOR:F

.field private static SIMPLIFIED_ICON_SIZE_DP:F

.field private static STANDARD_ICON_SIZE_DP:F

.field private static WEIGHT_EFFICIENT:F

.field private static WEIGHT_POWER:F


# instance fields
.field private final TAG:Ljava/lang/String;

.field defaultLayoutId:I

.field public fillResIconDpi:I

.field public hotseatAllAppsRank:I

.field hotseatIconSize:F

.field iconBitmapSize:I

.field iconSize:F

.field iconTextSize:F

.field public landscapeProfile:Lnet/oneplus/h2launcher/DeviceProfile;

.field minAllAppsPredictionColumns:I

.field minHeightDps:F

.field minWidthDps:F

.field name:Ljava/lang/String;

.field public numColumns:I

.field public numFolderColumns:I

.field public numFolderRows:I

.field public numHotseatIcons:I

.field public numRows:I

.field public portraitProfile:Lnet/oneplus/h2launcher/DeviceProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/high16 v0, 0x42600000    # 56.0f

    sput v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->STANDARD_ICON_SIZE_DP:F

    .line 42
    const/high16 v0, 0x42580000    # 54.0f

    sput v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->SIMPLIFIED_ICON_SIZE_DP:F

    .line 48
    const/high16 v0, 0x40400000    # 3.0f

    sput v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->KNEARESTNEIGHBOR:F

    .line 49
    const/high16 v0, 0x40a00000    # 5.0f

    sput v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->WEIGHT_POWER:F

    .line 52
    const v0, 0x47c35000    # 100000.0f

    sput v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->WEIGHT_EFFICIENT:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-class v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->TAG:Ljava/lang/String;

    .line 94
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 126
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-class v3, Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->TAG:Ljava/lang/String;

    .line 127
    const-string v3, "window"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/WindowManager;

    .line 128
    .local v22, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v22 .. v22}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v19

    .line 129
    .local v19, "display":Landroid/view/Display;
    new-instance v20, Landroid/util/DisplayMetrics;

    invoke-direct/range {v20 .. v20}, Landroid/util/DisplayMetrics;-><init>()V

    .line 130
    .local v20, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual/range {v19 .. v20}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 132
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 133
    .local v6, "smallestSize":Landroid/graphics/Point;
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 134
    .local v7, "largestSize":Landroid/graphics/Point;
    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 137
    iget v3, v6, Landroid/graphics/Point;->x:I

    iget v4, v6, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lnet/oneplus/h2launcher/Utilities;->dpiFromPx(ILandroid/util/DisplayMetrics;)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->minWidthDps:F

    .line 138
    iget v3, v7, Landroid/graphics/Point;->x:I

    iget v4, v7, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lnet/oneplus/h2launcher/Utilities;->dpiFromPx(ILandroid/util/DisplayMetrics;)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->minHeightDps:F

    .line 140
    invoke-virtual/range {p0 .. p1}, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->getPredefinedDeviceProfiles(Landroid/content/Context;)Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-result-object v18

    .line 141
    .local v18, "closestProfile":Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    move-object/from16 v0, v18

    iget v3, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numRows:I

    move-object/from16 v0, p0

    iput v3, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numRows:I

    .line 142
    move-object/from16 v0, v18

    iget v3, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numColumns:I

    move-object/from16 v0, p0

    iput v3, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numColumns:I

    .line 143
    move-object/from16 v0, v18

    iget v3, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numHotseatIcons:I

    move-object/from16 v0, p0

    iput v3, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numHotseatIcons:I

    .line 144
    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numHotseatIcons:I

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->hotseatAllAppsRank:I

    .line 145
    move-object/from16 v0, v18

    iget v3, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->defaultLayoutId:I

    move-object/from16 v0, p0

    iput v3, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->defaultLayoutId:I

    .line 146
    move-object/from16 v0, v18

    iget v3, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numFolderRows:I

    move-object/from16 v0, p0

    iput v3, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numFolderRows:I

    .line 147
    move-object/from16 v0, v18

    iget v3, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numFolderColumns:I

    move-object/from16 v0, p0

    iput v3, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numFolderColumns:I

    .line 148
    move-object/from16 v0, v18

    iget v3, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->minAllAppsPredictionColumns:I

    move-object/from16 v0, p0

    iput v3, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->minAllAppsPredictionColumns:I

    .line 150
    move-object/from16 v0, v18

    iget v3, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->iconSize:F

    move-object/from16 v0, p0

    iput v3, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->iconSize:F

    .line 151
    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->iconSize:F

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lnet/oneplus/h2launcher/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->iconBitmapSize:I

    .line 152
    move-object/from16 v0, v18

    iget v3, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->iconTextSize:F

    move-object/from16 v0, p0

    iput v3, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->iconTextSize:F

    .line 153
    move-object/from16 v0, v18

    iget v3, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->hotseatIconSize:F

    move-object/from16 v0, p0

    iput v3, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->hotseatIconSize:F

    .line 154
    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->iconBitmapSize:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->getLauncherIconDensity(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->fillResIconDpi:I

    .line 156
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[InvariantDeviceProfile] simplified = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->isSimplifiedLayout()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", OP_FEATURE_SKU_GLOBAL = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v10, 0x0

    const/4 v11, 0x1

    aput v11, v5, v10

    .line 157
    invoke-static {v5}, Lcom/oneplus/sdk/utils/OpFeatures;->isSupport([I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget-object v5, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", numRows = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numRows:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", numColumns = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numColumns:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 156
    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->applyPartnerDeviceProfileOverrides(Landroid/content/Context;Landroid/util/DisplayMetrics;)V

    .line 164
    new-instance v21, Landroid/graphics/Point;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Point;-><init>()V

    .line 165
    .local v21, "realSize":Landroid/graphics/Point;
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 168
    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 169
    .local v9, "smallSide":I
    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 171
    .local v8, "largeSide":I
    new-instance v3, Lnet/oneplus/h2launcher/DeviceProfile;

    const/4 v10, 0x1

    move-object/from16 v4, p1

    move-object/from16 v5, p0

    invoke-direct/range {v3 .. v10}, Lnet/oneplus/h2launcher/DeviceProfile;-><init>(Landroid/content/Context;Lnet/oneplus/h2launcher/InvariantDeviceProfile;Landroid/graphics/Point;Landroid/graphics/Point;IIZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->landscapeProfile:Lnet/oneplus/h2launcher/DeviceProfile;

    .line 173
    new-instance v10, Lnet/oneplus/h2launcher/DeviceProfile;

    const/16 v17, 0x0

    move-object/from16 v11, p1

    move-object/from16 v12, p0

    move-object v13, v6

    move-object v14, v7

    move v15, v9

    move/from16 v16, v8

    invoke-direct/range {v10 .. v17}, Lnet/oneplus/h2launcher/DeviceProfile;-><init>(Landroid/content/Context;Lnet/oneplus/h2launcher/InvariantDeviceProfile;Landroid/graphics/Point;Landroid/graphics/Point;IIZ)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->portraitProfile:Lnet/oneplus/h2launcher/DeviceProfile;

    .line 175
    return-void
.end method

.method constructor <init>(Ljava/lang/String;FFIIIIIFFIFI)V
    .locals 2
    .param p1, "n"    # Ljava/lang/String;
    .param p2, "w"    # F
    .param p3, "h"    # F
    .param p4, "r"    # I
    .param p5, "c"    # I
    .param p6, "fr"    # I
    .param p7, "fc"    # I
    .param p8, "maapc"    # I
    .param p9, "is"    # F
    .param p10, "its"    # F
    .param p11, "hs"    # I
    .param p12, "his"    # F
    .param p13, "dlId"    # I

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-class v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->TAG:Ljava/lang/String;

    .line 106
    rem-int/lit8 v0, p11, 0x2

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "All Device Profiles must have an odd number of hotseat spaces"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    iput-object p1, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->name:Ljava/lang/String;

    .line 111
    iput p2, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->minWidthDps:F

    .line 112
    iput p3, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->minHeightDps:F

    .line 113
    iput p4, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numRows:I

    .line 114
    iput p5, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numColumns:I

    .line 115
    iput p6, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numFolderRows:I

    .line 116
    iput p7, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numFolderColumns:I

    .line 117
    iput p8, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->minAllAppsPredictionColumns:I

    .line 118
    iput p9, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->iconSize:F

    .line 119
    iput p10, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->iconTextSize:F

    .line 120
    iput p11, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numHotseatIcons:I

    .line 121
    iput p12, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->hotseatIconSize:F

    .line 122
    iput p13, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->defaultLayoutId:I

    .line 123
    return-void
.end method

.method public constructor <init>(Lnet/oneplus/h2launcher/InvariantDeviceProfile;)V
    .locals 14
    .param p1, "p"    # Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    .prologue
    .line 97
    iget-object v1, p1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->name:Ljava/lang/String;

    iget v2, p1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->minWidthDps:F

    iget v3, p1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->minHeightDps:F

    iget v4, p1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numRows:I

    iget v5, p1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numColumns:I

    iget v6, p1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numFolderRows:I

    iget v7, p1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numFolderColumns:I

    iget v8, p1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->minAllAppsPredictionColumns:I

    iget v9, p1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->iconSize:F

    iget v10, p1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->iconTextSize:F

    iget v11, p1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numHotseatIcons:I

    iget v12, p1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->hotseatIconSize:F

    iget v13, p1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->defaultLayoutId:I

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lnet/oneplus/h2launcher/InvariantDeviceProfile;-><init>(Ljava/lang/String;FFIIIIIFFIFI)V

    .line 101
    return-void
.end method

.method private add(Lnet/oneplus/h2launcher/InvariantDeviceProfile;)V
    .locals 2
    .param p1, "p"    # Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    .prologue
    .line 381
    iget v0, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->iconSize:F

    iget v1, p1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->iconSize:F

    add-float/2addr v0, v1

    iput v0, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->iconSize:F

    .line 382
    iget v0, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->iconTextSize:F

    iget v1, p1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->iconTextSize:F

    add-float/2addr v0, v1

    iput v0, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->iconTextSize:F

    .line 383
    iget v0, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->hotseatIconSize:F

    iget v1, p1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->hotseatIconSize:F

    add-float/2addr v0, v1

    iput v0, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->hotseatIconSize:F

    .line 384
    return-void
.end method

.method private applyPartnerDeviceProfileOverrides(Landroid/content/Context;Landroid/util/DisplayMetrics;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dm"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 330
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1}, Lnet/oneplus/h2launcher/Partner;->get(Landroid/content/pm/PackageManager;)Lnet/oneplus/h2launcher/Partner;

    move-result-object v0

    .line 331
    .local v0, "p":Lnet/oneplus/h2launcher/Partner;
    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0, p0, p2}, Lnet/oneplus/h2launcher/Partner;->applyInvariantDeviceProfileOverrides(Lnet/oneplus/h2launcher/InvariantDeviceProfile;Landroid/util/DisplayMetrics;)V

    .line 334
    :cond_0
    return-void
.end method

.method private getLauncherIconDensity(I)I
    .locals 6
    .param p1, "requiredSize"    # I

    .prologue
    .line 302
    const/4 v4, 0x7

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    .line 312
    .local v1, "densityBuckets":[I
    const/16 v0, 0x280

    .line 313
    .local v0, "density":I
    array-length v4, v1

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 314
    const/high16 v4, 0x42400000    # 48.0f

    aget v5, v1, v3

    int-to-float v5, v5

    mul-float/2addr v4, v5

    const/high16 v5, 0x43200000    # 160.0f

    div-float v2, v4, v5

    .line 316
    .local v2, "expectedSize":F
    int-to-float v4, p1

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_0

    .line 317
    aget v0, v1, v3

    .line 313
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 321
    .end local v2    # "expectedSize":F
    :cond_1
    return v0

    .line 302
    :array_0
    .array-data 4
        0x78
        0xa0
        0xd5
        0xf0
        0x140
        0x1e0
        0x280
    .end array-data
.end method

.method private multiply(F)Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    .locals 1
    .param p1, "w"    # F

    .prologue
    .line 387
    iget v0, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->iconSize:F

    mul-float/2addr v0, p1

    iput v0, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->iconSize:F

    .line 388
    iget v0, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->iconTextSize:F

    mul-float/2addr v0, p1

    iput v0, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->iconTextSize:F

    .line 389
    iget v0, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->hotseatIconSize:F

    mul-float/2addr v0, p1

    iput v0, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->hotseatIconSize:F

    .line 390
    return-object p0
.end method

.method private weight(FFFFF)F
    .locals 8
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "pow"    # F

    .prologue
    .line 394
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->dist(FFFF)F

    move-result v0

    .line 395
    .local v0, "d":F
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    .line 396
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 398
    :goto_0
    return v1

    :cond_0
    sget v1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->WEIGHT_EFFICIENT:F

    float-to-double v2, v1

    float-to-double v4, v0

    float-to-double v6, p5

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-float v1, v2

    goto :goto_0
.end method


# virtual methods
.method dist(FFFF)F
    .locals 4
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F

    .prologue
    .line 338
    sub-float v0, p3, p1

    float-to-double v0, v0

    sub-float v2, p4, p2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method findClosestDeviceProfiles(FFLjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/InvariantDeviceProfile;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/InvariantDeviceProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 349
    .local p3, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/InvariantDeviceProfile;>;"
    move-object v0, p3

    .line 350
    .local v0, "pointsByNearness":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/InvariantDeviceProfile;>;"
    new-instance v1, Lnet/oneplus/h2launcher/InvariantDeviceProfile$1;

    invoke-direct {v1, p0, p1, p2}, Lnet/oneplus/h2launcher/InvariantDeviceProfile$1;-><init>(Lnet/oneplus/h2launcher/InvariantDeviceProfile;FF)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 357
    return-object v0
.end method

.method public getDeviceProfile(Landroid/content/Context;)Lnet/oneplus/h2launcher/DeviceProfile;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 402
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->landscapeProfile:Lnet/oneplus/h2launcher/DeviceProfile;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->portraitProfile:Lnet/oneplus/h2launcher/DeviceProfile;

    goto :goto_0
.end method

.method getPredefinedDeviceProfiles(Landroid/content/Context;)Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    .locals 15
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    invoke-static/range {p1 .. p1}, Lnet/oneplus/h2launcher/Utilities;->isLessOrEqualDefaultDensity(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 184
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->isSimplifiedLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    invoke-static {v0}, Lcom/oneplus/sdk/utils/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->TAG:Ljava/lang/String;

    const-string v1, "WORKSPACE_XML - default_layout_simplified_4x5_based_o2"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const v13, 0x7f080006

    .line 210
    .local v13, "defaultLayoutId":I
    :goto_0
    new-instance v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    const-string v1, "Small dpi"

    const/high16 v2, 0x43cb0000    # 406.0f

    const v3, 0x442d8000    # 694.0f

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    const/4 v8, 0x4

    const/high16 v9, 0x42800000    # 64.0f

    const v10, 0x41666666    # 14.4f

    const/4 v11, 0x5

    const/high16 v12, 0x42600000    # 56.0f

    invoke-direct/range {v0 .. v13}, Lnet/oneplus/h2launcher/InvariantDeviceProfile;-><init>(Ljava/lang/String;FFIIIIIFFIFI)V

    .line 260
    :goto_1
    return-object v0

    .line 189
    .end local v13    # "defaultLayoutId":I
    :cond_0
    invoke-static {}, Lnet/oneplus/h2launcher/Utilities;->getDeviceTag()Ljava/lang/String;

    move-result-object v14

    .line 190
    .local v14, "device":Ljava/lang/String;
    const/4 v0, -0x1

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 205
    iget-object v0, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->TAG:Ljava/lang/String;

    const-string v1, "WORKSPACE_XML - default_workspace_4x5_no_all_apps"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const v13, 0x7f08000f

    .restart local v13    # "defaultLayoutId":I
    goto :goto_0

    .line 190
    .end local v13    # "defaultLayoutId":I
    :sswitch_0
    const-string v1, "16859"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_2

    :sswitch_1
    const-string v1, "17801"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :sswitch_2
    const-string v1, "17819"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_2

    :sswitch_3
    const-string v1, "18821"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_2

    .line 192
    :pswitch_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->TAG:Ljava/lang/String;

    const-string v1, "WORKSPACE_XML - default_workspace_4x5_no_all_apps_16859"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const v13, 0x7f080010

    .line 194
    .restart local v13    # "defaultLayoutId":I
    goto :goto_0

    .line 197
    .end local v13    # "defaultLayoutId":I
    :pswitch_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->TAG:Ljava/lang/String;

    const-string v1, "WORKSPACE_XML - default_workspace_4x5_no_all_apps_17801"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const v13, 0x7f080011

    .line 199
    .restart local v13    # "defaultLayoutId":I
    goto :goto_0

    .line 201
    .end local v13    # "defaultLayoutId":I
    :pswitch_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->TAG:Ljava/lang/String;

    const-string v1, "WORKSPACE_XML - default_workspace_4x5_no_all_apps_18821"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const v13, 0x7f080012

    .line 203
    .restart local v13    # "defaultLayoutId":I
    goto :goto_0

    .line 213
    .end local v13    # "defaultLayoutId":I
    .end local v14    # "device":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WORKSPACE_XML - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v0, v3

    invoke-static {v0}, Lcom/oneplus/sdk/utils/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "default_layout_standard_5x5_based_h2"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Lcom/oneplus/sdk/utils/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_4

    const v13, 0x7f080008

    .line 218
    .restart local v13    # "defaultLayoutId":I
    :goto_4
    new-instance v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    const-string v1, "Small dpi"

    const/high16 v2, 0x43cb0000    # 406.0f

    const v3, 0x442d8000    # 694.0f

    const/4 v4, 0x5

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x4

    const/4 v8, 0x4

    const/high16 v9, 0x42800000    # 64.0f

    const v10, 0x41666666    # 14.4f

    const/4 v11, 0x5

    const/high16 v12, 0x42600000    # 56.0f

    invoke-direct/range {v0 .. v13}, Lnet/oneplus/h2launcher/InvariantDeviceProfile;-><init>(Ljava/lang/String;FFIIIIIFFIFI)V

    goto/16 :goto_1

    .line 213
    .end local v13    # "defaultLayoutId":I
    :cond_3
    const-string v0, "default_workspace_5x5"

    goto :goto_3

    .line 215
    :cond_4
    const v13, 0x7f080013

    goto :goto_4

    .line 222
    :cond_5
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->isSimplifiedLayout()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 223
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    invoke-static {v0}, Lcom/oneplus/sdk/utils/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 224
    iget-object v0, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->TAG:Ljava/lang/String;

    const-string v1, "WORKSPACE_XML - default_layout_simplified_based_o2"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const v13, 0x7f080007

    .line 248
    .restart local v13    # "defaultLayoutId":I
    :goto_5
    new-instance v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    const-string v1, "Default or Large dpi"

    const v2, 0x43a78000    # 335.0f

    const v3, 0x440dc000    # 567.0f

    .line 249
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v4

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/oos/StyleManager;->getWorkspaceRows()I

    move-result v4

    .line 250
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v5

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/oos/StyleManager;->getWorkspaceColumns()I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x4

    const/4 v8, 0x4

    sget v9, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->SIMPLIFIED_ICON_SIZE_DP:F

    const/high16 v10, 0x41500000    # 13.0f

    const/4 v11, 0x5

    const/high16 v12, 0x42600000    # 56.0f

    invoke-direct/range {v0 .. v13}, Lnet/oneplus/h2launcher/InvariantDeviceProfile;-><init>(Ljava/lang/String;FFIIIIIFFIFI)V

    goto/16 :goto_1

    .line 227
    .end local v13    # "defaultLayoutId":I
    :cond_6
    invoke-static {}, Lnet/oneplus/h2launcher/Utilities;->getDeviceTag()Ljava/lang/String;

    move-result-object v14

    .line 228
    .restart local v14    # "device":Ljava/lang/String;
    const/4 v0, -0x1

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    :cond_7
    :goto_6
    packed-switch v0, :pswitch_data_1

    .line 243
    iget-object v0, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->TAG:Ljava/lang/String;

    const-string v1, "WORKSPACE_XML - default_workspace_3x5_no_all_apps"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const v13, 0x7f08000a

    .restart local v13    # "defaultLayoutId":I
    goto :goto_5

    .line 228
    .end local v13    # "defaultLayoutId":I
    :sswitch_4
    const-string v1, "16859"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x0

    goto :goto_6

    :sswitch_5
    const-string v1, "17801"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    goto :goto_6

    :sswitch_6
    const-string v1, "17819"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x2

    goto :goto_6

    :sswitch_7
    const-string v1, "18821"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x3

    goto :goto_6

    .line 230
    :pswitch_3
    iget-object v0, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->TAG:Ljava/lang/String;

    const-string v1, "WORKSPACE_XML - default_workspace_3x5_no_all_apps_16859"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const v13, 0x7f08000b

    .line 232
    .restart local v13    # "defaultLayoutId":I
    goto :goto_5

    .line 235
    .end local v13    # "defaultLayoutId":I
    :pswitch_4
    iget-object v0, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->TAG:Ljava/lang/String;

    const-string v1, "WORKSPACE_XML - default_workspace_3x5_no_all_apps_17801"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const v13, 0x7f08000c

    .line 237
    .restart local v13    # "defaultLayoutId":I
    goto :goto_5

    .line 239
    .end local v13    # "defaultLayoutId":I
    :pswitch_5
    iget-object v0, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->TAG:Ljava/lang/String;

    const-string v1, "WORKSPACE_XML - default_workspace_3x5_no_all_apps_18821"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const v13, 0x7f08000d

    .line 241
    .restart local v13    # "defaultLayoutId":I
    goto/16 :goto_5

    .line 253
    .end local v13    # "defaultLayoutId":I
    .end local v14    # "device":Ljava/lang/String;
    :cond_8
    iget-object v1, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WORKSPACE_XML - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v0, v3

    invoke-static {v0}, Lcom/oneplus/sdk/utils/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "default_layout_standard_based_h2"

    :goto_7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Lcom/oneplus/sdk/utils/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_a

    const v13, 0x7f080009

    .line 258
    .restart local v13    # "defaultLayoutId":I
    :goto_8
    new-instance v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    const-string v1, "Default or Large dpi"

    const v2, 0x43a78000    # 335.0f

    const v3, 0x440dc000    # 567.0f

    .line 259
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v4

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/oos/StyleManager;->getWorkspaceRows()I

    move-result v4

    .line 260
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v5

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/oos/StyleManager;->getWorkspaceColumns()I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x4

    const/4 v8, 0x4

    sget v9, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->STANDARD_ICON_SIZE_DP:F

    const/high16 v10, 0x41500000    # 13.0f

    const/4 v11, 0x5

    const/high16 v12, 0x42600000    # 56.0f

    invoke-direct/range {v0 .. v13}, Lnet/oneplus/h2launcher/InvariantDeviceProfile;-><init>(Ljava/lang/String;FFIIIIIFFIFI)V

    goto/16 :goto_1

    .line 253
    .end local v13    # "defaultLayoutId":I
    :cond_9
    const-string v0, "default_workspace_4x5"

    goto :goto_7

    .line 255
    :cond_a
    const v13, 0x7f08000e

    goto :goto_8

    .line 190
    :sswitch_data_0
    .sparse-switch
        0x2cbe497 -> :sswitch_0
        0x2cc5853 -> :sswitch_1
        0x2cc587a -> :sswitch_2
        0x2ccccf0 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 228
    :sswitch_data_1
    .sparse-switch
        0x2cbe497 -> :sswitch_4
        0x2cc5853 -> :sswitch_5
        0x2cc587a -> :sswitch_6
        0x2ccccf0 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method invDistWeightedInterpolate(FFLjava/util/ArrayList;)Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    .locals 11
    .param p1, "width"    # F
    .param p2, "height"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/InvariantDeviceProfile;",
            ">;)",
            "Lnet/oneplus/h2launcher/InvariantDeviceProfile;"
        }
    .end annotation

    .prologue
    .line 363
    .local p3, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/InvariantDeviceProfile;>;"
    const/4 v10, 0x0

    .line 365
    .local v10, "weights":F
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    .line 366
    .local v8, "p":Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    iget v0, v8, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->minWidthDps:F

    iget v1, v8, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->minHeightDps:F

    invoke-virtual {p0, p1, p2, v0, v1}, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->dist(FFFF)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    move-object v0, v8

    .line 377
    :goto_0
    return-object v0

    .line 370
    :cond_0
    new-instance v7, Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    invoke-direct {v7}, Lnet/oneplus/h2launcher/InvariantDeviceProfile;-><init>()V

    .line 371
    .local v7, "out":Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_1

    int-to-float v0, v6

    sget v1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->KNEARESTNEIGHBOR:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 372
    new-instance v8, Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    .end local v8    # "p":Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    invoke-direct {v8, v0}, Lnet/oneplus/h2launcher/InvariantDeviceProfile;-><init>(Lnet/oneplus/h2launcher/InvariantDeviceProfile;)V

    .line 373
    .restart local v8    # "p":Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    iget v3, v8, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->minWidthDps:F

    iget v4, v8, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->minHeightDps:F

    sget v5, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->WEIGHT_POWER:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->weight(FFFFF)F

    move-result v9

    .line 374
    .local v9, "w":F
    add-float/2addr v10, v9

    .line 375
    invoke-direct {v8, v9}, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->multiply(F)Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-result-object v0

    invoke-direct {v7, v0}, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->add(Lnet/oneplus/h2launcher/InvariantDeviceProfile;)V

    .line 371
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 377
    .end local v9    # "w":F
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, v10

    invoke-direct {v7, v0}, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->multiply(F)Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-result-object v0

    goto :goto_0
.end method

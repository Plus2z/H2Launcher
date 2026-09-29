.class public final Lnet/oneplus/h2launcher/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/Utilities$WidgetProviderListener;
    }
.end annotation


# static fields
.field public static final ALLOW_ROTATION_PREFERENCE_KEY:Ljava/lang/String; = "pref_allowRotation"

.field public static final ATLEAST_ANDROID_N:Z

.field public static final ATLEAST_ANDROID_N_MR1:Z

.field public static final ATLEAST_JB_MR1:Z

.field public static final ATLEAST_JB_MR2:Z

.field public static final ATLEAST_KITKAT:Z

.field public static final ATLEAST_LOLLIPOP:Z

.field public static final ATLEAST_LOLLIPOP_MR1:Z

.field public static final ATLEAST_MARSHMALLOW:Z

.field public static final ATLEAST_NOUGAT:Z

.field public static final BUILD_VERSION_CODE_N:I = 0x18

.field public static final BUILD_VERSION_CODE_O:I = 0x1a

.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final DEFAULT_ICON_SHADOW_COLOR:I = 0x19000000

.field private static final DEFAULT_SCREEN_WIDTH_INCH:F = 2.5714285f

.field public static final DENSITY_ONEPLUS_LARGEST_540:I = 0x21c

.field public static final DENSITY_ONEPLUS_MINIMUM_380:I = 0x17c

.field public static final DEVICE_14001:Ljava/lang/String; = "14001"

.field public static final DEVICE_14049:Ljava/lang/String; = "14049"

.field public static final DEVICE_15055:Ljava/lang/String; = "15055"

.field public static final DEVICE_15801:Ljava/lang/String; = "15801"

.field public static final DEVICE_15811:Ljava/lang/String; = "15811"

.field public static final DEVICE_16859:Ljava/lang/String; = "16859"

.field public static final DEVICE_17801:Ljava/lang/String; = "17801"

.field public static final DEVICE_17819:Ljava/lang/String; = "17819"

.field public static final DEVICE_18801:Ljava/lang/String; = "18801"

.field public static final DEVICE_18811:Ljava/lang/String; = "18811"

.field public static final DEVICE_18821:Ljava/lang/String; = "18821"

.field public static final DEVICE_18825:Ljava/lang/String; = "18825"

.field public static final DEVICE_18827:Ljava/lang/String; = "18827"

.field public static final DEVICE_18831:Ljava/lang/String; = "18831"

.field public static final DEVICE_18857:Ljava/lang/String; = "18857"

.field public static final DIALER_CLASSNAME:Ljava/lang/String; = "com.oneplus.contacts.activities.OPDialtactsActivity"

.field public static final DIALER_PACKAGE_M:Ljava/lang/String; = "com.android.contacts"

.field public static final DIALER_PACKAGE_N:Ljava/lang/String; = "com.android.dialer"

.field public static final DUAL_APPS_USER_ID:I = 0x3e7

.field private static final FORCE_ENABLE_ROTATION_PROPERTY:Ljava/lang/String; = "launcher_force_rotate"

.field public static final ICON_PADDING_DIRECTION_DOWN:I = 0x3

.field public static final ICON_PADDING_DIRECTION_LEFT:I = 0x0

.field public static final ICON_PADDING_DIRECTION_RIGHT:I = 0x2

.field public static final ICON_PADDING_DIRECTION_UP:I = 0x1

.field public static final INVALID_ONEPLUS_PERMISSION_STATE:I = -0x2

.field private static final INVALID_VALUE:I = -0x4d

.field private static final JOIN_STABILITY_PLAN:Ljava/lang/String; = "oem_join_stability_plan_settings"

.field private static final JOIN_USER_PLAN:Ljava/lang/String; = "oem_join_user_plan_settings"

.field private static final KEEP_ALIVE:I = 0x1

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final ONEPLUS_PERMISSION_AGREE:Ljava/lang/String; = "oneplus_permission_agree"

.field public static final ONEPLUS_PERMISSION_STATE_ALLOW:I = 0x1

.field public static final ONEPLUS_PERMISSION_STATE_DENY:I = 0x0

.field public static final ONEPLUS_PERMISSION_STATE_NOT_SUPPORT:I = -0x1

.field private static final OP_NAVIGATION_BAR_TYPE:Ljava/lang/String; = "op_navigation_bar_type"

.field public static final PACKAGE_NAME_ONEPLUS_MARKET:Ljava/lang/String; = "com.oneplus.market"

.field public static final PACKAGE_NAME_OPPO_MARKET:Ljava/lang/String; = "com.oppo.market"

.field public static final PREFERENCE_SHOW_REQUEST_WINDOW:Ljava/lang/String; = "hasShowRequestWindow"

.field public static final SCREEN_HEIGHT_17801:I = 0x870

.field public static final SCREEN_HEIGHT_17819:I = 0x8e8

.field public static final SCREEN_HEIGHT_NORMAL:I = 0x780

.field private static final SETTINGS_DARK_MODE_NAME:Ljava/lang/String; = "oem_black_mode"

.field private static final SETTINGS_DARK_MODE_VALUE_DARK:I = 0x1

.field private static final SETTINGS_DARK_MODE_VALUE_DEFAULT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Launcher.Utilities"

.field private static final THEME_ANDROID:I = 0x2

.field private static final THEME_DARK:I = 0x1

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final mBlurPaint:Landroid/graphics/Paint;

.field private static final mShadowBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final mShadowPaint:Landroid/graphics/Paint;

.field private static sBangsScreenDesktopIconTopOffset:I

.field private static final sCanvas:Landroid/graphics/Canvas;

.field static sColorIndex:I

.field static sColors:[I

.field public static sFolderIconSize:I

.field public static sFolderNameTopMargin:I

.field public static sFolderPreviewBackgroundTopMargin:I

.field private static sForceEnableRotation:Z

.field private static sIconShadowOffset:I

.field private static final sLoc0:[I

.field private static final sLoc1:[I

.field private static final sOldBounds:Landroid/graphics/Rect;

.field private static sOneplusPermissionState:I

.field public static sSelectedIconSize:I

.field private static final sTrimPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v6, 0x18

    const/4 v5, -0x1

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 114
    sput v5, Lnet/oneplus/h2launcher/Utilities;->sIconShadowOffset:I

    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    .line 118
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 120
    const-string v0, "^[\\s|\\p{javaSpaceChar}]*(.*)[\\s|\\p{javaSpaceChar}]*$"

    .line 121
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/Utilities;->sTrimPattern:Ljava/util/regex/Pattern;

    .line 124
    sget-object v0, Lnet/oneplus/h2launcher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 127
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnet/oneplus/h2launcher/Utilities;->sColors:[I

    .line 128
    sput v8, Lnet/oneplus/h2launcher/Utilities;->sColorIndex:I

    .line 130
    new-array v0, v4, [I

    sput-object v0, Lnet/oneplus/h2launcher/Utilities;->sLoc0:[I

    .line 131
    new-array v0, v4, [I

    sput-object v0, Lnet/oneplus/h2launcher/Utilities;->sLoc1:[I

    .line 141
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_NOUGAT:Z

    .line 144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-lt v0, v2, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_ANDROID_N_MR1:Z

    .line 147
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_ANDROID_N:Z

    .line 150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_3

    move v0, v1

    :goto_3
    sput-boolean v0, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_MARSHMALLOW:Z

    .line 152
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v0, v2, :cond_4

    move v0, v1

    :goto_4
    sput-boolean v0, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_LOLLIPOP_MR1:Z

    .line 155
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_5

    move v0, v1

    :goto_5
    sput-boolean v0, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_LOLLIPOP:Z

    .line 158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_6

    move v0, v1

    :goto_6
    sput-boolean v0, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_KITKAT:Z

    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_7

    move v0, v1

    :goto_7
    sput-boolean v0, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_JB_MR1:Z

    .line 164
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_8

    :goto_8
    sput-boolean v1, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_JB_MR2:Z

    .line 173
    const-string v0, "launcher_force_rotate"

    invoke-static {v0}, Lnet/oneplus/h2launcher/Utilities;->isPropertyEnabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lnet/oneplus/h2launcher/Utilities;->sForceEnableRotation:Z

    .line 177
    sput v8, Lnet/oneplus/h2launcher/Utilities;->sFolderNameTopMargin:I

    .line 178
    sput v8, Lnet/oneplus/h2launcher/Utilities;->sFolderPreviewBackgroundTopMargin:I

    .line 179
    sput v8, Lnet/oneplus/h2launcher/Utilities;->sFolderIconSize:I

    .line 180
    sput v5, Lnet/oneplus/h2launcher/Utilities;->sSelectedIconSize:I

    .line 182
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v1, 0x40c00000    # 6.0f

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v0, Lnet/oneplus/h2launcher/Utilities;->mShadowBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 183
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/Utilities;->mBlurPaint:Landroid/graphics/Paint;

    .line 184
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/Utilities;->mShadowPaint:Landroid/graphics/Paint;

    .line 196
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lnet/oneplus/h2launcher/Utilities;->CPU_COUNT:I

    .line 197
    sget v0, Lnet/oneplus/h2launcher/Utilities;->CPU_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lnet/oneplus/h2launcher/Utilities;->CORE_POOL_SIZE:I

    .line 198
    sget v0, Lnet/oneplus/h2launcher/Utilities;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lnet/oneplus/h2launcher/Utilities;->MAXIMUM_POOL_SIZE:I

    .line 212
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lnet/oneplus/h2launcher/Utilities;->CORE_POOL_SIZE:I

    sget v3, Lnet/oneplus/h2launcher/Utilities;->MAXIMUM_POOL_SIZE:I

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lnet/oneplus/h2launcher/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 250
    const/4 v0, -0x2

    sput v0, Lnet/oneplus/h2launcher/Utilities;->sOneplusPermissionState:I

    .line 259
    sput v8, Lnet/oneplus/h2launcher/Utilities;->sBangsScreenDesktopIconTopOffset:I

    return-void

    :cond_0
    move v0, v8

    .line 141
    goto/16 :goto_0

    :cond_1
    move v0, v8

    .line 144
    goto/16 :goto_1

    :cond_2
    move v0, v8

    .line 147
    goto/16 :goto_2

    :cond_3
    move v0, v8

    .line 150
    goto/16 :goto_3

    :cond_4
    move v0, v8

    .line 152
    goto/16 :goto_4

    :cond_5
    move v0, v8

    .line 155
    goto/16 :goto_5

    :cond_6
    move v0, v8

    .line 158
    goto/16 :goto_6

    :cond_7
    move v0, v8

    .line 161
    goto :goto_7

    :cond_8
    move v1, v8

    .line 164
    goto :goto_8

    .line 127
    nop

    :array_0
    .array-data 4
        -0x10000
        -0xff0100
        -0xffff01
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertWorkerThread()V
    .locals 2

    .prologue
    .line 958
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->isDogfoodBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/oneplus/h2launcher/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    .line 959
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 960
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 962
    :cond_0
    return-void
.end method

.method public static boundToRange(FFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "lowerBound"    # F
    .param p2, "upperBound"    # F

    .prologue
    .line 1605
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 438
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 439
    .local v2, "height":I
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 440
    .local v4, "width":I
    const/4 v3, 0x1

    .line 442
    .local v3, "inSampleSize":I
    if-gt v2, p2, :cond_0

    if-le v4, p1, :cond_1

    .line 443
    :cond_0
    div-int/lit8 v0, v2, 0x3

    .line 444
    .local v0, "halfHeight":I
    div-int/lit8 v1, v4, 0x3

    .line 448
    .local v1, "halfWidth":I
    :goto_0
    div-int v5, v0, v3

    if-le v5, p2, :cond_1

    div-int v5, v1, v3

    if-le v5, p1, :cond_1

    .line 450
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 453
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_1
    return v3
.end method

.method public static calculateTextHeight(F)F
    .locals 4
    .param p0, "textSizePx"    # F

    .prologue
    .line 926
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 927
    .local v1, "p":Landroid/graphics/Paint;
    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 928
    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 929
    .local v0, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v2, v2

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v2, v3

    return v2
.end method

.method public static clearIconScaleParameters(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 1086
    const-string v1, "icon_pack_shared_preferences"

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1087
    .local v0, "iconPackSharedPrefs":Landroid/content/SharedPreferences;
    const-string v1, "current_icon_size"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lnet/oneplus/h2launcher/Utilities;->sSelectedIconSize:I

    .line 1088
    sput v3, Lnet/oneplus/h2launcher/Utilities;->sFolderNameTopMargin:I

    .line 1089
    sput v3, Lnet/oneplus/h2launcher/Utilities;->sFolderPreviewBackgroundTopMargin:I

    .line 1090
    sput v3, Lnet/oneplus/h2launcher/Utilities;->sFolderIconSize:I

    .line 1091
    return-void
.end method

.method public static clearOneplusPermissionState()V
    .locals 2

    .prologue
    .line 1706
    const-string v0, "Launcher.Utilities"

    const-string v1, "clearOneplusPermissionState"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1707
    const/4 v0, -0x2

    sput v0, Lnet/oneplus/h2launcher/Utilities;->sOneplusPermissionState:I

    .line 1708
    return-void
.end method

.method public static createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 5
    .param p0, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1005
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%s IN (%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    const-string v4, ", "

    invoke-static {v4, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createIconBitmap(Landroid/content/Intent$ShortcutIconResource;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "iconRes"    # Landroid/content/Intent$ShortcutIconResource;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 1517
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1520
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v4, p0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 1521
    .local v2, "resources":Landroid/content/res/Resources;
    if-eqz v2, :cond_0

    .line 1522
    iget-object v4, p0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1524
    .local v0, "id":I
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/LauncherAppState;->getInvariantDeviceProfile()Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-result-object v4

    iget v4, v4, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->fillResIconDpi:I

    .line 1523
    invoke-virtual {v2, v0, v4}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4, p1}, Lnet/oneplus/h2launcher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1529
    .end local v0    # "id":I
    .end local v2    # "resources":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-object v3

    .line 1526
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static createIconBitmap(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "iconIndex"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 295
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 297
    .local v0, "data":[B
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, p2}, Lnet/oneplus/h2launcher/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 299
    :goto_0
    return-object v2

    .line 298
    :catch_0
    move-exception v1

    .line 299
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "icon"    # Landroid/graphics/Bitmap;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 333
    invoke-static {}, Lnet/oneplus/h2launcher/Utilities;->getIconBitmapSize()I

    move-result v0

    .line 334
    .local v0, "iconBitmapSize":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 337
    .end local p0    # "icon":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .restart local p0    # "icon":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v1, p1}, Lnet/oneplus/h2launcher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method public static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 22
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 344
    sget-object v20, Lnet/oneplus/h2launcher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v20

    .line 345
    :try_start_0
    invoke-static {}, Lnet/oneplus/h2launcher/Utilities;->getIconBitmapSize()I

    move-result v9

    .line 347
    .local v9, "iconBitmapSize":I
    move/from16 v18, v9

    .line 348
    .local v18, "width":I
    move v8, v9

    .line 350
    .local v8, "height":I
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 351
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v11, v0

    .line 352
    .local v11, "painter":Landroid/graphics/drawable/PaintDrawable;
    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 353
    invoke-virtual {v11, v8}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 362
    .end local v11    # "painter":Landroid/graphics/drawable/PaintDrawable;
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 363
    .local v14, "sourceWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 364
    .local v13, "sourceHeight":I
    if-lez v14, :cond_1

    if-lez v13, :cond_1

    .line 366
    int-to-float v0, v14

    move/from16 v19, v0

    int-to-float v0, v13

    move/from16 v21, v0

    div-float v12, v19, v21

    .line 367
    .local v12, "ratio":F
    if-le v14, v13, :cond_3

    .line 368
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v19, v12

    move/from16 v0, v19

    float-to-int v8, v0

    .line 375
    .end local v12    # "ratio":F
    :cond_1
    :goto_1
    move/from16 v16, v9

    .line 376
    .local v16, "textureWidth":I
    move v15, v9

    .line 378
    .local v15, "textureHeight":I
    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v15, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 380
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    sget-object v6, Lnet/oneplus/h2launcher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 381
    .local v6, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v6, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 383
    sub-int v19, v16, v18

    div-int/lit8 v10, v19, 0x2

    .line 384
    .local v10, "left":I
    sub-int v19, v15, v8

    div-int/lit8 v17, v19, 0x2

    .line 387
    .local v17, "top":I
    const/4 v7, 0x0

    .line 397
    .local v7, "debug":Z
    sget-object v19, Lnet/oneplus/h2launcher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 398
    add-int v19, v10, v18

    add-int v21, v17, v8

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v19

    move/from16 v3, v21

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 399
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 400
    sget-object v19, Lnet/oneplus/h2launcher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 401
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 403
    monitor-exit v20

    return-object v4

    .line 354
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "debug":Z
    .end local v10    # "left":I
    .end local v13    # "sourceHeight":I
    .end local v14    # "sourceWidth":I
    .end local v15    # "textureHeight":I
    .end local v16    # "textureWidth":I
    .end local v17    # "top":I
    :cond_2
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 356
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v5, v0

    .line 357
    .local v5, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 358
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v19

    if-nez v19, :cond_0

    .line 359
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_0

    .line 404
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v8    # "height":I
    .end local v9    # "iconBitmapSize":I
    .end local v18    # "width":I
    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v19

    .line 369
    .restart local v8    # "height":I
    .restart local v9    # "iconBitmapSize":I
    .restart local v12    # "ratio":F
    .restart local v13    # "sourceHeight":I
    .restart local v14    # "sourceWidth":I
    .restart local v18    # "width":I
    :cond_3
    if-le v13, v14, :cond_1

    .line 370
    int-to-float v0, v8

    move/from16 v19, v0

    mul-float v19, v19, v12

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v18, v0

    goto/16 :goto_1
.end method

.method public static createIconBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 309
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 312
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 313
    .local v2, "resources":Landroid/content/res/Resources;
    if-eqz v2, :cond_0

    .line 314
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 316
    .local v0, "id":I
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v4

    .line 317
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/LauncherAppState;->getInvariantDeviceProfile()Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-result-object v4

    iget v4, v4, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->fillResIconDpi:I

    .line 316
    invoke-virtual {v2, v0, v4}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 315
    invoke-static {v4, p2}, Lnet/oneplus/h2launcher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 322
    .end local v0    # "id":I
    .end local v2    # "resources":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-object v3

    .line 319
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static createShadowIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1172
    const/high16 v0, 0x19000000

    invoke-static {p0, p1, v0}, Lnet/oneplus/h2launcher/Utilities;->createShadowIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createShadowIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shadowColor"    # I

    .prologue
    .line 1176
    sget-object v10, Lnet/oneplus/h2launcher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v10

    .line 1177
    :try_start_0
    sget v9, Lnet/oneplus/h2launcher/Utilities;->sIconShadowOffset:I

    const/4 v11, -0x1

    if-ne v9, v11, :cond_0

    .line 1178
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f0c00a0

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    sput v9, Lnet/oneplus/h2launcher/Utilities;->sIconShadowOffset:I

    .line 1180
    :cond_0
    const/4 v4, 0x0

    .line 1181
    .local v4, "blurBitmap":Landroid/graphics/Bitmap;
    instance-of v9, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v9, :cond_2

    .line 1183
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v3, v0

    .line 1184
    .local v3, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1185
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v9

    if-nez v9, :cond_1

    .line 1186
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 1188
    :cond_1
    move-object v4, v2

    .line 1190
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 1191
    .local v8, "sourceWidth":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 1193
    .local v7, "sourceHeight":I
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v7, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1195
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    sget-object v6, Lnet/oneplus/h2launcher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 1196
    .local v6, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v6, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1198
    if-eqz v4, :cond_3

    .line 1199
    sget-object v9, Lnet/oneplus/h2launcher/Utilities;->mBlurPaint:Landroid/graphics/Paint;

    sget-object v11, Lnet/oneplus/h2launcher/Utilities;->mShadowBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 1200
    const/4 v9, 0x2

    new-array v5, v9, [I

    .line 1201
    .local v5, "blurOffset":[I
    sget-object v9, Lnet/oneplus/h2launcher/Utilities;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v9, v5}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1202
    .local v1, "alphaBitmap":Landroid/graphics/Bitmap;
    sget-object v9, Lnet/oneplus/h2launcher/Utilities;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1203
    const/4 v9, 0x0

    aget v9, v5, v9

    int-to-float v9, v9

    sget v11, Lnet/oneplus/h2launcher/Utilities;->sIconShadowOffset:I

    const/4 v12, 0x1

    aget v12, v5, v12

    add-int/2addr v11, v12

    int-to-float v11, v11

    sget-object v12, Lnet/oneplus/h2launcher/Utilities;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v1, v9, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1206
    .end local v1    # "alphaBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "blurOffset":[I
    :cond_3
    sget-object v9, Lnet/oneplus/h2launcher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1207
    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v11, v8, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1208
    invoke-virtual {p0, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1209
    sget-object v9, Lnet/oneplus/h2launcher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1211
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1213
    monitor-exit v10

    return-object v2

    .line 1214
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "blurBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "sourceHeight":I
    .end local v8    # "sourceWidth":I
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method

.method public static createShortcutIcon(Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "shortcutInfo"    # Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1533
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lnet/oneplus/h2launcher/Utilities;->createShortcutIcon(Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createShortcutIcon(Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "shortcutInfo"    # Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "badged"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1537
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    .line 1539
    .local v0, "app":Lnet/oneplus/h2launcher/LauncherAppState;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getInvariantDeviceProfile()Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-result-object v5

    iget v5, v5, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->fillResIconDpi:I

    .line 1538
    invoke-static {p1, p0, v5}, Lnet/oneplus/h2launcher/Utilities;->getShortcutIconDrawable(Landroid/content/Context;Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1541
    .local v4, "unbadgedDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1544
    .local v2, "c":Landroid/graphics/Bitmap$Config;
    :goto_0
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 1543
    invoke-static {v5, v6, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1545
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1546
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 1547
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 1546
    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1548
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1550
    return-object v1

    .line 1541
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "c":Landroid/graphics/Bitmap$Config;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public static decodeSampledBitmapFromPath(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 412
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 413
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 414
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 416
    invoke-static {v1, p1, p2}, Lnet/oneplus/h2launcher/Utilities;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 418
    iput-boolean v6, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 419
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 420
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 422
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v2, p2, :cond_0

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v2, v3

    div-int v3, p1, p2

    if-eq v2, v3, :cond_0

    .line 424
    invoke-static {p0, v6}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    .line 425
    .local v0, "bitmapRegionDecoder":Landroid/graphics/BitmapRegionDecoder;
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, p2

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, p2

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 426
    invoke-virtual {v0, v2, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 429
    .end local v0    # "bitmapRegionDecoder":Landroid/graphics/BitmapRegionDecoder;
    :goto_0
    return-object v2

    :cond_0
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method public static dpiFromPx(ILandroid/util/DisplayMetrics;)F
    .locals 3
    .param p0, "size"    # I
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 992
    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    const/high16 v2, 0x43200000    # 160.0f

    div-float v0, v1, v2

    .line 993
    .local v0, "densityRatio":F
    int-to-float v1, p0

    div-float/2addr v1, v0

    return v1
.end method

.method static findDominantColorByHue(Landroid/graphics/Bitmap;I)I
    .locals 28
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "samples"    # I

    .prologue
    .line 668
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 669
    .local v9, "height":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    .line 670
    .local v22, "width":I
    mul-int v25, v9, v22

    div-int v25, v25, p1

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v19, v0

    .line 671
    .local v19, "sampleStride":I
    const/16 v25, 0x1

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 672
    const/16 v19, 0x1

    .line 676
    :cond_0
    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v11, v0, [F

    .line 680
    .local v11, "hsv":[F
    const/16 v25, 0x168

    move/from16 v0, v25

    new-array v13, v0, [F

    .line 681
    .local v13, "hueScoreHistogram":[F
    const/high16 v10, -0x40800000    # -1.0f

    .line 682
    .local v10, "highScore":F
    const/4 v7, -0x1

    .line 684
    .local v7, "bestHue":I
    const/16 v24, 0x0

    .local v24, "y":I
    :goto_0
    move/from16 v0, v24

    if-ge v0, v9, :cond_4

    .line 685
    const/16 v23, 0x0

    .local v23, "x":I
    :goto_1
    move/from16 v0, v23

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 686
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    .line 687
    .local v5, "argb":I
    shr-int/lit8 v25, v5, 0x18

    move/from16 v0, v25

    and-int/lit16 v4, v0, 0xff

    .line 688
    .local v4, "alpha":I
    const/16 v25, 0x80

    move/from16 v0, v25

    if-ge v4, v0, :cond_2

    .line 685
    :cond_1
    :goto_2
    add-int v23, v23, v19

    goto :goto_1

    .line 693
    :cond_2
    const/high16 v25, -0x1000000

    or-int v16, v5, v25

    .line 694
    .local v16, "rgb":I
    move/from16 v0, v16

    invoke-static {v0, v11}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 696
    const/16 v25, 0x0

    aget v25, v11, v25

    move/from16 v0, v25

    float-to-int v12, v0

    .line 697
    .local v12, "hue":I
    if-ltz v12, :cond_1

    array-length v0, v13

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v12, v0, :cond_1

    .line 701
    const/16 v25, 0x1

    aget v25, v11, v25

    const/16 v26, 0x2

    aget v26, v11, v26

    mul-float v20, v25, v26

    .line 702
    .local v20, "score":F
    aget v25, v13, v12

    add-float v25, v25, v20

    aput v25, v13, v12

    .line 703
    aget v25, v13, v12

    cmpl-float v25, v25, v10

    if-lez v25, :cond_1

    .line 704
    aget v10, v13, v12

    .line 705
    move v7, v12

    goto :goto_2

    .line 684
    .end local v4    # "alpha":I
    .end local v5    # "argb":I
    .end local v12    # "hue":I
    .end local v16    # "rgb":I
    .end local v20    # "score":F
    :cond_3
    add-int v24, v24, v19

    goto :goto_0

    .line 710
    .end local v23    # "x":I
    :cond_4
    new-instance v17, Landroid/util/SparseArray;

    invoke-direct/range {v17 .. v17}, Landroid/util/SparseArray;-><init>()V

    .line 711
    .local v17, "rgbScores":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    const/high16 v6, -0x1000000

    .line 712
    .local v6, "bestColor":I
    const/high16 v10, -0x40800000    # -1.0f

    .line 716
    const/16 v24, 0x0

    :goto_3
    move/from16 v0, v24

    if-ge v0, v9, :cond_8

    .line 717
    const/16 v23, 0x0

    .restart local v23    # "x":I
    :goto_4
    move/from16 v0, v23

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    .line 718
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v25

    const/high16 v26, -0x1000000

    or-int v16, v25, v26

    .line 719
    .restart local v16    # "rgb":I
    move/from16 v0, v16

    invoke-static {v0, v11}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 720
    const/16 v25, 0x0

    aget v25, v11, v25

    move/from16 v0, v25

    float-to-int v12, v0

    .line 721
    .restart local v12    # "hue":I
    if-ne v12, v7, :cond_5

    .line 722
    const/16 v25, 0x1

    aget v18, v11, v25

    .line 723
    .local v18, "s":F
    const/16 v25, 0x2

    aget v21, v11, v25

    .line 724
    .local v21, "v":F
    const/high16 v25, 0x42c80000    # 100.0f

    mul-float v25, v25, v18

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    const v26, 0x461c4000    # 10000.0f

    mul-float v26, v26, v21

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    add-int v8, v25, v26

    .line 726
    .local v8, "bucket":I
    mul-float v20, v18, v21

    .line 727
    .restart local v20    # "score":F
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    .line 728
    .local v15, "oldTotal":Ljava/lang/Float;
    if-nez v15, :cond_6

    move/from16 v14, v20

    .line 729
    .local v14, "newTotal":F
    :goto_5
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 730
    cmpl-float v25, v14, v10

    if-lez v25, :cond_5

    .line 731
    move v10, v14

    .line 733
    move/from16 v6, v16

    .line 717
    .end local v8    # "bucket":I
    .end local v14    # "newTotal":F
    .end local v15    # "oldTotal":Ljava/lang/Float;
    .end local v18    # "s":F
    .end local v20    # "score":F
    .end local v21    # "v":F
    :cond_5
    add-int v23, v23, v19

    goto :goto_4

    .line 728
    .restart local v8    # "bucket":I
    .restart local v15    # "oldTotal":Ljava/lang/Float;
    .restart local v18    # "s":F
    .restart local v20    # "score":F
    .restart local v21    # "v":F
    :cond_6
    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v25

    add-float v14, v25, v20

    goto :goto_5

    .line 716
    .end local v8    # "bucket":I
    .end local v12    # "hue":I
    .end local v15    # "oldTotal":Ljava/lang/Float;
    .end local v16    # "rgb":I
    .end local v18    # "s":F
    .end local v20    # "score":F
    .end local v21    # "v":F
    :cond_7
    add-int v24, v24, v19

    goto :goto_3

    .line 738
    .end local v23    # "x":I
    :cond_8
    return v6
.end method

.method static findSystemApk(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/util/Pair;
    .locals 9
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation

    .prologue
    .line 747
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 748
    .local v2, "intent":Landroid/content/Intent;
    const/4 v5, 0x0

    invoke-virtual {p1, v2, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 749
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_0

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    .line 751
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 753
    .local v3, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 754
    .local v4, "res":Landroid/content/res/Resources;
    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 760
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "res":Landroid/content/res/Resources;
    :goto_1
    return-object v5

    .line 755
    .restart local v1    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 756
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "Launcher.Utilities"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to find resources for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 760
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static findVacantCell([IIIII[[Z)Z
    .locals 8
    .param p0, "vacant"    # [I
    .param p1, "spanX"    # I
    .param p2, "spanY"    # I
    .param p3, "xCount"    # I
    .param p4, "yCount"    # I
    .param p5, "occupied"    # [[Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 887
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_0
    add-int v7, v4, p2

    if-gt v7, p4, :cond_7

    .line 888
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_1
    add-int v7, v3, p1

    if-gt v7, p3, :cond_6

    .line 889
    aget-object v7, p5, v3

    aget-boolean v7, v7, v4

    if-nez v7, :cond_1

    move v0, v5

    .line 890
    .local v0, "available":Z
    :goto_2
    move v1, v3

    .local v1, "i":I
    :goto_3
    add-int v7, v3, p1

    if-ge v1, v7, :cond_0

    .line 891
    move v2, v4

    .local v2, "j":I
    :goto_4
    add-int v7, v4, p2

    if-ge v2, v7, :cond_4

    .line 892
    if-eqz v0, :cond_2

    aget-object v7, p5, v1

    aget-boolean v7, v7, v2

    if-nez v7, :cond_2

    move v0, v5

    .line 893
    :goto_5
    if-nez v0, :cond_3

    .line 897
    .end local v2    # "j":I
    :cond_0
    if-eqz v0, :cond_5

    .line 898
    aput v3, p0, v6

    .line 899
    aput v4, p0, v5

    .line 905
    .end local v0    # "available":Z
    .end local v1    # "i":I
    .end local v3    # "x":I
    :goto_6
    return v5

    .restart local v3    # "x":I
    :cond_1
    move v0, v6

    .line 889
    goto :goto_2

    .restart local v0    # "available":Z
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    :cond_2
    move v0, v6

    .line 892
    goto :goto_5

    .line 891
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 890
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 888
    .end local v2    # "j":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 887
    .end local v0    # "available":Z
    .end local v1    # "i":I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v3    # "x":I
    :cond_7
    move v5, v6

    .line 905
    goto :goto_6
.end method

.method public static flattenBitmap(Landroid/graphics/Bitmap;)[B
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 862
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v2, v3, 0x4

    .line 863
    .local v2, "size":I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 865
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 866
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 867
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 868
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 871
    :goto_0
    return-object v3

    .line 869
    :catch_0
    move-exception v0

    .line 870
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Launcher.Utilities"

    const-string v4, "Could not write bitmap"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getAllowRotationDefaultValue(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 279
    sget-boolean v3, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_ANDROID_N:Z

    if-eqz v3, :cond_0

    .line 282
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 283
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 284
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v3, v4

    sget v4, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    div-int v0, v3, v4

    .line 285
    .local v0, "originalSmallestWidth":I
    const/16 v3, 0x258

    if-lt v0, v3, :cond_0

    const/4 v2, 0x1

    .line 287
    .end local v0    # "originalSmallestWidth":I
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    return v2
.end method

.method public static getAppsViewNumCols(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1026
    sget v2, Lnet/oneplus/h2launcher/Utilities;->sSelectedIconSize:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1027
    const-string v2, "icon_pack_shared_preferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1028
    .local v1, "iconPackSharedPrefs":Landroid/content/SharedPreferences;
    const-string v2, "current_icon_size"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lnet/oneplus/h2launcher/Utilities;->sSelectedIconSize:I

    .line 1032
    .end local v1    # "iconPackSharedPrefs":Landroid/content/SharedPreferences;
    :cond_0
    sget v2, Lnet/oneplus/h2launcher/Utilities;->sSelectedIconSize:I

    packed-switch v2, :pswitch_data_0

    .line 1043
    sget-object v0, Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;->STANDARD:Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;

    .line 1045
    .local v0, "appDrawerSize":Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;
    :goto_0
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;->getAppDrawerSize()I

    move-result v2

    return v2

    .line 1034
    .end local v0    # "appDrawerSize":Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;
    :pswitch_0
    sget-object v0, Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;->LARGE:Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;

    .line 1035
    .restart local v0    # "appDrawerSize":Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;
    goto :goto_0

    .line 1037
    .end local v0    # "appDrawerSize":Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;
    :pswitch_1
    sget-object v0, Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;->STANDARD:Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;

    .line 1038
    .restart local v0    # "appDrawerSize":Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;
    goto :goto_0

    .line 1040
    .end local v0    # "appDrawerSize":Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;
    :pswitch_2
    sget-object v0, Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;->SMALL:Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;

    .line 1041
    .restart local v0    # "appDrawerSize":Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;
    goto :goto_0

    .line 1032
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getCenterDeltaInScreenSpace(Landroid/view/View;Landroid/view/View;[I)[I
    .locals 7
    .param p0, "v0"    # Landroid/view/View;
    .param p1, "v1"    # Landroid/view/View;
    .param p2, "delta"    # [I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 597
    sget-object v0, Lnet/oneplus/h2launcher/Utilities;->sLoc0:[I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 598
    sget-object v0, Lnet/oneplus/h2launcher/Utilities;->sLoc1:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 600
    sget-object v0, Lnet/oneplus/h2launcher/Utilities;->sLoc0:[I

    aget v1, v0, v4

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, v0, v4

    .line 601
    sget-object v0, Lnet/oneplus/h2launcher/Utilities;->sLoc0:[I

    aget v1, v0, v5

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, v0, v5

    .line 602
    sget-object v0, Lnet/oneplus/h2launcher/Utilities;->sLoc1:[I

    aget v1, v0, v4

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, v0, v4

    .line 603
    sget-object v0, Lnet/oneplus/h2launcher/Utilities;->sLoc1:[I

    aget v1, v0, v5

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, v0, v5

    .line 605
    if-nez p2, :cond_0

    .line 606
    const/4 v0, 0x2

    new-array p2, v0, [I

    .line 609
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/Utilities;->sLoc1:[I

    aget v0, v0, v4

    sget-object v1, Lnet/oneplus/h2launcher/Utilities;->sLoc0:[I

    aget v1, v1, v4

    sub-int/2addr v0, v1

    aput v0, p2, v4

    .line 610
    sget-object v0, Lnet/oneplus/h2launcher/Utilities;->sLoc1:[I

    aget v0, v0, v5

    sget-object v1, Lnet/oneplus/h2launcher/Utilities;->sLoc0:[I

    aget v1, v1, v5

    sub-int/2addr v0, v1

    aput v0, p2, v5

    .line 612
    return-object p2
.end method

.method private static getDefaultDensity(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1656
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 1657
    .local v2, "wm":Landroid/view/WindowManager;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1658
    .local v1, "size":Landroid/graphics/Point;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1659
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1660
    .local v0, "shortLength":I
    int-to-float v3, v0

    const v4, 0x40249249

    div-float/2addr v3, v4

    float-to-int v3, v3

    return v3
.end method

.method public static getDescendantCoordRelativeToParent(Landroid/view/View;Landroid/view/View;[IZ)F
    .locals 1
    .param p0, "descendant"    # Landroid/view/View;
    .param p1, "root"    # Landroid/view/View;
    .param p2, "coord"    # [I
    .param p3, "includeRootScroll"    # Z

    .prologue
    .line 495
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lnet/oneplus/h2launcher/Utilities;->getDescendantCoordRelativeToParent(Landroid/view/View;Landroid/view/View;[IZZ)F

    move-result v0

    return v0
.end method

.method public static getDescendantCoordRelativeToParent(Landroid/view/View;Landroid/view/View;[IZZ)F
    .locals 11
    .param p0, "descendant"    # Landroid/view/View;
    .param p1, "root"    # Landroid/view/View;
    .param p2, "coord"    # [I
    .param p3, "includeRootScroll"    # Z
    .param p4, "isMapPoint"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 500
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .local v0, "ancestorChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v7, 0x2

    new-array v3, v7, [F

    aget v7, p2, v9

    int-to-float v7, v7

    aput v7, v3, v9

    aget v7, p2, v10

    int-to-float v7, v7

    aput v7, v3, v10

    .line 504
    .local v3, "pt":[F
    move-object v5, p0

    .line 505
    .local v5, "v":Landroid/view/View;
    :goto_0
    if-eq v5, p1, :cond_0

    if-eqz v5, :cond_0

    .line 506
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .end local v5    # "v":Landroid/view/View;
    check-cast v5, Landroid/view/View;

    .restart local v5    # "v":Landroid/view/View;
    goto :goto_0

    .line 509
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    const/high16 v4, 0x3f800000    # 1.0f

    .line 512
    .local v4, "scale":F
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 513
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 514
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 517
    .local v6, "v0":Landroid/view/View;
    if-ne v6, p0, :cond_1

    if-eqz p3, :cond_2

    .line 518
    :cond_1
    aget v7, v3, v9

    invoke-virtual {v6}, Landroid/view/View;->getScrollX()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    aput v7, v3, v9

    .line 519
    aget v7, v3, v10

    invoke-virtual {v6}, Landroid/view/View;->getScrollY()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    aput v7, v3, v10

    .line 522
    :cond_2
    if-eqz p4, :cond_3

    .line 523
    invoke-virtual {v6}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 526
    :cond_3
    aget v7, v3, v9

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    aput v7, v3, v9

    .line 527
    aget v7, v3, v10

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    aput v7, v3, v10

    .line 528
    invoke-virtual {v6}, Landroid/view/View;->getScaleX()F

    move-result v7

    mul-float/2addr v4, v7

    .line 513
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 531
    .end local v6    # "v0":Landroid/view/View;
    :cond_4
    aget v7, v3, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    aput v7, p2, v9

    .line 532
    aget v7, v3, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    aput v7, p2, v10

    .line 533
    return v4
.end method

.method public static getDeviceTag()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1425
    :try_start_0
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1427
    .local v0, "clazz":Ljava/lang/Class;
    const-string v5, "get"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v0, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1428
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "ro.product.device"

    aput-object v9, v7, v8

    invoke-virtual {v3, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1429
    .local v1, "device":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1430
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 1432
    :cond_0
    const-string v5, "Launcher.Utilities"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDeviceTag# device="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    const/4 v5, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_1
    move v4, v5

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 1466
    const-string v4, "18821"

    .line 1471
    .end local v1    # "device":Ljava/lang/String;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_1
    return-object v4

    .line 1434
    .restart local v1    # "device":Ljava/lang/String;
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    :sswitch_0
    const-string v6, "ONEPLUS"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :sswitch_1
    const-string v4, "OnePlus2"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_0

    :sswitch_2
    const-string v4, "SUM"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    goto :goto_0

    :sswitch_3
    const-string v4, "OnePlus"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x3

    goto :goto_0

    :sswitch_4
    const-string v4, "OnePlus3"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :sswitch_5
    const-string v4, "OnePlus3T"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x5

    goto :goto_0

    :sswitch_6
    const-string v4, "OnePlus5"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x6

    goto :goto_0

    :sswitch_7
    const-string v4, "OnePlus5T"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x7

    goto :goto_0

    :sswitch_8
    const-string v4, "P7801"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x8

    goto :goto_0

    :sswitch_9
    const-string v4, "OnePlus6"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x9

    goto :goto_0

    :sswitch_a
    const-string v4, "P7819"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xa

    goto :goto_0

    :sswitch_b
    const-string v4, "P8801"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xb

    goto :goto_0

    :sswitch_c
    const-string v4, "OnePlus6T"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v4, "P8811"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v4, "OnePlus6TSingle"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string v4, "SS8857"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v4, "SS8825"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string v4, "SS8821"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x11

    goto/16 :goto_0

    .line 1436
    :pswitch_0
    const-string v4, "14001"

    goto/16 :goto_1

    .line 1438
    :pswitch_1
    const-string v4, "14049"

    goto/16 :goto_1

    .line 1441
    :pswitch_2
    const-string v4, "15055"

    goto/16 :goto_1

    .line 1443
    :pswitch_3
    const-string v4, "15801"

    goto/16 :goto_1

    .line 1445
    :pswitch_4
    const-string v4, "15811"

    goto/16 :goto_1

    .line 1447
    :pswitch_5
    const-string v4, "16859"

    goto/16 :goto_1

    .line 1450
    :pswitch_6
    const-string v4, "17801"

    goto/16 :goto_1

    .line 1453
    :pswitch_7
    const-string v4, "17819"

    goto/16 :goto_1

    .line 1456
    :pswitch_8
    const-string v4, "18801"

    goto/16 :goto_1

    .line 1459
    :pswitch_9
    const-string v4, "18811"

    goto/16 :goto_1

    .line 1461
    :pswitch_a
    const-string v4, "18857"

    goto/16 :goto_1

    .line 1463
    :pswitch_b
    const-string v4, "18825"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1468
    .end local v1    # "device":Ljava/lang/String;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 1469
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "Launcher.Utilities"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    const-string v4, ""

    goto/16 :goto_1

    .line 1434
    :sswitch_data_0
    .sparse-switch
        -0x6db1d861 -> :sswitch_11
        -0x6db1d85d -> :sswitch_10
        -0x6db1d7fe -> :sswitch_f
        -0x2e9e947f -> :sswitch_5
        -0x2e9e9441 -> :sswitch_7
        -0x2e9e9422 -> :sswitch_c
        -0x23e7db20 -> :sswitch_0
        0x1422b -> :sswitch_2
        0x48130f2 -> :sswitch_8
        0x4813119 -> :sswitch_a
        0x481a551 -> :sswitch_b
        0x481a570 -> :sswitch_d
        0x1476a500 -> :sswitch_3
        0x32a9fdc6 -> :sswitch_e
        0x7a5dfb32 -> :sswitch_1
        0x7a5dfb33 -> :sswitch_4
        0x7a5dfb35 -> :sswitch_6
        0x7a5dfb36 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static getDimensionPixelNormalized(Landroid/content/Context;I)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 1664
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1665
    .local v2, "size":I
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1666
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 1667
    .local v3, "wm":Landroid/view/WindowManager;
    if-nez v3, :cond_1

    .line 1676
    .end local v2    # "size":I
    :cond_0
    :goto_0
    return v2

    .line 1670
    .restart local v2    # "size":I
    :cond_1
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1672
    invoke-static {p0}, Lnet/oneplus/h2launcher/Utilities;->getDefaultDensity(Landroid/content/Context;)I

    move-result v0

    .line 1673
    .local v0, "defaultDensity":I
    iget v4, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    if-eq v4, v0, :cond_0

    .line 1674
    mul-int v4, v2, v0

    int-to-float v4, v4

    iget v5, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v2, v4

    goto :goto_0
.end method

.method public static getFolderIconSize(Landroid/content/Context;Lnet/oneplus/h2launcher/DeviceProfile;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "grid"    # Lnet/oneplus/h2launcher/DeviceProfile;

    .prologue
    .line 1075
    sget v0, Lnet/oneplus/h2launcher/Utilities;->sFolderIconSize:I

    if-nez v0, :cond_0

    .line 1076
    iget v0, p1, Lnet/oneplus/h2launcher/DeviceProfile;->folderIconSizePx:I

    int-to-float v0, v0

    invoke-static {p0}, Lnet/oneplus/h2launcher/Utilities;->getIconScaleValue(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lnet/oneplus/h2launcher/Utilities;->sFolderIconSize:I

    .line 1078
    :cond_0
    sget v0, Lnet/oneplus/h2launcher/Utilities;->sFolderIconSize:I

    return v0
.end method

.method public static getFolderNameTopMargin(Landroid/content/Context;Lnet/oneplus/h2launcher/DeviceProfile;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "grid"    # Lnet/oneplus/h2launcher/DeviceProfile;

    .prologue
    .line 1060
    sget v0, Lnet/oneplus/h2launcher/Utilities;->sFolderNameTopMargin:I

    if-nez v0, :cond_0

    .line 1061
    iget v0, p1, Lnet/oneplus/h2launcher/DeviceProfile;->iconSizePx:I

    iget v1, p1, Lnet/oneplus/h2launcher/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {p0}, Lnet/oneplus/h2launcher/Utilities;->getIconScaleValue(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lnet/oneplus/h2launcher/Utilities;->sFolderNameTopMargin:I

    .line 1064
    :cond_0
    sget v0, Lnet/oneplus/h2launcher/Utilities;->sFolderNameTopMargin:I

    return v0
.end method

.method public static getFolderPreviewBackgroundTopMargin(Landroid/content/Context;Lnet/oneplus/h2launcher/DeviceProfile;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "grid"    # Lnet/oneplus/h2launcher/DeviceProfile;

    .prologue
    .line 1068
    sget v0, Lnet/oneplus/h2launcher/Utilities;->sFolderPreviewBackgroundTopMargin:I

    if-nez v0, :cond_0

    .line 1069
    iget v0, p1, Lnet/oneplus/h2launcher/DeviceProfile;->folderBackgroundOffset:I

    int-to-float v0, v0

    invoke-static {p0}, Lnet/oneplus/h2launcher/Utilities;->getIconScaleValue(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lnet/oneplus/h2launcher/Utilities;->sFolderPreviewBackgroundTopMargin:I

    .line 1071
    :cond_0
    sget v0, Lnet/oneplus/h2launcher/Utilities;->sFolderPreviewBackgroundTopMargin:I

    return v0
.end method

.method private static getIconBitmapSize()I
    .locals 1

    .prologue
    .line 326
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getInvariantDeviceProfile()Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-result-object v0

    iget v0, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->iconBitmapSize:I

    return v0
.end method

.method public static getIconPaddingPx(Landroid/graphics/Bitmap;I)I
    .locals 11
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "targetPaddingPx"    # I

    .prologue
    const/4 v10, -0x1

    const/4 v2, 0x0

    .line 1223
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1224
    :cond_0
    const-string v0, "Launcher.Utilities"

    const-string v2, "[getIconPaddingPx] bitmap is null or recycled."

    invoke-static {v0, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v10

    .line 1243
    :goto_0
    return v0

    .line 1228
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 1229
    .local v7, "height":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1231
    .local v3, "width":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .local v1, "pixels":[I
    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 1232
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1234
    invoke-static {v1, v3, v7, p1, v2}, Lnet/oneplus/h2launcher/Utilities;->getIconPaddingPx([IIIII)I

    move-result v8

    .line 1235
    .local v8, "leftPaddingPx":I
    const/4 v0, 0x1

    invoke-static {v1, v3, v7, p1, v0}, Lnet/oneplus/h2launcher/Utilities;->getIconPaddingPx([IIIII)I

    move-result v9

    .line 1238
    .local v9, "upPaddingPx":I
    if-ltz v8, :cond_2

    if-gez v9, :cond_3

    :cond_2
    move v0, v10

    .line 1239
    goto :goto_0

    .line 1243
    :cond_3
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public static getIconPaddingPx([IIIII)I
    .locals 8
    .param p0, "pixels"    # [I
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "targetPaddingPx"    # I
    .param p4, "direction"    # I

    .prologue
    const/4 v5, -0x1

    .line 1254
    packed-switch p4, :pswitch_data_0

    :cond_0
    move v4, v5

    .line 1301
    :cond_1
    :goto_0
    return v4

    .line 1256
    :pswitch_0
    div-int/lit8 v6, p2, 0x2

    mul-int v3, v6, p1

    .line 1257
    .local v3, "start":I
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_1
    if-ge v4, p3, :cond_2

    .line 1258
    add-int v6, v3, v4

    aget v6, p0, v6

    invoke-static {v6}, Lnet/oneplus/h2launcher/Utilities;->isTransparentPixel(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1257
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1266
    .end local v3    # "start":I
    .end local v4    # "x":I
    :pswitch_1
    div-int/lit8 v1, p1, 0x2

    .line 1267
    .local v1, "middle":I
    const/4 v4, 0x0

    .restart local v4    # "x":I
    :goto_2
    if-ge v4, p3, :cond_2

    .line 1268
    mul-int v6, v4, p1

    add-int v2, v1, v6

    .line 1269
    .local v2, "position":I
    aget v6, p0, v2

    invoke-static {v6}, Lnet/oneplus/h2launcher/Utilities;->isTransparentPixel(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1267
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1277
    .end local v1    # "middle":I
    .end local v2    # "position":I
    .end local v4    # "x":I
    :pswitch_2
    array-length v6, p0

    div-int/lit8 v6, v6, 0x2

    add-int v3, v6, p1

    .line 1278
    .restart local v3    # "start":I
    const/4 v4, 0x0

    .restart local v4    # "x":I
    :goto_3
    if-ge v4, p3, :cond_2

    .line 1279
    sub-int v6, v3, v4

    aget v6, p0, v6

    invoke-static {v6}, Lnet/oneplus/h2launcher/Utilities;->isTransparentPixel(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1278
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1287
    .end local v3    # "start":I
    .end local v4    # "x":I
    :pswitch_3
    array-length v6, p0

    div-int/lit8 v7, p1, 0x2

    sub-int v0, v6, v7

    .line 1288
    .local v0, "bottomMiddle":I
    const/4 v4, 0x0

    .restart local v4    # "x":I
    :goto_4
    if-ge v4, p3, :cond_0

    .line 1289
    mul-int v6, v4, p1

    sub-int v2, v0, v6

    .line 1290
    .restart local v2    # "position":I
    aget v6, p0, v2

    invoke-static {v6}, Lnet/oneplus/h2launcher/Utilities;->isTransparentPixel(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1288
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .end local v0    # "bottomMiddle":I
    .end local v2    # "position":I
    :cond_2
    move v4, v5

    .line 1301
    goto :goto_0

    .line 1254
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getIconScaleValue(Landroid/content/Context;)F
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1009
    sget v2, Lnet/oneplus/h2launcher/Utilities;->sSelectedIconSize:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1010
    const-string v2, "icon_pack_shared_preferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1011
    .local v0, "iconPackSharedPrefs":Landroid/content/SharedPreferences;
    const-string v2, "current_icon_size"

    const/4 v3, 0x2

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lnet/oneplus/h2launcher/Utilities;->sSelectedIconSize:I

    .line 1013
    .end local v0    # "iconPackSharedPrefs":Landroid/content/SharedPreferences;
    :cond_0
    sget v2, Lnet/oneplus/h2launcher/Utilities;->sSelectedIconSize:I

    packed-switch v2, :pswitch_data_0

    .line 1021
    :goto_0
    :pswitch_0
    return v1

    .line 1015
    :pswitch_1
    const v1, 0x3f4ccccd    # 0.8f

    goto :goto_0

    .line 1019
    :pswitch_2
    const v1, 0x3f90a3d7    # 1.13f

    goto :goto_0

    .line 1013
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getIconTopOffset(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "itemInfo"    # Lnet/oneplus/h2launcher/ItemInfo;

    .prologue
    const/4 v0, 0x0

    .line 1404
    invoke-static {p0}, Lnet/oneplus/h2launcher/Utilities;->isBangsScreen(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1416
    :cond_0
    :goto_0
    return v0

    .line 1408
    :cond_1
    if-eqz p1, :cond_0

    iget-wide v2, p1, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1412
    sget v0, Lnet/oneplus/h2launcher/Utilities;->sBangsScreenDesktopIconTopOffset:I

    if-nez v0, :cond_2

    .line 1413
    const v0, 0x7f0c022d

    invoke-static {p0, v0}, Lnet/oneplus/h2launcher/Utilities;->getDimensionPixelNormalized(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lnet/oneplus/h2launcher/Utilities;->sBangsScreenDesktopIconTopOffset:I

    .line 1416
    :cond_2
    sget v0, Lnet/oneplus/h2launcher/Utilities;->sBangsScreenDesktopIconTopOffset:I

    goto :goto_0
.end method

.method public static getOneplusPermissionState(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1688
    sget v0, Lnet/oneplus/h2launcher/Utilities;->sOneplusPermissionState:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 1689
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_permission_agree"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lnet/oneplus/h2launcher/Utilities;->sOneplusPermissionState:I

    .line 1690
    :cond_0
    sget v0, Lnet/oneplus/h2launcher/Utilities;->sOneplusPermissionState:I

    return v0
.end method

.method public static getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1508
    const-string v0, "net.oneplus.h2launcher.prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenAspectRatio(Landroid/content/Context;Z)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "realSize"    # Z

    .prologue
    .line 476
    invoke-static {p0, p1}, Lnet/oneplus/h2launcher/Utilities;->getScreenDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v0

    .line 477
    .local v0, "dimens":Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    return v1
.end method

.method public static getScreenDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "realSize"    # Z

    .prologue
    .line 461
    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 462
    .local v1, "manager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 463
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 464
    .local v2, "size":Landroid/graphics/Point;
    if-eqz p1, :cond_1

    .line 465
    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 469
    :goto_0
    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    if-le v4, v5, :cond_0

    .line 470
    new-instance v3, Landroid/graphics/Point;

    iget v4, v2, Landroid/graphics/Point;->y:I

    iget v5, v2, Landroid/graphics/Point;->x:I

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .end local v2    # "size":Landroid/graphics/Point;
    .local v3, "size":Landroid/graphics/Point;
    move-object v2, v3

    .line 472
    .end local v3    # "size":Landroid/graphics/Point;
    .restart local v2    # "size":Landroid/graphics/Point;
    :cond_0
    return-object v2

    .line 467
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method public static declared-synchronized getSearchWidgetProvider(Landroid/content/Context;Lnet/oneplus/h2launcher/Utilities$WidgetProviderListener;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lnet/oneplus/h2launcher/Utilities$WidgetProviderListener;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 782
    const-class v2, Lnet/oneplus/h2launcher/Utilities;

    monitor-enter v2

    if-nez p1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener can\'t be null"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 783
    :cond_0
    :try_start_1
    const-string v1, "search"

    .line 784
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 786
    .local v0, "searchManager":Landroid/app/SearchManager;
    new-instance v1, Lnet/oneplus/h2launcher/Utilities$1;

    invoke-direct {v1, p0, v0, p1}, Lnet/oneplus/h2launcher/Utilities$1;-><init>(Landroid/content/Context;Landroid/app/SearchManager;Lnet/oneplus/h2launcher/Utilities$WidgetProviderListener;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    .line 817
    invoke-virtual {v1, v3}, Lnet/oneplus/h2launcher/Utilities$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 818
    monitor-exit v2

    return-void
.end method

.method public static getShortcutIconDrawable(Landroid/content/Context;Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortcutInfo"    # Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;
    .param p2, "density"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x19
    .end annotation

    .prologue
    .line 1555
    sget-boolean v2, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_ANDROID_N_MR1:Z

    if-eqz v2, :cond_0

    .line 1557
    :try_start_0
    const-class v2, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherApps;

    .line 1558
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    .line 1557
    invoke-virtual {v2, v3, p2}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1565
    :goto_0
    return-object v1

    .line 1560
    :catch_0
    move-exception v0

    .line 1561
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    const-string v2, "Launcher.Utilities"

    const-string v3, "Failed to get shortcut icon"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1565
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1560
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 1592
    :try_start_0
    const-string v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1593
    .local v0, "clazz":Ljava/lang/Class;
    const-string v4, "get"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1594
    .local v2, "getter":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1595
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 1601
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v2    # "getter":Ljava/lang/reflect/Method;
    .end local v3    # "value":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1598
    :catch_0
    move-exception v1

    .line 1599
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Launcher.Utilities"

    const-string v5, "Unable to read system properties"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v3, p1

    .line 1601
    goto :goto_0
.end method

.method public static goToSleep(Landroid/os/PowerManager;)V
    .locals 7
    .param p0, "powerManager"    # Landroid/os/PowerManager;

    .prologue
    .line 1720
    const-string v2, "Launcher.Utilities"

    const-string v3, "goToSleep()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "goToSleep"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1723
    .local v1, "goToSleep":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1727
    .end local v1    # "goToSleep":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1724
    :catch_0
    move-exception v0

    .line 1725
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    goto :goto_0

    .line 1724
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public static isAllowRotationPrefEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 271
    .line 272
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v3

    .line 271
    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 273
    .local v1, "sharedPrefs":Landroid/content/SharedPreferences;
    const-string v3, "pref_allowRotation"

    .line 274
    invoke-static {p0}, Lnet/oneplus/h2launcher/Utilities;->getAllowRotationDefaultValue(Landroid/content/Context;)Z

    move-result v4

    .line 273
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 275
    .local v0, "allowRotationPref":Z
    sget-boolean v3, Lnet/oneplus/h2launcher/Utilities;->sForceEnableRotation:Z

    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public static isAtLeastO()Z
    .locals 2

    .prologue
    .line 138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBangsScreen(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 1396
    invoke-static {p0, v1}, Lnet/oneplus/h2launcher/Utilities;->getScreenDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v0

    .line 1397
    .local v0, "dimens":Landroid/graphics/Point;
    iget v2, v0, Landroid/graphics/Point;->y:I

    const/16 v3, 0x870

    if-le v2, v3, :cond_0

    .line 1400
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isBootCompleted()Z
    .locals 3

    .prologue
    .line 1609
    const-string v0, "1"

    const-string v1, "sys.boot_completed"

    const-string v2, "1"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/Utilities;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isComponentEnabled(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z
    .locals 9
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v5, 0x0

    .line 821
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    .line 823
    .local v0, "componentEnabledSetting":I
    packed-switch v0, :pswitch_data_0

    .line 831
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x20f

    invoke-virtual {p0, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 837
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 838
    .local v2, "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ComponentInfo;>;"
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_0

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    invoke-static {v2, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 839
    :cond_0
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v6, :cond_1

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    invoke-static {v2, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 840
    :cond_1
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v6, :cond_2

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    invoke-static {v2, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 842
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ComponentInfo;

    .line 843
    .local v1, "componentInfo":Landroid/content/pm/ComponentInfo;
    iget-object v7, v1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 844
    invoke-virtual {v1}, Landroid/content/pm/ComponentInfo;->isEnabled()Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 851
    .end local v1    # "componentInfo":Landroid/content/pm/ComponentInfo;
    .end local v2    # "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ComponentInfo;>;"
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_4
    :goto_0
    :pswitch_0
    return v5

    .line 827
    :pswitch_1
    const/4 v5, 0x1

    goto :goto_0

    .line 849
    :catch_0
    move-exception v3

    .line 851
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 823
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isDarkModeTheme(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1131
    const/4 v2, 0x2

    .line 1133
    .local v2, "theme":I
    :try_start_0
    const-class v3, Landroid/provider/Settings$System;

    const-string v6, "getIntForUser"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/ContentResolver;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1135
    .local v1, "getIntForUser":Ljava/lang/reflect/Method;
    const-class v3, Landroid/provider/Settings$System;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "oem_black_mode"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 1136
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1135
    invoke-virtual {v1, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    .line 1144
    .end local v1    # "getIntForUser":Ljava/lang/reflect/Method;
    :goto_0
    if-ne v2, v4, :cond_0

    move v3, v4

    :goto_1
    return v3

    .line 1137
    :catch_0
    move-exception v0

    .line 1138
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "Launcher.Utilities"

    const-string v6, "Failed to get method by reflection: "

    invoke-static {v3, v6, v0}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1139
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 1140
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "Launcher.Utilities"

    const-string v6, "Failed to invoke the method by reflection: "

    invoke-static {v3, v6, v0}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1141
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 1142
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "Launcher.Utilities"

    const-string v6, "Illegal access to the target: "

    invoke-static {v3, v6, v0}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    move v3, v5

    .line 1144
    goto :goto_1
.end method

.method public static isDarkModeThemeByGlobal(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1148
    const/4 v2, 0x2

    .line 1150
    .local v2, "theme":I
    :try_start_0
    const-class v3, Landroid/provider/Settings$Global;

    const-string v6, "getInt"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/ContentResolver;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1152
    .local v1, "getIntForUser":Ljava/lang/reflect/Method;
    const-class v3, Landroid/provider/Settings$System;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "oem_black_mode"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 1153
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1152
    invoke-virtual {v1, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    .line 1161
    .end local v1    # "getIntForUser":Ljava/lang/reflect/Method;
    :goto_0
    if-ne v2, v4, :cond_0

    move v3, v4

    :goto_1
    return v3

    .line 1154
    :catch_0
    move-exception v0

    .line 1155
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "Launcher.Utilities"

    const-string v6, "Failed to get method by reflection: "

    invoke-static {v3, v6, v0}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1156
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 1157
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "Launcher.Utilities"

    const-string v6, "Failed to invoke the method by reflection: "

    invoke-static {v3, v6, v0}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1158
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 1159
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "Launcher.Utilities"

    const-string v6, "Illegal access to the target: "

    invoke-static {v3, v6, v0}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    move v3, v5

    .line 1161
    goto :goto_1
.end method

.method public static isDefaultDensity(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1372
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1373
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1374
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1376
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {p0}, Lnet/oneplus/h2launcher/Utilities;->getDefaultDensity(Landroid/content/Context;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 1377
    const/4 v2, 0x1

    .line 1380
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isDualApp(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z
    .locals 2
    .param p0, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 1616
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGestureButtonEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1714
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_navigation_bar_type"

    const/16 v3, -0x64

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1715
    .local v0, "value":I
    const-string v1, "Launcher.Utilities"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isGestureButtonEnabled# value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLargestDensity(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1360
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1361
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1362
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1364
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0x21c

    if-ne v2, v3, :cond_0

    .line 1365
    const/4 v2, 0x1

    .line 1368
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isLauncherAppTarget(Landroid/content/Intent;)Z
    .locals 6
    .param p0, "launchIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 972
    if-eqz p0, :cond_3

    const-string v4, "android.intent.action.MAIN"

    .line 973
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 974
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 975
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 976
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-ne v4, v2, :cond_3

    const-string v4, "android.intent.category.LAUNCHER"

    .line 977
    invoke-virtual {p0, v4}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 978
    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 980
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 981
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 988
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return v2

    .line 984
    .restart local v0    # "extras":Landroid/os/Bundle;
    :cond_1
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 985
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    if-ne v4, v2, :cond_2

    const-string v4, "profile"

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    move v2, v3

    goto :goto_0

    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    move v2, v3

    .line 988
    goto :goto_0
.end method

.method public static isLessOrEqualDefaultDensity(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1348
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1349
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1350
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1352
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {p0}, Lnet/oneplus/h2launcher/Utilities;->getDefaultDensity(Landroid/content/Context;)I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 1353
    const/4 v2, 0x1

    .line 1356
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isMinimumDensity(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1384
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1385
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1386
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1388
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {p0}, Lnet/oneplus/h2launcher/Utilities;->getDefaultDensity(Landroid/content/Context;)I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1389
    const/4 v2, 0x1

    .line 1392
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isNOrAbove()Z
    .locals 2

    .prologue
    .line 134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isOnePlusLauncher(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1569
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1571
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1572
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1574
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1575
    .local v3, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1577
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1579
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    const/4 v6, 0x0

    invoke-virtual {v5, v3, v0, v6}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 1581
    const/4 v4, 0x0

    .line 1582
    .local v4, "isOnePlusLauncher":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1583
    .local v1, "activity":Landroid/content/ComponentName;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1584
    const/4 v4, 0x1

    goto :goto_0

    .line 1587
    .end local v1    # "activity":Landroid/content/ComponentName;
    :cond_1
    return v4
.end method

.method public static isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1331
    .line 1332
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1333
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1336
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v2

    .line 1334
    :catch_0
    move-exception v1

    .line 1336
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 1334
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static isPackageInstalled(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 1325
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/oneplus/h2launcher/Utilities;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1317
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1318
    const/4 v1, 0x1

    .line 1320
    :goto_0
    return v1

    .line 1319
    :catch_0
    move-exception v0

    .line 1320
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 1319
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static isPackageValid(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1341
    invoke-static {p0, p1}, Lnet/oneplus/h2launcher/Utilities;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lnet/oneplus/h2launcher/Utilities;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPropertyEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p0, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 267
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isRotationAllowedForDevice(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 291
    sget-boolean v0, Lnet/oneplus/h2launcher/Utilities;->sForceEnableRotation:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

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

.method public static isRtl(Landroid/content/res/Resources;)Z
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 953
    sget-boolean v1, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_JB_MR1:Z

    if-eqz v1, :cond_0

    .line 954
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 638
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 639
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 640
    .local v0, "cn":Landroid/content/ComponentName;
    const/4 v3, 0x0

    .line 641
    .local v3, "packageName":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 642
    const/high16 v6, 0x10000

    invoke-virtual {v4, p1, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 643
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_0

    .line 644
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 649
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 651
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 652
    .local v2, "info":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_1

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_1

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    const/4 v5, 0x1

    .line 658
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_1
    return v5

    .line 647
    :cond_2
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 654
    :catch_0
    move-exception v1

    .line 655
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1
.end method

.method public static isTaskUnfinished(Landroid/os/AsyncTask;)Z
    .locals 2
    .param p0, "task"    # Landroid/os/AsyncTask;

    .prologue
    .line 1165
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isTransparentPixel(I)Z
    .locals 2
    .param p0, "argb"    # I

    .prologue
    .line 1305
    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v0, v1, 0xff

    .line 1308
    .local v0, "alpha":I
    const/16 v1, 0x78

    if-gt v0, v1, :cond_0

    .line 1309
    const/4 v1, 0x1

    .line 1311
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isUserJoinPlan(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/16 v5, -0x4d

    const/4 v1, 0x1

    .line 1696
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oem_join_stability_plan_settings"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1697
    .local v0, "isJoinStabilityPlan":I
    if-eq v0, v5, :cond_2

    .line 1698
    if-ne v0, v1, :cond_1

    .line 1701
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 1698
    goto :goto_0

    .line 1700
    :cond_2
    const-string v3, "Launcher.Utilities"

    const-string v4, "there is no JoinStabilityPlan flag"

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oem_join_user_plan_settings"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v1, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public static isValidComponent(Landroid/content/Context;ILandroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "itemType"    # I
    .param p2, "cn"    # Landroid/content/ComponentName;
    .param p3, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1475
    if-eq p1, v5, :cond_0

    const/4 v7, 0x6

    if-ne p1, v7, :cond_1

    .line 1504
    :cond_0
    :goto_0
    return v5

    .line 1480
    :cond_1
    if-eqz p2, :cond_0

    .line 1485
    invoke-static {}, Lnet/oneplus/h2launcher/Utilities;->isBootCompleted()Z

    move-result v2

    .line 1486
    .local v2, "isSdCardReady":Z
    if-eqz v2, :cond_0

    .line 1491
    invoke-static {p0}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    move-result-object v3

    .line 1492
    .local v3, "launcherApps":Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;
    if-eqz v3, :cond_0

    .line 1496
    const/4 v4, 0x0

    .line 1497
    .local v4, "validPkg":Z
    const/4 v1, 0x0

    .line 1499
    .local v1, "enable":Z
    :try_start_0
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, p3}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z

    move-result v4

    .line 1500
    invoke-virtual {v3, p2, p3}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1504
    :goto_1
    if-eqz v4, :cond_2

    if-nez v1, :cond_0

    :cond_2
    move v5, v6

    goto :goto_0

    .line 1501
    :catch_0
    move-exception v0

    .line 1502
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v7, "Launcher.Utilities"

    const-string v8, "isValidComponent SecurityException %s"

    new-array v9, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v7, v8, v9}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static isValidUser(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1624
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v0

    .line 1625
    .local v0, "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    invoke-static {p0, v0}, Lnet/oneplus/h2launcher/Utilities;->isValidUser(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z

    move-result v1

    return v1
.end method

.method public static isValidUser(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1632
    invoke-static {p0}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v1

    .line 1633
    .local v1, "userManager":Lnet/oneplus/h2launcher/compat/UserManagerCompat;
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v0

    .line 1634
    .local v0, "isUserRunning":Z
    if-nez v0, :cond_0

    .line 1635
    const-string v4, "Launcher.Utilities"

    const-string v5, "isValidUser# userId: %d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-static {v4, v5, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1641
    :goto_0
    return v2

    .line 1637
    :cond_0
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1638
    const-string v4, "Launcher.Utilities"

    const-string v5, "isValidUser# the %s is lock."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v4, v5, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v2, v3

    .line 1641
    goto :goto_0
.end method

.method public static isViewAttachedToWindow(Landroid/view/View;)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 765
    sget-boolean v0, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_KITKAT:Z

    if-eqz v0, :cond_0

    .line 766
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    .line 769
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static mapCoordInSelfToDescendent(Landroid/view/View;Landroid/view/View;[I)F
    .locals 13
    .param p0, "descendant"    # Landroid/view/View;
    .param p1, "root"    # Landroid/view/View;
    .param p2, "coord"    # [I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 541
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 543
    .local v1, "ancestorChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v9, 0x2

    new-array v6, v9, [F

    aget v9, p2, v11

    int-to-float v9, v9

    aput v9, v6, v11

    aget v9, p2, v12

    int-to-float v9, v9

    aput v9, v6, v12

    .line 545
    .local v6, "pt":[F
    move-object v8, p0

    .line 546
    .local v8, "v":Landroid/view/View;
    :goto_0
    if-eq v8, p1, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 547
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    .end local v8    # "v":Landroid/view/View;
    check-cast v8, Landroid/view/View;

    .restart local v8    # "v":Landroid/view/View;
    goto :goto_0

    .line 550
    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    const/high16 v7, 0x3f800000    # 1.0f

    .line 553
    .local v7, "scale":F
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 554
    .local v4, "inverse":Landroid/graphics/Matrix;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 555
    .local v2, "count":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_3

    .line 556
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 557
    .local v0, "ancestor":Landroid/view/View;
    if-lez v3, :cond_2

    add-int/lit8 v9, v3, -0x1

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    move-object v5, v9

    .line 559
    .local v5, "next":Landroid/view/View;
    :goto_2
    aget v9, v6, v11

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    aput v9, v6, v11

    .line 560
    aget v9, v6, v12

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    aput v9, v6, v12

    .line 562
    if-eqz v5, :cond_1

    .line 563
    aget v9, v6, v11

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    aput v9, v6, v11

    .line 564
    aget v9, v6, v12

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    aput v9, v6, v12

    .line 565
    invoke-virtual {v5}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 566
    invoke-virtual {v4, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 567
    invoke-virtual {v5}, Landroid/view/View;->getScaleX()F

    move-result v9

    mul-float/2addr v7, v9

    .line 555
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 557
    .end local v5    # "next":Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 571
    .end local v0    # "ancestor":Landroid/view/View;
    :cond_3
    aget v9, v6, v11

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    aput v9, p2, v11

    .line 572
    aget v9, v6, v12

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    aput v9, p2, v12

    .line 573
    return v7
.end method

.method public static pointInView(Landroid/view/View;FFF)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "localX"    # F
    .param p2, "localY"    # F
    .param p3, "slop"    # F

    .prologue
    .line 583
    neg-float v0, p3

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    neg-float v0, p3

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 584
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs println(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 936
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 937
    .local v1, "b":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    const/4 v2, 0x1

    .line 940
    .local v2, "isFirstArgument":Z
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, p1, v3

    .line 941
    .local v0, "arg":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 942
    const/4 v2, 0x0

    .line 946
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 940
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 944
    :cond_0
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 948
    .end local v0    # "arg":Ljava/lang/Object;
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 949
    return-void
.end method

.method public static pxFromDp(FLandroid/util/DisplayMetrics;)I
    .locals 1
    .param p0, "size"    # F
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 996
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static pxFromSp(FLandroid/util/DisplayMetrics;)I
    .locals 1
    .param p0, "size"    # F
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 1000
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static saveBitmapInStorage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 10
    .param p0, "img"    # Landroid/graphics/Bitmap;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 1101
    if-nez p0, :cond_0

    .line 1128
    :goto_0
    return-void

    .line 1104
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 1105
    :cond_1
    const-string p1, "debug_bitmap.png"

    .line 1108
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/bitmaps"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1109
    .local v4, "iconsStoragePath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1110
    .local v5, "sdIconStorageDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 1113
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1114
    .local v3, "filePath":Ljava/lang/String;
    const-string v6, "Launcher.Utilities"

    const-string v7, "bitmap saved:%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-static {v6, v7, v8}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1116
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1117
    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1118
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {p0, v6, v7, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1120
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1121
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1123
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v3    # "filePath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1124
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v6, "Launcher.Utilities"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error saving image file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1125
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 1126
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "Launcher.Utilities"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error saving image file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static scaleRect(Landroid/graphics/Rect;F)V
    .locals 2
    .param p0, "r"    # Landroid/graphics/Rect;
    .param p1, "scale"    # F

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 588
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 589
    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 590
    iget v0, p0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 591
    iget v0, p0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 592
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 594
    :cond_0
    return-void
.end method

.method public static scaleRectAboutCenter(Landroid/graphics/Rect;F)V
    .locals 4
    .param p0, "r"    # Landroid/graphics/Rect;
    .param p1, "scale"    # F

    .prologue
    .line 616
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 617
    .local v0, "cx":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 618
    .local v1, "cy":I
    neg-int v2, v0

    neg-int v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 619
    invoke-static {p0, p1}, Lnet/oneplus/h2launcher/Utilities;->scaleRect(Landroid/graphics/Rect;F)V

    .line 620
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 621
    return-void
.end method

.method public static setFolderScaledLayoutParams(Landroid/content/Context;Lnet/oneplus/h2launcher/DeviceProfile;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "grid"    # Lnet/oneplus/h2launcher/DeviceProfile;

    .prologue
    .line 1053
    invoke-static {p0}, Lnet/oneplus/h2launcher/Utilities;->getIconScaleValue(Landroid/content/Context;)F

    move-result v0

    .line 1054
    .local v0, "iconScaleValue":F
    iget v1, p1, Lnet/oneplus/h2launcher/DeviceProfile;->iconSizePx:I

    iget v2, p1, Lnet/oneplus/h2launcher/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    sput v1, Lnet/oneplus/h2launcher/Utilities;->sFolderNameTopMargin:I

    .line 1055
    iget v1, p1, Lnet/oneplus/h2launcher/DeviceProfile;->folderBackgroundOffset:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    sput v1, Lnet/oneplus/h2launcher/Utilities;->sFolderPreviewBackgroundTopMargin:I

    .line 1056
    iget v1, p1, Lnet/oneplus/h2launcher/DeviceProfile;->folderIconSizePx:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    sput v1, Lnet/oneplus/h2launcher/Utilities;->sFolderIconSize:I

    .line 1057
    return-void
.end method

.method public static setSelectedIconSize(I)V
    .locals 0
    .param p0, "selectedIconSize"    # I

    .prologue
    .line 1049
    sput p0, Lnet/oneplus/h2launcher/Utilities;->sSelectedIconSize:I

    .line 1050
    return-void
.end method

.method public static shouldShowRequestPermission(Landroid/app/Activity;)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 1646
    const-string v4, "android.permission.READ_CONTACTS"

    invoke-static {p0, v4}, Lnet/oneplus/h2launcher/util/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    .line 1649
    .local v2, "should":Z
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1650
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string v4, "hasShowRequestWindow"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1652
    .local v0, "hasShowRequestWindow":Z
    if-nez v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public static startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    const v2, 0x7f0b002f

    const/4 v1, 0x0

    .line 626
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 635
    :goto_0
    return-void

    .line 627
    :catch_0
    move-exception v0

    .line 628
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 629
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 630
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 631
    const-string v1, "Launcher.Utilities"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launcher does not have the permission to launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "or use the exported attribute for this activity."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static trim(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 913
    if-nez p0, :cond_0

    .line 914
    const/4 v1, 0x0

    .line 919
    :goto_0
    return-object v1

    .line 918
    :cond_0
    sget-object v1, Lnet/oneplus/h2launcher/Utilities;->sTrimPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 919
    .local v0, "m":Ljava/util/regex/Matcher;
    const-string v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.class public Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;
.super Ljava/lang/Object;
.source "ClockWidget.java"

# interfaces
.implements Lnet/oneplus/h2launcher/CustomAppWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget$OnCustomWidgetRootLayoutChangeListener;
    }
.end annotation


# static fields
.field private static final CLOCK_STYLE:Ljava/lang/String; = "clock_style"

.field private static final SETTINGS_NAME_KEYGUARD_CLOCK_STYLE:Ljava/lang/String; = "keyguard_clock_widget"

.field public static final TAG:Ljava/lang/String;

.field private static sInstance:Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;


# instance fields
.field private mAddingClockView:Z

.field private mClockCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewGroup;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mClockLayoutNames:[Ljava/lang/String;

.field private final mClockLayouts:[I

.field private final mClockPreviewImage:[I

.field private mClockStyle:I

.field private final mClockThumbnail:[I

.field private mContext:Landroid/content/Context;

.field private mCustomWidgetRoot:Landroid/view/ViewGroup;

.field private final mKeyguardClockPreviewImage:[I

.field private mKeyguardClockStyle:I

.field public mProviderInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

.field private mSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mAddingClockView:Z

    .line 38
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mClockLayouts:[I

    .line 48
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "digital_vertical"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "default"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "analog"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "digital_horizontal_small"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "digital_circle"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "digital_vertical_red_one"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "blank"

    aput-object v2, v0, v1

    iput-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mClockLayoutNames:[Ljava/lang/String;

    .line 58
    new-array v0, v3, [I

    iput-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mClockPreviewImage:[I

    .line 65
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mClockThumbnail:[I

    .line 74
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mKeyguardClockPreviewImage:[I

    .line 101
    sget-object v0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->TAG:Ljava/lang/String;

    const-string v1, "ClockWidget init"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iput-object p1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mContext:Landroid/content/Context;

    .line 103
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 104
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "clock_style"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mClockStyle:I

    .line 105
    new-instance v0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    invoke-direct {v0, p1, p0}, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;-><init>(Landroid/content/Context;Lnet/oneplus/h2launcher/CustomAppWidget;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mProviderInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    .line 106
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mProviderInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    iput-boolean v3, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->canReorder:Z

    .line 108
    invoke-static {p1}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->getKeyguardClockStyle(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mKeyguardClockStyle:I

    .line 110
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mClockCache:Landroid/util/SparseArray;

    .line 111
    return-void

    .line 38
    :array_0
    .array-data 4
        0x7f040034
        0x7f040032
        0x7f040030
        0x7f040033
        0x7f040031
        0x7f040035
        0x7f040036
    .end array-data

    .line 65
    :array_1
    .array-data 4
        0x7f0201ca
        0x7f0201c8
        0x7f0201cc
        0x7f0201cd
        0x7f0201ce
        0x7f0201cf
        0x0
    .end array-data

    .line 74
    :array_2
    .array-data 4
        0x7f0201c7
        0x7f0201c9
        0x7f0201cb
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$102(Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mAddingClockView:Z

    return p1
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;

    .prologue
    .line 24
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mCustomWidgetRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public static getInstance()Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->sInstance:Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    sget-object v0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->sInstance:Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->sInstance:Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;

    .line 88
    :cond_0
    return-void
.end method

.method private manageClockLayout(IZ)V
    .locals 11
    .param p1, "clockStyle"    # I
    .param p2, "updateWallpaperPreview"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 263
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->getClockWidgetRoot()Landroid/view/ViewGroup;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 264
    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mClockCache:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 265
    .local v3, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/ViewGroup;>;"
    const/4 v2, 0x0

    .line 267
    .local v2, "vg":Landroid/view/ViewGroup;
    if-eqz v3, :cond_0

    .line 268
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "vg":Landroid/view/ViewGroup;
    check-cast v2, Landroid/view/ViewGroup;

    .line 271
    .restart local v2    # "vg":Landroid/view/ViewGroup;
    :cond_0
    if-eqz v2, :cond_3

    .line 272
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 273
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 274
    sget-object v4, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->TAG:Ljava/lang/String;

    const-string v5, "clock view already have parent, remove it! parent:%s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v1, v6, v9

    invoke-static {v4, v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 278
    :cond_1
    sget-object v4, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->TAG:Ljava/lang/String;

    const-string v5, "cached clock view, style:%d"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mCustomWidgetRoot:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 280
    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mCustomWidgetRoot:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 292
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :goto_0
    if-eqz p2, :cond_2

    .line 293
    iput-boolean v8, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mAddingClockView:Z

    .line 294
    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mCustomWidgetRoot:Landroid/view/ViewGroup;

    new-instance v5, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget$OnCustomWidgetRootLayoutChangeListener;

    invoke-direct {v5, p0, v10}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget$OnCustomWidgetRootLayoutChangeListener;-><init>(Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget$1;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 297
    .end local v2    # "vg":Landroid/view/ViewGroup;
    .end local v3    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/ViewGroup;>;"
    :cond_2
    return-void

    .line 282
    .restart local v2    # "vg":Landroid/view/ViewGroup;
    .restart local v3    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/ViewGroup;>;"
    :cond_3
    sget-object v4, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->TAG:Ljava/lang/String;

    const-string v5, "new clock view, style:%d"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 285
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mCustomWidgetRoot:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 286
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->getWidgetLayout(I)I

    move-result v4

    invoke-virtual {v0, v4, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .end local v2    # "vg":Landroid/view/ViewGroup;
    check-cast v2, Landroid/view/ViewGroup;

    .line 287
    .restart local v2    # "vg":Landroid/view/ViewGroup;
    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mCustomWidgetRoot:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 289
    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mClockCache:Landroid/util/SparseArray;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public getClockStyle()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mClockStyle:I

    return v0
.end method

.method public getClockWidgetRoot()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mCustomWidgetRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mClockLayouts:[I

    array-length v0, v0

    return v0
.end method

.method public getIcon()I
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public getKeyguardClockStyle()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mKeyguardClockStyle:I

    return v0
.end method

.method public getKeyguardPreviewImage()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mKeyguardClockStyle:I

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->getKeyguardPreviewImage(I)I

    move-result v0

    return v0
.end method

.method public getKeyguardPreviewImage(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mKeyguardClockPreviewImage:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 147
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mKeyguardClockPreviewImage:[I

    aget v0, v0, p1

    .line 150
    :goto_0
    return v0

    .line 149
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->TAG:Ljava/lang/String;

    const-string v1, "keyguard preview image index is out of bound."

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const-string v0, "Clock Widget"

    return-object v0
.end method

.method public getMinSpanX()I
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x4

    return v0
.end method

.method public getMinSpanY()I
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x2

    return v0
.end method

.method public getPreviewImage()I
    .locals 2

    .prologue
    .line 124
    iget v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mClockStyle:I

    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mClockPreviewImage:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 125
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mClockPreviewImage:[I

    iget v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mClockStyle:I

    aget v0, v0, v1

    .line 128
    :goto_0
    return v0

    .line 127
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->TAG:Ljava/lang/String;

    const-string v1, "preview image index is out of bound."

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreviewImage(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mClockPreviewImage:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 134
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mClockPreviewImage:[I

    aget v0, v0, p1

    .line 137
    :goto_0
    return v0

    .line 136
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->TAG:Ljava/lang/String;

    const-string v1, "preview image index is out of bound."

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProviderInfo()Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mProviderInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    return-object v0
.end method

.method public getResizeMode()I
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public getSpanX()I
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x4

    return v0
.end method

.method public getSpanY()I
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x2

    return v0
.end method

.method public getThumbnail()I
    .locals 2

    .prologue
    .line 155
    iget v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mClockStyle:I

    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mClockThumbnail:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mClockThumbnail:[I

    iget v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mClockStyle:I

    aget v0, v0, v1

    .line 159
    :goto_0
    return v0

    .line 158
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->TAG:Ljava/lang/String;

    const-string v1, "thumbnail index is out of bound."

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getThumbnail(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 164
    iget v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mClockStyle:I

    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mClockThumbnail:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 165
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mClockThumbnail:[I

    aget v0, v0, p1

    .line 168
    :goto_0
    return v0

    .line 167
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->TAG:Ljava/lang/String;

    const-string v1, "thumbnail index is out of bound."

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWidgetLayout()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mClockStyle:I

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->getWidgetLayout(I)I

    move-result v0

    return v0
.end method

.method public getWidgetLayout(I)I
    .locals 2
    .param p1, "clockStyle"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mClockLayouts:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 184
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mClockLayouts:[I

    aget v0, v0, p1

    .line 187
    :goto_0
    return v0

    .line 186
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->TAG:Ljava/lang/String;

    const-string v1, "mClockStyle is out of bound."

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public previewClockStyle(IZ)V
    .locals 0
    .param p1, "clockStyle"    # I
    .param p2, "updateWallpaperPreview"    # Z

    .prologue
    .line 231
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->manageClockLayout(IZ)V

    .line 232
    return-void
.end method

.method public previewingClockStyle()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mAddingClockView:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mContext:Landroid/content/Context;

    check-cast v0, Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->isWallpaperPreviewUpdating()Z

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

.method public release()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mClockCache:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mClockCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 97
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->sInstance:Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;

    .line 98
    return-void
.end method

.method public setClockStyle(I)V
    .locals 6
    .param p1, "clockStyle"    # I

    .prologue
    .line 239
    sget-object v1, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clockStyle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mClockStyle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mClockStyle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iput p1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mClockStyle:I

    .line 241
    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mProviderInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->getWidgetLayout()I

    move-result v2

    iput v2, v1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->initialLayout:I

    .line 242
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->getWidgetLayout()I

    move-result v1

    invoke-static {v1}, Lnet/oneplus/h2launcher/LauncherModel;->updateClockWidgetProviderInfo(I)V

    .line 244
    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 245
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "clock_style"

    iget v2, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mClockStyle:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 246
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 248
    invoke-static {}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->get()Lnet/oneplus/h2launcher/util/AnalyticHelper;

    move-result-object v1

    const-string v2, "launcher.options.h2"

    const-string v3, "time_widget_home"

    iget-object v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mClockLayoutNames:[Ljava/lang/String;

    iget v5, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mClockStyle:I

    aget-object v4, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->putAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public setClockWidgetRoot(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 222
    sget-object v0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->TAG:Ljava/lang/String;

    const-string v1, "setClockWidgetRoot:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    iput-object p1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mCustomWidgetRoot:Landroid/view/ViewGroup;

    .line 224
    return-void
.end method

.method public setKeyguardClockStyle(I)V
    .locals 5
    .param p1, "keyguardClockStyle"    # I

    .prologue
    .line 253
    iput p1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mKeyguardClockStyle:I

    .line 254
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mContext:Landroid/content/Context;

    iget v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mKeyguardClockStyle:I

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->setKeyguardClockStyle(Landroid/content/Context;I)V

    .line 258
    invoke-static {}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->get()Lnet/oneplus/h2launcher/util/AnalyticHelper;

    move-result-object v0

    const-string v1, "launcher.options.h2"

    const-string v2, "time_widget_lock"

    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mClockLayoutNames:[Ljava/lang/String;

    iget v4, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->mKeyguardClockStyle:I

    aget-object v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->putAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void
.end method

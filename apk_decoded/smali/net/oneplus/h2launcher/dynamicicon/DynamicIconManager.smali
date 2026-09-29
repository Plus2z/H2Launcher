.class public Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;
.super Ljava/lang/Object;
.source "DynamicIconManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$UpdateIconCacheCallback;,
        Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;
    }
.end annotation


# static fields
.field public static final COMPONENT_NAME_CALENDAR:Landroid/content/ComponentName;

.field public static final COMPONENT_NAME_DESKCLOCK:Landroid/content/ComponentName;

.field public static final COMPONENT_NAME_DIALER:Landroid/content/ComponentName;

.field public static final COMPONENT_NAME_GALLERY:Landroid/content/ComponentName;

.field public static final COMPONENT_NAME_MMS:Landroid/content/ComponentName;

.field public static final COMPONENT_NAME_WEATHER:Landroid/content/ComponentName;

.field public static final TAG:Ljava/lang/String;

.field public static final sDefaultNeedRefreshApps:[Landroid/content/ComponentName;

.field private static sSingleton:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDynamicIconMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedAnimateIconCallback:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;

.field private mNeedRefreshAppsSets:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateIconCacheCallback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$UpdateIconCacheCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const-class v0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.oneplus.deskclock"

    const-string v2, "com.oneplus.deskclock.DeskClock"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->COMPONENT_NAME_DESKCLOCK:Landroid/content/ComponentName;

    .line 31
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "net.oneplus.weather"

    const-string v2, "net.oneplus.weather.app.MainActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->COMPONENT_NAME_WEATHER:Landroid/content/ComponentName;

    .line 32
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.oneplus.calendar"

    const-string v2, "com.android.calendar.AllInOneActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->COMPONENT_NAME_CALENDAR:Landroid/content/ComponentName;

    .line 33
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.oneplus.gallery"

    const-string v2, "com.oneplus.gallery.OPGalleryActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->COMPONENT_NAME_GALLERY:Landroid/content/ComponentName;

    .line 34
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.contacts"

    const-string v2, "com.oneplus.contacts.activities.OPDialtactsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->COMPONENT_NAME_DIALER:Landroid/content/ComponentName;

    .line 35
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.mms"

    const-string v2, "com.android.mms.ui.ConversationList"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->COMPONENT_NAME_MMS:Landroid/content/ComponentName;

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/content/ComponentName;

    const/4 v1, 0x0

    sget-object v2, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->COMPONENT_NAME_WEATHER:Landroid/content/ComponentName;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->COMPONENT_NAME_CALENDAR:Landroid/content/ComponentName;

    aput-object v2, v0, v1

    sput-object v0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->sDefaultNeedRefreshApps:[Landroid/content/ComponentName;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->mDynamicIconMap:Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->mNeedRefreshAppsSets:Ljava/util/HashSet;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->mUpdateIconCacheCallback:Ljava/util/ArrayList;

    .line 56
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->mNeedRefreshAppsSets:Ljava/util/HashSet;

    sget-object v1, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->sDefaultNeedRefreshApps:[Landroid/content/ComponentName;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 57
    new-instance v0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$1;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$1;-><init>(Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->mNeedAnimateIconCallback:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;

    .line 70
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->mDynamicIconMap:Ljava/util/HashMap;

    sget-object v1, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->COMPONENT_NAME_WEATHER:Landroid/content/ComponentName;

    const-class v2, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->mDynamicIconMap:Ljava/util/HashMap;

    sget-object v1, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->COMPONENT_NAME_CALENDAR:Landroid/content/ComponentName;

    const-class v2, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;

    .prologue
    .line 27
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->sSingleton:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->sSingleton:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;

    .line 82
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->sSingleton:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;

    return-object v0
.end method

.method public static getsDefaultNeedRefreshApps()[Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->sDefaultNeedRefreshApps:[Landroid/content/ComponentName;

    return-object v0
.end method

.method private unregisterDynamicIconsDataProvider()V
    .locals 3

    .prologue
    .line 199
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherModel;->getDynamicItems()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    .line 200
    .local v0, "info":Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;
    invoke-interface {v0}, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;->unregisterDataProvider()V

    goto :goto_0

    .line 202
    .end local v0    # "info":Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;
    :cond_0
    return-void
.end method


# virtual methods
.method public createShortcutInfo(Landroid/content/ComponentName;)Lnet/oneplus/h2launcher/ShortcutInfo;
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 129
    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->mNeedRefreshAppsSets:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    sget-object v1, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->COMPONENT_NAME_WEATHER:Landroid/content/ComponentName;

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    new-instance v0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;

    .end local v0    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->mNeedAnimateIconCallback:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;-><init>(Landroid/content/Context;Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;)V

    .line 137
    .restart local v0    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 138
    sget-object v1, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In DynamicIcon componentName list, but no allocate, log it. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .end local v0    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_1
    :goto_1
    return-object v0

    .line 133
    .restart local v0    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_2
    sget-object v1, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->COMPONENT_NAME_CALENDAR:Landroid/content/ComponentName;

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    new-instance v0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    .end local v0    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->mNeedAnimateIconCallback:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;-><init>(Landroid/content/Context;Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;)V

    .restart local v0    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    goto :goto_0

    .line 143
    .end local v0    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public createShortcutInfo(Landroid/content/Intent;)Lnet/oneplus/h2launcher/ShortcutInfo;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 125
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->createShortcutInfo(Landroid/content/ComponentName;)Lnet/oneplus/h2launcher/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method public createShortcutInfo(Landroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Lnet/oneplus/h2launcher/ShortcutInfo;
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "contentDescription"    # Ljava/lang/CharSequence;
    .param p4, "icon"    # Landroid/graphics/Bitmap;
    .param p5, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 169
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 170
    .local v8, "componentName":Landroid/content/ComponentName;
    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->mNeedRefreshAppsSets:Ljava/util/HashSet;

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    sget-object v1, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->COMPONENT_NAME_WEATHER:Landroid/content/ComponentName;

    invoke-virtual {v8, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    new-instance v0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;

    .end local v0    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->mNeedAnimateIconCallback:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;)V

    .line 180
    .restart local v0    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 181
    sget-object v1, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In DynamicIcon componentName list, but no allocate, log it. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .end local v0    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_1
    :goto_1
    return-object v0

    .line 175
    .restart local v0    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_2
    sget-object v1, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->COMPONENT_NAME_CALENDAR:Landroid/content/ComponentName;

    invoke-virtual {v8, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    new-instance v0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    .end local v0    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->mNeedAnimateIconCallback:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;)V

    .restart local v0    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    goto :goto_0

    .line 188
    .end local v0    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public createShortcutInfo(Lnet/oneplus/h2launcher/AppInfo;)Lnet/oneplus/h2launcher/ShortcutInfo;
    .locals 5
    .param p1, "appInfo"    # Lnet/oneplus/h2launcher/AppInfo;

    .prologue
    .line 147
    iget-object v0, p1, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 148
    .local v0, "componentName":Landroid/content/ComponentName;
    iget-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->mNeedRefreshAppsSets:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 149
    const/4 v1, 0x0

    .line 150
    .local v1, "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    sget-object v2, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->COMPONENT_NAME_WEATHER:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 151
    new-instance v1, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;

    .end local v1    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    iget-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->mNeedAnimateIconCallback:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;

    invoke-direct {v1, v2, p1, v3}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;-><init>(Landroid/content/Context;Lnet/oneplus/h2launcher/AppInfo;Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;)V

    .line 156
    .restart local v1    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 157
    sget-object v2, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In DynamicIcon componentName list, but no allocate, log it. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .end local v1    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_1
    :goto_1
    return-object v1

    .line 152
    .restart local v1    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_2
    sget-object v2, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->COMPONENT_NAME_CALENDAR:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    new-instance v1, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    .end local v1    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    iget-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->mNeedAnimateIconCallback:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;

    invoke-direct {v1, v2, p1, v3}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;-><init>(Landroid/content/Context;Lnet/oneplus/h2launcher/AppInfo;Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;)V

    .restart local v1    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    goto :goto_0

    .line 163
    .end local v1    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public createShortcutInfo(Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;)Lnet/oneplus/h2launcher/ShortcutInfo;
    .locals 1
    .param p1, "info"    # Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    .prologue
    .line 121
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->createShortcutInfo(Landroid/content/ComponentName;)Lnet/oneplus/h2launcher/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    iput-object p1, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->mContext:Landroid/content/Context;

    .line 76
    return-void
.end method

.method public isDynamicIcon(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 117
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->mNeedRefreshAppsSets:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDynamicIcon(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->isDynamicIcon(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isDynamicIcon(Lnet/oneplus/h2launcher/AppInfo;)Z
    .locals 1
    .param p1, "appInfo"    # Lnet/oneplus/h2launcher/AppInfo;

    .prologue
    .line 109
    iget-object v0, p1, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->isDynamicIcon(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isDynamicIcon(Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;)Z
    .locals 1
    .param p1, "info"    # Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    .prologue
    .line 105
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->isDynamicIcon(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public notifyUpdateIconCacheCallback(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 216
    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->mUpdateIconCacheCallback:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$UpdateIconCacheCallback;

    .line 217
    .local v0, "aMUpdateIconCacheCallback":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$UpdateIconCacheCallback;
    invoke-interface {v0, p1, p2}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$UpdateIconCacheCallback;->updateIconCacheFinish(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    goto :goto_0

    .line 219
    .end local v0    # "aMUpdateIconCacheCallback":Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$UpdateIconCacheCallback;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 222
    invoke-direct {p0}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->unregisterDynamicIconsDataProvider()V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->mContext:Landroid/content/Context;

    .line 224
    return-void
.end method

.method public registerUpdateIconCacheCallback(Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$UpdateIconCacheCallback;)V
    .locals 1
    .param p1, "callback"    # Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$UpdateIconCacheCallback;

    .prologue
    .line 205
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->mUpdateIconCacheCallback:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->mUpdateIconCacheCallback:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_0
    return-void
.end method

.method public requestDynamicIconsDataChange()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public unregisterUpdateIconCacheCallback(Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$UpdateIconCacheCallback;)V
    .locals 1
    .param p1, "callback"    # Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$UpdateIconCacheCallback;

    .prologue
    .line 211
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->mUpdateIconCacheCallback:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 212
    return-void
.end method

.method public verifyConfig(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;)Z
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "config"    # Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;

    .prologue
    .line 90
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 91
    :cond_0
    const/4 v1, 0x0

    .line 101
    :goto_0
    return v1

    .line 93
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->mDynamicIconMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 94
    .local v0, "dynamicShortcutClass":Ljava/lang/Class;
    const/4 v1, 0x0

    .line 95
    .local v1, "result":Z
    const-class v2, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    if-ne v0, v2, :cond_3

    .line 96
    invoke-static {p2}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->verifyConfig(Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;)Z

    move-result v1

    .line 100
    :cond_2
    :goto_1
    invoke-virtual {p2, v1}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;->setValid(Z)V

    goto :goto_0

    .line 97
    :cond_3
    const-class v2, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;

    if-ne v0, v2, :cond_2

    .line 98
    invoke-static {p2}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->verifyConfig(Lnet/oneplus/h2launcher/dynamicicon/DynamicIconConfig;)Z

    move-result v1

    goto :goto_1
.end method

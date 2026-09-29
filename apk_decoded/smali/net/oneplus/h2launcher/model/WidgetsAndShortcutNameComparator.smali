.class public Lnet/oneplus/h2launcher/model/WidgetsAndShortcutNameComparator;
.super Ljava/lang/Object;
.source "WidgetsAndShortcutNameComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field private final mLabelCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lnet/oneplus/h2launcher/util/ComponentKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainHandle:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

.field private final mManager:Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/model/WidgetsAndShortcutNameComparator;->mManager:Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/model/WidgetsAndShortcutNameComparator;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/model/WidgetsAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    .line 29
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/model/WidgetsAndShortcutNameComparator;->mCollator:Ljava/text/Collator;

    .line 30
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/model/WidgetsAndShortcutNameComparator;->mMainHandle:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 31
    return-void
.end method

.method private getComponentKey(Ljava/lang/Object;)Lnet/oneplus/h2launcher/util/ComponentKey;
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 74
    instance-of v3, p1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 75
    check-cast v2, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    .line 76
    .local v2, "widgetInfo":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    new-instance v3, Lnet/oneplus/h2launcher/util/ComponentKey;

    iget-object v4, v2, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget-object v5, p0, Lnet/oneplus/h2launcher/model/WidgetsAndShortcutNameComparator;->mManager:Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    invoke-virtual {v5, v2}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->getUser(Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;)Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lnet/oneplus/h2launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 82
    .end local v2    # "widgetInfo":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    :goto_0
    return-object v3

    :cond_0
    move-object v1, p1

    .line 78
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 79
    .local v1, "shortcutInfo":Landroid/content/pm/ResolveInfo;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v3, Lnet/oneplus/h2launcher/util/ComponentKey;

    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lnet/oneplus/h2launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    goto :goto_0
.end method

.method private getLabel(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 90
    instance-of v2, p1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 91
    check-cast v1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    .line 92
    .local v1, "widgetInfo":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    iget-object v2, p0, Lnet/oneplus/h2launcher/model/WidgetsAndShortcutNameComparator;->mManager:Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    invoke-virtual {v2, v1}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->loadLabel(Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/oneplus/h2launcher/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 95
    .end local v1    # "widgetInfo":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    :goto_0
    return-object v2

    :cond_0
    move-object v0, p1

    .line 94
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 95
    .local v0, "shortcutInfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, p0, Lnet/oneplus/h2launcher/model/WidgetsAndShortcutNameComparator;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lnet/oneplus/h2launcher/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 10
    .param p1, "objA"    # Ljava/lang/Object;
    .param p2, "objB"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 42
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/model/WidgetsAndShortcutNameComparator;->getComponentKey(Ljava/lang/Object;)Lnet/oneplus/h2launcher/util/ComponentKey;

    move-result-object v2

    .line 43
    .local v2, "keyA":Lnet/oneplus/h2launcher/util/ComponentKey;
    invoke-direct {p0, p2}, Lnet/oneplus/h2launcher/model/WidgetsAndShortcutNameComparator;->getComponentKey(Ljava/lang/Object;)Lnet/oneplus/h2launcher/util/ComponentKey;

    move-result-object v3

    .line 47
    .local v3, "keyB":Lnet/oneplus/h2launcher/util/ComponentKey;
    iget-object v8, p0, Lnet/oneplus/h2launcher/model/WidgetsAndShortcutNameComparator;->mMainHandle:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    iget-object v9, v2, Lnet/oneplus/h2launcher/util/ComponentKey;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    move v0, v6

    .line 48
    .local v0, "aWorkProfile":Z
    :goto_0
    iget-object v8, p0, Lnet/oneplus/h2launcher/model/WidgetsAndShortcutNameComparator;->mMainHandle:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    iget-object v9, v3, Lnet/oneplus/h2launcher/util/ComponentKey;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    move v1, v6

    .line 49
    .local v1, "bWorkProfile":Z
    :goto_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 67
    :goto_2
    return v6

    .end local v0    # "aWorkProfile":Z
    .end local v1    # "bWorkProfile":Z
    :cond_0
    move v0, v7

    .line 47
    goto :goto_0

    .restart local v0    # "aWorkProfile":Z
    :cond_1
    move v1, v7

    .line 48
    goto :goto_1

    .line 52
    .restart local v1    # "bWorkProfile":Z
    :cond_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    .line 53
    const/4 v6, -0x1

    goto :goto_2

    .line 57
    :cond_3
    iget-object v6, p0, Lnet/oneplus/h2launcher/model/WidgetsAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 58
    .local v4, "labelA":Ljava/lang/String;
    iget-object v6, p0, Lnet/oneplus/h2launcher/model/WidgetsAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 59
    .local v5, "labelB":Ljava/lang/String;
    if-nez v4, :cond_4

    .line 60
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/model/WidgetsAndShortcutNameComparator;->getLabel(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 61
    iget-object v6, p0, Lnet/oneplus/h2launcher/model/WidgetsAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v6, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_4
    if-nez v5, :cond_5

    .line 64
    invoke-direct {p0, p2}, Lnet/oneplus/h2launcher/model/WidgetsAndShortcutNameComparator;->getLabel(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 65
    iget-object v6, p0, Lnet/oneplus/h2launcher/model/WidgetsAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v6, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_5
    iget-object v6, p0, Lnet/oneplus/h2launcher/model/WidgetsAndShortcutNameComparator;->mCollator:Ljava/text/Collator;

    invoke-virtual {v6, v4, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_2
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lnet/oneplus/h2launcher/model/WidgetsAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 38
    return-void
.end method

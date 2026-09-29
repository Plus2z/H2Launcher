.class Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompatVL;
.super Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;
.source "AppWidgetManagerCompatVL.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompatVL;->mPm:Landroid/content/pm/PackageManager;

    .line 56
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    .line 57
    return-void
.end method


# virtual methods
.method public bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "appWidgetId"    # I
    .param p2, "info"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 76
    iget-object v0, p0, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompatVL;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 77
    invoke-virtual {p2}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 76
    invoke-virtual {v0, p1, v1, v2, p3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 4
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
    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v0, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    iget-object v2, p0, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 63
    .local v1, "user":Landroid/os/UserHandle;
    iget-object v3, p0, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompatVL;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v3, v1}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 65
    .end local v1    # "user":Landroid/os/UserHandle;
    :cond_0
    return-object v0
.end method

.method public getBadgeBitmap(Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "info"    # Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "imageHeight"    # I

    .prologue
    const/4 v10, 0x0

    .line 113
    iget-boolean v7, p1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-nez v7, :cond_0

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v7

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 142
    .end local p2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p2

    .line 118
    .restart local p2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v7, p0, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompatVL;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 119
    .local v5, "res":Landroid/content/res/Resources;
    const v7, 0x7f0c02de

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 120
    .local v2, "badgeSize":I
    const v7, 0x7f0c02dd

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 121
    .local v1, "badgeMinTop":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v10, v10, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 123
    .local v0, "badgeLocation":Landroid/graphics/Rect;
    sub-int v7, p3, v2

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 124
    .local v6, "top":I
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 125
    invoke-virtual {v0, v10, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 130
    :goto_1
    iget-object v7, p0, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompatVL;->mPm:Landroid/content/pm/PackageManager;

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8, v5, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 131
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v9

    .line 130
    invoke-virtual {v7, v8, v9, v0, v10}, Landroid/content/pm/PackageManager;->getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 133
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v7, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_3

    .line 134
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {v0, v7, v6}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    .line 137
    .restart local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {p2, v10}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 138
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 139
    .local v3, "c":Landroid/graphics/Canvas;
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v4, v10, v10, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 140
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 141
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public getUser(Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;)Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .locals 1
    .param p1, "info"    # Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    .prologue
    .line 82
    iget-boolean v0, p1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v0

    goto :goto_0
.end method

.method public loadIcon(Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;Lnet/oneplus/h2launcher/AssetCache;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "info"    # Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    .param p2, "cache"    # Lnet/oneplus/h2launcher/AssetCache;

    .prologue
    .line 107
    iget-object v0, p0, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompatVL;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->getIcon(Landroid/content/Context;Lnet/oneplus/h2launcher/AssetCache;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadLabel(Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "info"    # Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    .prologue
    .line 70
    iget-object v0, p0, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompatVL;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadPreview(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 102
    iget-object v0, p0, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompatVL;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetProviderInfo;->loadPreviewImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public startConfigActivity(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/app/Activity;Landroid/appwidget/AppWidgetHost;I)V
    .locals 9
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p2, "widgetId"    # I
    .param p3, "activity"    # Landroid/app/Activity;
    .param p4, "host"    # Landroid/appwidget/AppWidgetHost;
    .param p5, "requestCode"    # I

    .prologue
    const v8, 0x7f0b002f

    const/4 v7, 0x0

    .line 92
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p4

    move-object v1, p3

    move v2, p2

    move v4, p5

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/appwidget/AppWidgetHost;->startAppWidgetConfigureActivityForResult(Landroid/app/Activity;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 98
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v6

    .line 94
    .local v6, "e":Landroid/content/ActivityNotFoundException;
    invoke-static {p3, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 95
    .end local v6    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v6

    .line 96
    .local v6, "e":Ljava/lang/SecurityException;
    invoke-static {p3, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

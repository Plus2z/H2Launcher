.class public Lnet/oneplus/h2launcher/config/CustomInfoHelper;
.super Ljava/lang/Object;
.source "CustomInfoHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lnet/oneplus/h2launcher/config/CustomInfoHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/config/CustomInfoHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static RemoveCustomIconForPackage(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 361
    invoke-static {p0}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v0

    .line 362
    .local v0, "userId":J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lnet/oneplus/h2launcher/IconProvider;->ICON_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "profileId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 363
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "componentName"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " like \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/%\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 362
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 365
    return-void
.end method

.method public static RemoveCustomLabelForPackage(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 353
    invoke-static {p0}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v0

    .line 354
    .local v0, "userId":J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lnet/oneplus/h2launcher/IconProvider;->CUSTOM_LABEL_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "profileId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 355
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "componentName"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " like \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/%\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 354
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 357
    return-void
.end method

.method public static checkComponent(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/util/List;)V
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lnet/oneplus/h2launcher/compat/UserHandleCompat;",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "apps":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;>;"
    invoke-static/range {p0 .. p0}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v16

    .line 38
    .local v16, "userId":J
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v13, "notExistingNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 40
    .local v14, "packageSets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    .line 41
    .local v8, "app":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    invoke-virtual {v8}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    .end local v8    # "app":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    :cond_0
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "componentName"

    aput-object v3, v4, v2

    .line 46
    .local v4, "projection":[Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 47
    .local v6, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lnet/oneplus/h2launcher/IconProvider;->CUSTOM_LABEL_URI:Landroid/net/Uri;

    const-string v5, "profileId = ?"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 50
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 51
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 52
    :cond_1
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53
    const-string v2, "componentName"

    .line 54
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 55
    .local v11, "cnIndex":I
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    .line 57
    .local v10, "cn":Landroid/content/ComponentName;
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 58
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 62
    .end local v10    # "cn":Landroid/content/ComponentName;
    .end local v11    # "cnIndex":I
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 65
    :cond_3
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 66
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 67
    .local v12, "name":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lnet/oneplus/h2launcher/IconProvider;->CUSTOM_LABEL_URI:Landroid/net/Uri;

    const-string v7, "profileId = ? AND componentName = ?"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/String;

    const/16 v18, 0x0

    .line 70
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v15, v18

    const/16 v18, 0x1

    aput-object v12, v15, v18

    .line 67
    invoke-virtual {v3, v5, v7, v15}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 73
    .end local v12    # "name":Ljava/lang/String;
    :cond_4
    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 76
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    .end local v4    # "projection":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "componentName"

    aput-object v3, v4, v2

    .line 77
    .restart local v4    # "projection":[Ljava/lang/String;
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    .end local v6    # "selectionArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x1

    const-string v3, "custom"

    aput-object v3, v6, v2

    .line 78
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lnet/oneplus/h2launcher/IconProvider;->ICON_URI:Landroid/net/Uri;

    const-string v5, "profileId = ? AND assetPackName = ? "

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 82
    if-eqz v9, :cond_7

    .line 83
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 84
    :cond_5
    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 85
    const-string v2, "componentName"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 86
    .restart local v11    # "cnIndex":I
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    .line 88
    .restart local v10    # "cn":Landroid/content/ComponentName;
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 89
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 93
    .end local v10    # "cn":Landroid/content/ComponentName;
    .end local v11    # "cnIndex":I
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 96
    :cond_7
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 97
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 98
    .restart local v12    # "name":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lnet/oneplus/h2launcher/IconProvider;->ICON_URI:Landroid/net/Uri;

    const-string v7, "profileId = ? AND iconType = ? AND componentName = ? "

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/String;

    const/16 v18, 0x0

    .line 102
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v15, v18

    const/16 v18, 0x1

    const/16 v19, 0x3

    .line 103
    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v15, v18

    const/16 v18, 0x2

    aput-object v12, v15, v18

    .line 98
    invoke-virtual {v3, v5, v7, v15}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_4

    .line 106
    .end local v12    # "name":Ljava/lang/String;
    :cond_8
    return-void
.end method

.method public static getCurrentIconForComponent(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p2, "component"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 306
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 307
    .local v3, "unflattenedComponent":Landroid/content/ComponentName;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 308
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 311
    .local v1, "i":Landroid/content/Intent;
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/LauncherAppState;->getAssetCache()Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v0

    .line 319
    .local v0, "cache":Lnet/oneplus/h2launcher/AssetCache;
    invoke-virtual {v0, v3, p1, v6}, Lnet/oneplus/h2launcher/AssetCache;->getIcon(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 320
    .local v2, "icon":Landroid/graphics/Bitmap;
    if-nez v2, :cond_0

    .line 321
    invoke-virtual {v0, v1, p1, v6}, Lnet/oneplus/h2launcher/AssetCache;->getIcon(Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 324
    :cond_0
    if-eqz v2, :cond_1

    .line 325
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 328
    :goto_0
    return-object v4

    :cond_1
    invoke-static {p0, p2}, Lnet/oneplus/h2launcher/config/CustomInfoHelper;->getDefaultIconForComponent(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0
.end method

.method public static getCustomIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resPkg"    # Ljava/lang/String;
    .param p2, "resName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 254
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-object v3

    .line 260
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 264
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 265
    const-string v4, "drawable"

    invoke-virtual {v1, p2, v4, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 266
    .local v2, "resId":I
    if-eqz v2, :cond_0

    .line 267
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    .line 261
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "resId":I
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static getCustomIconForComponent(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p2, "component"    # Ljava/lang/String;

    .prologue
    .line 275
    const/4 v9, 0x0

    .line 276
    .local v9, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static/range {p0 .. p2}, Lnet/oneplus/h2launcher/config/CustomInfoHelper;->hasCustomIconForComponent(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    invoke-static {p0}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v12

    .line 278
    .local v12, "userId":J
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    aput-object p2, v4, v0

    const/4 v0, 0x2

    const/4 v1, 0x3

    .line 279
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 280
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lnet/oneplus/h2launcher/IconProvider;->ICON_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "profileId = ? AND componentName = ? AND iconType = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 285
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    const-string v0, "icon"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 288
    .local v8, "data":[B
    const/4 v0, 0x0

    :try_start_0
    array-length v1, v8

    const/4 v2, 0x0

    invoke-static {v8, v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 289
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v10, v0, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v10, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v9, v10

    .line 294
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "data":[B
    .end local v10    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 295
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 298
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v12    # "userId":J
    :cond_1
    if-nez v9, :cond_2

    .line 299
    invoke-static/range {p0 .. p2}, Lnet/oneplus/h2launcher/config/CustomInfoHelper;->getCurrentIconForComponent(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 301
    .end local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    return-object v9

    .line 290
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    .restart local v7    # "c":Landroid/database/Cursor;
    .restart local v8    # "data":[B
    .restart local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v12    # "userId":J
    :catch_0
    move-exception v11

    .line 291
    .local v11, "e":Ljava/lang/Exception;
    sget-object v0, Lnet/oneplus/h2launcher/config/CustomInfoHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCustomLabelForComponent(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p2, "component"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 141
    invoke-static {p0}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v8

    .line 142
    .local v8, "userId":J
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    aput-object p2, v4, v0

    .line 143
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lnet/oneplus/h2launcher/IconProvider;->CUSTOM_LABEL_URI:Landroid/net/Uri;

    const-string v3, "profileId = ? AND componentName = ?"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 146
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const-string v0, "label"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 148
    .local v7, "label":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 154
    .end local v7    # "label":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 151
    :cond_0
    if-eqz v6, :cond_1

    .line 152
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 154
    :cond_1
    invoke-static {p0, p2}, Lnet/oneplus/h2launcher/config/CustomInfoHelper;->getDefaultLabelForComponent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method public static getCustomLabelForComponent(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p2, "component"    # Ljava/lang/String;
    .param p3, "defaultLabel"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 160
    invoke-static {p0}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v8

    .line 161
    .local v8, "userId":J
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    aput-object p2, v4, v0

    .line 162
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lnet/oneplus/h2launcher/IconProvider;->CUSTOM_LABEL_URI:Landroid/net/Uri;

    const-string v3, "profileId = ? AND componentName = ?"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 165
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const-string v0, "label"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 167
    .local v7, "label":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 173
    .end local v7    # "label":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 170
    :cond_0
    if-eqz v6, :cond_1

    .line 171
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v7, p3

    .line 173
    goto :goto_0
.end method

.method private static getDefaultIconForComponent(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "component"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 332
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 333
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 334
    .local v3, "mainIntent":Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 338
    .local v1, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 339
    .local v0, "appInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_0

    .line 340
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, "flattenedComponent":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 343
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5, v4}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 348
    .end local v0    # "appInfo":Landroid/content/pm/ResolveInfo;
    .end local v2    # "flattenedComponent":Ljava/lang/String;
    :cond_1
    return-object v5
.end method

.method public static getDefaultLabelForComponent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "component"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 179
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 180
    .local v3, "mainIntent":Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 184
    .local v1, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 185
    .local v0, "appInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_0

    .line 186
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "flattenedComponent":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 189
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 194
    .end local v0    # "appInfo":Landroid/content/pm/ResolveInfo;
    .end local v2    # "flattenedComponent":Ljava/lang/String;
    :cond_1
    return-object v5
.end method

.method private static hasCustomIconForComponent(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p2, "component"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 237
    invoke-static {p0}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v8

    .line 238
    .local v8, "userId":J
    new-array v4, v1, [Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    aput-object p2, v4, v7

    const/4 v0, 0x2

    .line 239
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 240
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lnet/oneplus/h2launcher/IconProvider;->ICON_URI:Landroid/net/Uri;

    const-string v3, "profileId = ? AND componentName = ? AND iconType = ?"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 245
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 246
    .local v7, "result":Z
    :goto_0
    if-eqz v6, :cond_0

    .line 247
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 249
    :cond_0
    return v7

    .end local v7    # "result":Z
    :cond_1
    move v7, v10

    .line 245
    goto :goto_0
.end method

.method public static hasCustomLabelForComponent(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p2, "component"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 127
    invoke-static {p0}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v8

    .line 128
    .local v8, "userId":J
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    aput-object p2, v4, v7

    .line 129
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lnet/oneplus/h2launcher/IconProvider;->CUSTOM_LABEL_URI:Landroid/net/Uri;

    const-string v3, "profileId = ? AND componentName = ?"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 132
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 133
    .local v7, "result":Z
    :goto_0
    if-eqz v6, :cond_0

    .line 134
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 136
    :cond_0
    return v7

    .end local v7    # "result":Z
    :cond_1
    move v7, v10

    .line 132
    goto :goto_0
.end method

.method public static setCustomIconForComponent(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p2, "component"    # Ljava/lang/String;
    .param p3, "resPkg"    # Ljava/lang/String;
    .param p4, "resName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x3

    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 201
    invoke-static {p0, p3, p4}, Lnet/oneplus/h2launcher/config/CustomInfoHelper;->getCustomIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 202
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 203
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_0

    .line 205
    invoke-static {v0}, Lnet/oneplus/h2launcher/IconCache;->checkAndResizeIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 206
    .local v2, "resizeBitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 207
    move-object v0, v2

    .line 213
    .end local v2    # "resizeBitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {p0}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v8

    invoke-virtual {v8, p1}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v6

    .line 214
    .local v6, "userId":J
    if-nez v0, :cond_1

    .line 215
    new-array v3, v10, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v8

    const/4 v8, 0x1

    aput-object p2, v3, v8

    const/4 v8, 0x2

    .line 216
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v8

    .line 217
    .local v3, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lnet/oneplus/h2launcher/IconProvider;->ICON_URI:Landroid/net/Uri;

    const-string v10, "profileId = ? AND componentName = ? AND iconType = ?"

    invoke-virtual {v8, v9, v10, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 233
    .end local v3    # "selectionArgs":[Ljava/lang/String;
    :goto_0
    return-void

    .line 223
    :cond_1
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 224
    .local v4, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {v0, v8, v9, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 225
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 226
    .local v5, "values":Landroid/content/ContentValues;
    const-string v8, "icon"

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 227
    const-string v8, "assetPackName"

    const-string v9, "custom"

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v8, "iconType"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 229
    const-string v8, "componentName"

    invoke-virtual {v5, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v8, "profileId"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 231
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lnet/oneplus/h2launcher/IconProvider;->ICON_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method public static setCustomLabelForComponent(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p2, "component"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-static {p0}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v0

    .line 111
    .local v0, "userId":J
    if-eqz p3, :cond_0

    invoke-static {p0, p2}, Lnet/oneplus/h2launcher/config/CustomInfoHelper;->getDefaultLabelForComponent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 112
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 113
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "label"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v3, "componentName"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v3, "profileId"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lnet/oneplus/h2launcher/IconProvider;->CUSTOM_LABEL_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 123
    .end local v2    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lnet/oneplus/h2launcher/IconProvider;->CUSTOM_LABEL_URI:Landroid/net/Uri;

    const-string v5, "profileId = ? AND componentName = ? "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 121
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    .line 118
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

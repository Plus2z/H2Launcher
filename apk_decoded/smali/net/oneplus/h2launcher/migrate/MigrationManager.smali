.class public Lnet/oneplus/h2launcher/migrate/MigrationManager;
.super Ljava/lang/Object;
.source "MigrationManager.java"


# static fields
.field private static final COM_ONEPLUS_LAUNCHER_DEFAULT_PREFERENCES_KEY:Ljava/lang/String; = "com.oneplus.launcher_preferences"

.field public static final COM_ONEPLUS_LAUNCHER_DEFAULT_SHARED_PREFERENCE_NAME:Ljava/lang/String; = "com.oneplus.launcher_preferences"

.field private static final COM_ONEPLUS_LAUNCHER_MANAGED_USER_PREFERENCES_KEY:Ljava/lang/String; = "com.oneplus.launcher.managedusers.prefs"

.field private static final COM_ONEPLUS_LAUNCHER_SHARED_PREFERENCES_KEY:Ljava/lang/String; = "com.oneplus.launcher.prefs"

.field public static final HYDROGEN_CUSTOM_WALLPAPER_FILENAME_INFIX:Ljava/lang/String; = "temp_img_filename"

.field public static final HYDROGEN_CUSTOM_WALLPAPER_THUMBNAIL_FILENAME_INFIX:Ljava/lang/String; = "temp_thumb_filename"

.field public static final HYDROGEN_LAUNCHER_DEFAULT_SHARED_PREFERENCE_NAME:Ljava/lang/String; = "com.oneplus.hydrogen.launcher_preferences"

.field public static final HYDROGEN_RESOURCE_WALLPAPER_FILENAME:Ljava/lang/String; = "current_wallpaper"

.field public static final HYDROGEN_WALLPAPER_TYPE_CUSTOM:I = 0x1

.field public static final HYDROGEN_WALLPAPER_TYPE_RESOURCE:I = 0x0

.field public static final KEY_HYDROGEN_WALLPAPER:Ljava/lang/String; = "widget_wallpaper"

.field public static final KEY_HYDROGEN_WALLPAPER_TYPE:Ljava/lang/String; = "res_type"

.field private static final LAUNCHER3_DEFAULT_PREFERENCES_KEY:Ljava/lang/String; = "com.android.launcher3_preferences"

.field private static final LAUNCHER3_MANAGED_USER_PREFERENCES_KEY:Ljava/lang/String; = "com.android.launcher3.managedusers.prefs"

.field private static final LAUNCHER3_SHARED_PREFERENCES_KEY:Ljava/lang/String; = "com.android.launcher3.prefs"

.field private static final PKG_NAME_COM_ONEPLUS_LAUNCHER:Ljava/lang/String; = "com.oneplus.launcher"

.field private static final SHARED_PREFS:Ljava/lang/String; = "/shared_prefs/"

.field private static final TAG:Ljava/lang/String; = "MigrationManager"

.field private static final XML:Ljava/lang/String; = ".xml"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MigrationComOnePlusPref(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-static {p0}, Lnet/oneplus/h2launcher/migrate/MigrationManager;->migrationComOnePlusDefaultPrefs(Landroid/content/Context;)V

    .line 58
    invoke-static {p0}, Lnet/oneplus/h2launcher/migrate/MigrationManager;->migrationComOnePlusManagedUsersPrefs(Landroid/content/Context;)V

    .line 59
    invoke-static {p0}, Lnet/oneplus/h2launcher/migrate/MigrationManager;->migrationComOnePlusPrefs(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method public static MigrationPref(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-static {p0}, Lnet/oneplus/h2launcher/migrate/MigrationManager;->migrationDefaultPrefs(Landroid/content/Context;)V

    .line 52
    invoke-static {p0}, Lnet/oneplus/h2launcher/migrate/MigrationManager;->migrationManagedUsersPrefs(Landroid/content/Context;)V

    .line 53
    invoke-static {p0}, Lnet/oneplus/h2launcher/migrate/MigrationManager;->migrationPrefs(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method private static copyPref(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V
    .locals 8
    .param p0, "oldPref"    # Landroid/content/SharedPreferences;
    .param p1, "newPref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 152
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 153
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 155
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 156
    .local v3, "v":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 157
    .local v2, "key":Ljava/lang/String;
    instance-of v5, v3, Ljava/lang/Boolean;

    if-eqz v5, :cond_1

    .line 158
    check-cast v3, Ljava/lang/Boolean;

    .end local v3    # "v":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 159
    .restart local v3    # "v":Ljava/lang/Object;
    :cond_1
    instance-of v5, v3, Ljava/lang/Float;

    if-eqz v5, :cond_2

    .line 160
    check-cast v3, Ljava/lang/Float;

    .end local v3    # "v":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 161
    .restart local v3    # "v":Ljava/lang/Object;
    :cond_2
    instance-of v5, v3, Ljava/lang/Integer;

    if-eqz v5, :cond_3

    .line 162
    check-cast v3, Ljava/lang/Integer;

    .end local v3    # "v":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 163
    .restart local v3    # "v":Ljava/lang/Object;
    :cond_3
    instance-of v5, v3, Ljava/lang/Long;

    if-eqz v5, :cond_4

    .line 164
    check-cast v3, Ljava/lang/Long;

    .end local v3    # "v":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v0, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 165
    .restart local v3    # "v":Ljava/lang/Object;
    :cond_4
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 166
    check-cast v3, Ljava/lang/String;

    .end local v3    # "v":Ljava/lang/Object;
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 168
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v2    # "key":Ljava/lang/String;
    :cond_5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 169
    return-void
.end method

.method public static correctLauncherPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 70
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    :cond_0
    const-string v2, "MigrationManager"

    const-string v3, "Invalid context instance or invalid str parameter"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .end local p1    # "str":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p1

    .line 75
    .restart local p1    # "str":Ljava/lang/String;
    :cond_2
    const-string v1, "com.oneplus.launcher"

    .line 76
    .local v1, "target":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "corrected":Ljava/lang/String;
    const-string v2, "MigrationManager"

    const-string v3, "[correctLauncherPackageName] %s -> %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p1, v0

    .line 82
    goto :goto_0
.end method

.method static deletePref(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/shared_prefs/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, "deletePrefFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v0    # "deletePrefFile":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "MigrationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " e "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static migrateBlurWallpaper(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    invoke-static {p0}, Lnet/oneplus/h2launcher/migrate/BlurWallpaperMigration;->performMigration(Landroid/content/Context;)V

    .line 107
    return-void
.end method

.method public static migrateWallpaperPreference(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-static {p0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->getWallpaperPreferenceVersion(Landroid/content/Context;)I

    move-result v1

    .line 92
    .local v1, "version":I
    const/4 v0, 0x1

    .line 93
    .local v0, "latestVersion":I
    if-eq v1, v0, :cond_0

    .line 94
    invoke-static {p0, v1, v0}, Lnet/oneplus/h2launcher/migrate/WallpaperPreferenceMigration;->onUpgrade(Landroid/content/Context;II)V

    .line 95
    invoke-static {p0, v0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->setWallpaperPreferenceVersion(Landroid/content/Context;I)V

    .line 97
    :cond_0
    return-void
.end method

.method private static migrationComOnePlusDefaultPrefs(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    const-string v2, "com.oneplus.launcher_preferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 132
    .local v1, "old":Landroid/content/SharedPreferences;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 133
    .local v0, "newPref":Landroid/content/SharedPreferences;
    invoke-static {v1, v0}, Lnet/oneplus/h2launcher/migrate/MigrationManager;->copyPref(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V

    .line 134
    const-string v2, "com.oneplus.launcher_preferences"

    invoke-static {p0, v2}, Lnet/oneplus/h2launcher/migrate/MigrationManager;->deletePref(Landroid/content/Context;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method private static migrationComOnePlusManagedUsersPrefs(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 145
    const-string v2, "com.oneplus.launcher.managedusers.prefs"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 146
    .local v1, "old":Landroid/content/SharedPreferences;
    const-string v2, "net.oneplus.h2launcher.managedusers.prefs"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 147
    .local v0, "newPref":Landroid/content/SharedPreferences;
    invoke-static {v1, v0}, Lnet/oneplus/h2launcher/migrate/MigrationManager;->copyPref(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V

    .line 148
    const-string v2, "com.oneplus.launcher.managedusers.prefs"

    invoke-static {p0, v2}, Lnet/oneplus/h2launcher/migrate/MigrationManager;->deletePref(Landroid/content/Context;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method private static migrationComOnePlusPrefs(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 138
    const-string v2, "com.oneplus.launcher.prefs"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 139
    .local v1, "old":Landroid/content/SharedPreferences;
    const-string v2, "net.oneplus.h2launcher.prefs"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 140
    .local v0, "newPref":Landroid/content/SharedPreferences;
    invoke-static {v1, v0}, Lnet/oneplus/h2launcher/migrate/MigrationManager;->copyPref(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V

    .line 141
    const-string v2, "com.oneplus.launcher.prefs"

    invoke-static {p0, v2}, Lnet/oneplus/h2launcher/migrate/MigrationManager;->deletePref(Landroid/content/Context;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method private static migrationDefaultPrefs(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    const-string v2, "com.android.launcher3_preferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 111
    .local v1, "old":Landroid/content/SharedPreferences;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 112
    .local v0, "newPref":Landroid/content/SharedPreferences;
    invoke-static {v1, v0}, Lnet/oneplus/h2launcher/migrate/MigrationManager;->copyPref(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V

    .line 113
    const-string v2, "com.android.launcher3_preferences"

    invoke-static {p0, v2}, Lnet/oneplus/h2launcher/migrate/MigrationManager;->deletePref(Landroid/content/Context;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method private static migrationManagedUsersPrefs(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 124
    const-string v2, "com.android.launcher3.managedusers.prefs"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 125
    .local v1, "old":Landroid/content/SharedPreferences;
    const-string v2, "net.oneplus.h2launcher.managedusers.prefs"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 126
    .local v0, "newPref":Landroid/content/SharedPreferences;
    invoke-static {v1, v0}, Lnet/oneplus/h2launcher/migrate/MigrationManager;->copyPref(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V

    .line 127
    const-string v2, "com.android.launcher3.managedusers.prefs"

    invoke-static {p0, v2}, Lnet/oneplus/h2launcher/migrate/MigrationManager;->deletePref(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method private static migrationPrefs(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 117
    const-string v2, "com.android.launcher3.prefs"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 118
    .local v1, "old":Landroid/content/SharedPreferences;
    const-string v2, "net.oneplus.h2launcher.prefs"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 119
    .local v0, "newPref":Landroid/content/SharedPreferences;
    invoke-static {v1, v0}, Lnet/oneplus/h2launcher/migrate/MigrationManager;->copyPref(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V

    .line 120
    const-string v2, "com.android.launcher3.prefs"

    invoke-static {p0, v2}, Lnet/oneplus/h2launcher/migrate/MigrationManager;->deletePref(Landroid/content/Context;Ljava/lang/String;)V

    .line 121
    return-void
.end method

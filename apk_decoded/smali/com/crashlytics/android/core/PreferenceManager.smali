.class Lcom/crashlytics/android/core/PreferenceManager;
.super Ljava/lang/Object;
.source "PreferenceManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CommitPrefEdits"
    }
.end annotation


# static fields
.field static final PREF_ALWAYS_SEND_REPORTS_KEY:Ljava/lang/String; = "always_send_reports_opt_in"

.field private static final PREF_MIGRATION_COMPLETE:Ljava/lang/String; = "preferences_migration_complete"

.field private static final SHOULD_ALWAYS_SEND_REPORTS_DEFAULT:Z


# instance fields
.field private final preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/services/persistence/PreferenceStore;)V
    .locals 0
    .param p1, "preferenceStore"    # Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/crashlytics/android/core/PreferenceManager;->preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    .line 43
    return-void
.end method

.method public static create(Lio/fabric/sdk/android/services/persistence/PreferenceStore;Lcom/crashlytics/android/core/CrashlyticsCore;)Lcom/crashlytics/android/core/PreferenceManager;
    .locals 7
    .param p0, "preferenceStore"    # Lio/fabric/sdk/android/services/persistence/PreferenceStore;
    .param p1, "kit"    # Lcom/crashlytics/android/core/CrashlyticsCore;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 25
    invoke-interface {p0}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->get()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "preferences_migration_complete"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 26
    new-instance v2, Lio/fabric/sdk/android/services/persistence/PreferenceStoreImpl;

    invoke-direct {v2, p1}, Lio/fabric/sdk/android/services/persistence/PreferenceStoreImpl;-><init>(Lio/fabric/sdk/android/Kit;)V

    .line 28
    .local v2, "oldStore":Lio/fabric/sdk/android/services/persistence/PreferenceStore;
    invoke-interface {p0}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->get()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "always_send_reports_opt_in"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 29
    invoke-interface {v2}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->get()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "always_send_reports_opt_in"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v3

    .line 30
    .local v1, "migrationRequired":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 31
    invoke-interface {v2}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->get()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "always_send_reports_opt_in"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 33
    .local v0, "alwaysSend":Z
    invoke-interface {p0}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "always_send_reports_opt_in"

    .line 34
    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 33
    invoke-interface {p0, v4}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->save(Landroid/content/SharedPreferences$Editor;)Z

    .line 36
    .end local v0    # "alwaysSend":Z
    :cond_0
    invoke-interface {p0}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "preferences_migration_complete"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {p0, v3}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->save(Landroid/content/SharedPreferences$Editor;)Z

    .line 38
    .end local v1    # "migrationRequired":Z
    .end local v2    # "oldStore":Lio/fabric/sdk/android/services/persistence/PreferenceStore;
    :cond_1
    new-instance v3, Lcom/crashlytics/android/core/PreferenceManager;

    invoke-direct {v3, p0}, Lcom/crashlytics/android/core/PreferenceManager;-><init>(Lio/fabric/sdk/android/services/persistence/PreferenceStore;)V

    return-object v3

    .restart local v2    # "oldStore":Lio/fabric/sdk/android/services/persistence/PreferenceStore;
    :cond_2
    move v1, v4

    .line 29
    goto :goto_0
.end method


# virtual methods
.method setShouldAlwaysSendReports(Z)V
    .locals 3
    .param p1, "send"    # Z

    .prologue
    .line 46
    iget-object v0, p0, Lcom/crashlytics/android/core/PreferenceManager;->preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    iget-object v1, p0, Lcom/crashlytics/android/core/PreferenceManager;->preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    invoke-interface {v1}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "always_send_reports_opt_in"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->save(Landroid/content/SharedPreferences$Editor;)Z

    .line 47
    return-void
.end method

.method shouldAlwaysSendReports()Z
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/crashlytics/android/core/PreferenceManager;->preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "always_send_reports_opt_in"

    const/4 v2, 0x0

    .line 51
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 50
    return v0
.end method

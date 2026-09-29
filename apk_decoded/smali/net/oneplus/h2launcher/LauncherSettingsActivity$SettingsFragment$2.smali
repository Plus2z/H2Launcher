.class Lnet/oneplus/h2launcher/LauncherSettingsActivity$SettingsFragment$2;
.super Ljava/lang/Object;
.source "LauncherSettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherSettingsActivity$SettingsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/LauncherSettingsActivity$SettingsFragment;

.field final synthetic val$iconPackList:[[Ljava/lang/CharSequence;

.field final synthetic val$listPref:Landroid/preference/ListPreference;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherSettingsActivity$SettingsFragment;[[Ljava/lang/CharSequence;Landroid/preference/ListPreference;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/LauncherSettingsActivity$SettingsFragment;

    .prologue
    .line 92
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherSettingsActivity$SettingsFragment$2;->this$0:Lnet/oneplus/h2launcher/LauncherSettingsActivity$SettingsFragment;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherSettingsActivity$SettingsFragment$2;->val$iconPackList:[[Ljava/lang/CharSequence;

    iput-object p3, p0, Lnet/oneplus/h2launcher/LauncherSettingsActivity$SettingsFragment$2;->val$listPref:Landroid/preference/ListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 95
    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherSettingsActivity$SettingsFragment$2;->this$0:Lnet/oneplus/h2launcher/LauncherSettingsActivity$SettingsFragment;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/LauncherSettingsActivity$SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "icon_pack_shared_preferences"

    invoke-virtual {v3, v4, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 97
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "current_icon_pack"

    .line 98
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 97
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 98
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 100
    new-instance v1, Landroid/content/Intent;

    const-string v3, "icon_pack_changed"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherSettingsActivity$SettingsFragment$2;->this$0:Lnet/oneplus/h2launcher/LauncherSettingsActivity$SettingsFragment;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/LauncherSettingsActivity$SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherSettingsActivity$SettingsFragment$2;->val$iconPackList:[[Ljava/lang/CharSequence;

    aget-object v3, v3, v6

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 104
    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherSettingsActivity$SettingsFragment$2;->val$iconPackList:[[Ljava/lang/CharSequence;

    aget-object v3, v3, v6

    aget-object v3, v3, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherSettingsActivity$SettingsFragment$2;->val$listPref:Landroid/preference/ListPreference;

    iget-object v4, p0, Lnet/oneplus/h2launcher/LauncherSettingsActivity$SettingsFragment$2;->val$iconPackList:[[Ljava/lang/CharSequence;

    aget-object v4, v4, v7

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 103
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    return v6
.end method

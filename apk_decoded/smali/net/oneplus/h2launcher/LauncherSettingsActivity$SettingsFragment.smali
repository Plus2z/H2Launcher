.class public Lnet/oneplus/h2launcher/LauncherSettingsActivity$SettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "LauncherSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/LauncherSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsFragment"
.end annotation


# static fields
.field private static final MDM_SHELF_STATE:Ljava/lang/String; = "shelf_state"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 57
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 61
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v5, 0x7f08001b

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/LauncherSettingsActivity$SettingsFragment;->addPreferencesFromResource(I)V

    .line 66
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherSettingsActivity$SettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    .line 67
    .local v3, "manager":Landroid/preference/PreferenceManager;
    const-string v5, "pref_quick_page"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    .line 68
    .local v4, "quickPage":Landroid/preference/SwitchPreference;
    new-instance v5, Lnet/oneplus/h2launcher/LauncherSettingsActivity$SettingsFragment$1;

    invoke-direct {v5, p0}, Lnet/oneplus/h2launcher/LauncherSettingsActivity$SettingsFragment$1;-><init>(Lnet/oneplus/h2launcher/LauncherSettingsActivity$SettingsFragment;)V

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 80
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherSettingsActivity$SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "icon_pack_shared_preferences"

    .line 81
    invoke-virtual {v5, v6, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "current_icon_pack"

    sget-object v7, Lnet/oneplus/h2launcher/IconPackHelper;->CUSTOM_SYSTEM_DEFAULT_ICONS:Ljava/lang/String;

    .line 82
    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "currentValue":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherSettingsActivity$SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v9}, Lnet/oneplus/h2launcher/IconPackHelper;->getIconPackList(Landroid/content/Context;Z)[[Ljava/lang/CharSequence;

    move-result-object v1

    .line 87
    .local v1, "iconPackList":[[Ljava/lang/CharSequence;
    const-string v5, "pref_icon_pack"

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/LauncherSettingsActivity$SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 88
    .local v2, "listPref":Landroid/preference/ListPreference;
    aget-object v5, v1, v8

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 89
    aget-object v5, v1, v9

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 92
    new-instance v5, Lnet/oneplus/h2launcher/LauncherSettingsActivity$SettingsFragment$2;

    invoke-direct {v5, p0, v1, v2}, Lnet/oneplus/h2launcher/LauncherSettingsActivity$SettingsFragment$2;-><init>(Lnet/oneplus/h2launcher/LauncherSettingsActivity$SettingsFragment;[[Ljava/lang/CharSequence;Landroid/preference/ListPreference;)V

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 114
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 119
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 120
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 121
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 122
    .local v0, "lv":Landroid/widget/ListView;
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 124
    .end local v0    # "lv":Landroid/widget/ListView;
    :cond_0
    return-object v1
.end method

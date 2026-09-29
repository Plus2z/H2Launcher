.class Lnet/oneplus/h2launcher/config/PreferencesHelper$1;
.super Ljava/lang/Object;
.source "PreferencesHelper.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/config/PreferencesHelper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/config/PreferencesHelper;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/config/PreferencesHelper;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/config/PreferencesHelper;

    .prologue
    .line 137
    iput-object p1, p0, Lnet/oneplus/h2launcher/config/PreferencesHelper$1;->this$0:Lnet/oneplus/h2launcher/config/PreferencesHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v1, p0, Lnet/oneplus/h2launcher/config/PreferencesHelper$1;->this$0:Lnet/oneplus/h2launcher/config/PreferencesHelper;

    invoke-static {v1}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->access$000(Lnet/oneplus/h2launcher/config/PreferencesHelper;)Lnet/oneplus/h2launcher/config/PreferencesHelper$PreferenceChangedCallback;

    move-result-object v1

    invoke-interface {v1}, Lnet/oneplus/h2launcher/config/PreferencesHelper$PreferenceChangedCallback;->getWatchedKeys()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 141
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 142
    iget-object v4, p0, Lnet/oneplus/h2launcher/config/PreferencesHelper$1;->this$0:Lnet/oneplus/h2launcher/config/PreferencesHelper;

    invoke-static {v4}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->access$000(Lnet/oneplus/h2launcher/config/PreferencesHelper;)Lnet/oneplus/h2launcher/config/PreferencesHelper$PreferenceChangedCallback;

    move-result-object v4

    invoke-interface {v4, p2}, Lnet/oneplus/h2launcher/config/PreferencesHelper$PreferenceChangedCallback;->onPreferenceChange(Ljava/lang/String;)V

    .line 140
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    return-void
.end method

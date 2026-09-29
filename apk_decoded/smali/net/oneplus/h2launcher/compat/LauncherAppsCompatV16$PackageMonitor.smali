.class Lnet/oneplus/h2launcher/compat/LauncherAppsCompatV16$PackageMonitor;
.super Landroid/content/BroadcastReceiver;
.source "LauncherAppsCompatV16.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/compat/LauncherAppsCompatV16;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/compat/LauncherAppsCompatV16;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/compat/LauncherAppsCompatV16;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/compat/LauncherAppsCompatV16;

    .prologue
    .line 160
    iput-object p1, p0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatV16$PackageMonitor;->this$0:Lnet/oneplus/h2launcher/compat/LauncherAppsCompatV16;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 162
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v5

    .line 165
    .local v5, "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    .line 166
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.intent.action.PACKAGE_ADDED"

    .line 167
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 168
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "packageName":Ljava/lang/String;
    const-string v7, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 171
    .local v4, "replacing":Z
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 221
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "replacing":Z
    :cond_1
    return-void

    .line 175
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v4    # "replacing":Z
    :cond_2
    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 176
    iget-object v6, p0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatV16$PackageMonitor;->this$0:Lnet/oneplus/h2launcher/compat/LauncherAppsCompatV16;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatV16;->getCallbacks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    .line 177
    .local v1, "callback":Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;
    invoke-interface {v1, v2, v5}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackageChanged(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    goto :goto_0

    .line 179
    .end local v1    # "callback":Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;
    :cond_3
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 180
    if-nez v4, :cond_1

    .line 181
    iget-object v6, p0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatV16$PackageMonitor;->this$0:Lnet/oneplus/h2launcher/compat/LauncherAppsCompatV16;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatV16;->getCallbacks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    .line 182
    .restart local v1    # "callback":Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;
    invoke-interface {v1, v2, v5}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackageRemoved(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    goto :goto_1

    .line 187
    .end local v1    # "callback":Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;
    :cond_4
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 188
    if-nez v4, :cond_5

    .line 189
    iget-object v6, p0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatV16$PackageMonitor;->this$0:Lnet/oneplus/h2launcher/compat/LauncherAppsCompatV16;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatV16;->getCallbacks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    .line 190
    .restart local v1    # "callback":Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;
    invoke-interface {v1, v2, v5}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackageAdded(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    goto :goto_2

    .line 193
    .end local v1    # "callback":Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;
    :cond_5
    iget-object v6, p0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatV16$PackageMonitor;->this$0:Lnet/oneplus/h2launcher/compat/LauncherAppsCompatV16;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatV16;->getCallbacks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    .line 194
    .restart local v1    # "callback":Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;
    invoke-interface {v1, v2, v5}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackageChanged(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    goto :goto_3

    .line 198
    .end local v1    # "callback":Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "replacing":Z
    :cond_6
    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 202
    const-string v7, "android.intent.extra.REPLACING"

    sget-boolean v8, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_KITKAT:Z

    if-nez v8, :cond_7

    const/4 v6, 0x1

    :cond_7
    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 204
    .restart local v4    # "replacing":Z
    const-string v6, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, "packages":[Ljava/lang/String;
    iget-object v6, p0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatV16$PackageMonitor;->this$0:Lnet/oneplus/h2launcher/compat/LauncherAppsCompatV16;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatV16;->getCallbacks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    .line 206
    .restart local v1    # "callback":Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;
    invoke-interface {v1, v3, v5, v4}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackagesAvailable([Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)V

    goto :goto_4

    .line 208
    .end local v1    # "callback":Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;
    .end local v3    # "packages":[Ljava/lang/String;
    .end local v4    # "replacing":Z
    :cond_8
    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 215
    const-string v7, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 216
    .restart local v4    # "replacing":Z
    const-string v6, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 217
    .restart local v3    # "packages":[Ljava/lang/String;
    iget-object v6, p0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatV16$PackageMonitor;->this$0:Lnet/oneplus/h2launcher/compat/LauncherAppsCompatV16;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompatV16;->getCallbacks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    .line 218
    .restart local v1    # "callback":Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;
    invoke-interface {v1, v3, v5, v4}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackagesUnavailable([Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)V

    goto :goto_5
.end method

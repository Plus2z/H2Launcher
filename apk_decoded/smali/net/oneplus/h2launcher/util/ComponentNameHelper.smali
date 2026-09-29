.class public Lnet/oneplus/h2launcher/util/ComponentNameHelper;
.super Ljava/lang/Object;
.source "ComponentNameHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBroadcastReceiverComponent(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 4
    .param p0, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 12
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 13
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_0

    .line 14
    const/4 v1, 0x0

    .line 17
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isSameComponent(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 2
    .param p0, "comp1"    # Landroid/content/ComponentName;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 35
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 36
    .local v0, "comp2":Landroid/content/ComponentName;
    :goto_0
    if-nez p0, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p0, :cond_2

    if-eqz v0, :cond_2

    .line 37
    invoke-virtual {p0, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 35
    .end local v0    # "comp2":Landroid/content/ComponentName;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 37
    .restart local v0    # "comp2":Landroid/content/ComponentName;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isSameComponent(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "comp"    # Landroid/content/ComponentName;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    if-eqz p1, :cond_0

    if-nez p2, :cond_3

    :cond_0
    if-nez p0, :cond_2

    .line 44
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 41
    goto :goto_0

    .line 43
    :cond_3
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz p0, :cond_4

    invoke-virtual {p0, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public static isSameComponent(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Z
    .locals 2
    .param p0, "info"    # Landroid/content/pm/ResolveInfo;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-static {p0}, Lnet/oneplus/h2launcher/util/ComponentNameHelper;->getBroadcastReceiverComponent(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v0

    .line 31
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-static {v0, p1}, Lnet/oneplus/h2launcher/util/ComponentNameHelper;->isSameComponent(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isSameComponent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .prologue
    .line 26
    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    :goto_0
    invoke-static {v0, p1}, Lnet/oneplus/h2launcher/util/ComponentNameHelper;->isSameComponent(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSamePackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "component"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "componentPackage":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

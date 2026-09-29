.class public Lnet/oneplus/h2launcher/util/AnalyticHelper;
.super Ljava/lang/Object;
.source "AnalyticHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/util/AnalyticHelper$Label;,
        Lnet/oneplus/h2launcher/util/AnalyticHelper$Tag;
    }
.end annotation


# static fields
.field private static sInstance:Lnet/oneplus/h2launcher/util/AnalyticHelper;


# instance fields
.field private final SUPPORT_MDM:Z

.field private mAppTracker:Lcom/oneplus/sdk/utils/OpAppTracker;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/util/AnalyticHelper;->mAppTracker:Lcom/oneplus/sdk/utils/OpAppTracker;

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/util/AnalyticHelper;->SUPPORT_MDM:Z

    .line 21
    new-instance v0, Lcom/oneplus/sdk/utils/OpAppTracker;

    invoke-direct {v0, p1}, Lcom/oneplus/sdk/utils/OpAppTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/util/AnalyticHelper;->mAppTracker:Lcom/oneplus/sdk/utils/OpAppTracker;

    .line 22
    return-void
.end method

.method private dump(Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 63
    const-string v4, "MDM"

    const-string v5, "Tag:%s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-static {v4, v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 65
    .local v1, "keys":Ljava/util/Set;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 67
    .local v2, "label":Ljava/lang/String;
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 68
    .local v3, "value":Ljava/lang/String;
    const-string v4, "MDM"

    const-string v5, "label:%s,value:%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v7

    aput-object v3, v6, v8

    invoke-static {v4, v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 70
    .end local v2    # "label":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static get()Lnet/oneplus/h2launcher/util/AnalyticHelper;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lnet/oneplus/h2launcher/util/AnalyticHelper;->sInstance:Lnet/oneplus/h2launcher/util/AnalyticHelper;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    sget-object v0, Lnet/oneplus/h2launcher/util/AnalyticHelper;->sInstance:Lnet/oneplus/h2launcher/util/AnalyticHelper;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lnet/oneplus/h2launcher/util/AnalyticHelper;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/util/AnalyticHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/oneplus/h2launcher/util/AnalyticHelper;->sInstance:Lnet/oneplus/h2launcher/util/AnalyticHelper;

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public final putAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    .local v0, "mdmData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v1, p0, Lnet/oneplus/h2launcher/util/AnalyticHelper;->mAppTracker:Lcom/oneplus/sdk/utils/OpAppTracker;

    invoke-virtual {v1, p1, v0}, Lcom/oneplus/sdk/utils/OpAppTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)I

    .line 47
    return-void
.end method

.method public final putAnalytics(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, "mdmData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 56
    iget-object v0, p0, Lnet/oneplus/h2launcher/util/AnalyticHelper;->mAppTracker:Lcom/oneplus/sdk/utils/OpAppTracker;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/sdk/utils/OpAppTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)I

    .line 59
    :cond_0
    return-void
.end method

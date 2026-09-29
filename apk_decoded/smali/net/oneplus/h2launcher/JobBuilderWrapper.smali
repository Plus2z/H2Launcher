.class public Lnet/oneplus/h2launcher/JobBuilderWrapper;
.super Ljava/lang/Object;
.source "JobBuilderWrapper.java"


# static fields
.field private static final sJobServiceList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/job/JobService;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/JobBuilderWrapper;->sJobServiceList:Ljava/util/Map;

    .line 23
    sget-object v0, Lnet/oneplus/h2launcher/JobBuilderWrapper;->sJobServiceList:Ljava/util/Map;

    const-class v1, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lnet/oneplus/h2launcher/JobBuilderWrapper;->sJobServiceList:Ljava/util/Map;

    const-class v1, Lnet/oneplus/h2launcher/migrate/MigrateHydrogenWallpaperService;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lnet/oneplus/h2launcher/JobBuilderWrapper;->sJobServiceList:Ljava/util/Map;

    const-class v1, Lnet/oneplus/h2launcher/migrate/MigrateOxygenWallpaperService;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lnet/oneplus/h2launcher/JobBuilderWrapper;->sJobServiceList:Ljava/util/Map;

    const-class v1, Lnet/oneplus/h2launcher/dynamicui/ColorExtractionService;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/ComponentName;)Landroid/app/job/JobInfo$Builder;
    .locals 4
    .param p0, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 41
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    invoke-static {p0}, Lnet/oneplus/h2launcher/JobBuilderWrapper;->getJobId(Landroid/content/ComponentName;)I

    move-result v1

    invoke-direct {v0, v1, p0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/16 v2, 0x0

    .line 42
    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static getJobId(Landroid/content/ComponentName;)I
    .locals 4
    .param p0, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 32
    sget-object v1, Lnet/oneplus/h2launcher/JobBuilderWrapper;->sJobServiceList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 33
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/job/JobService;>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    sget-object v1, Lnet/oneplus/h2launcher/JobBuilderWrapper;->sJobServiceList:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 37
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/job/JobService;>;"
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

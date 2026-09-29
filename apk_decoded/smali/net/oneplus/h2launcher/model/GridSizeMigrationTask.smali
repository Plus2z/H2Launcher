.class public Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;
.super Ljava/lang/Object;
.source "GridSizeMigrationTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;,
        Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$OptimalPlacementSolution;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static ENABLED:Z = false

.field private static final KEY_MIGRATION_SRC_HOTSEAT_SIZE:Ljava/lang/String; = "migration_src_hotseat_size"

.field private static final KEY_MIGRATION_SRC_WORKSPACE_SIZE:Ljava/lang/String; = "migration_src_workspace_size"

.field private static final KEY_MIGRATION_WIDGET_MINSIZE:Ljava/lang/String; = "migration_widget_min_size"

.field private static final TAG:Ljava/lang/String; = "GridSizeMigrationTask"

.field private static final WT_APPLICATION:F = 0.8f

.field private static final WT_FOLDER_FACTOR:F = 0.5f

.field private static final WT_SHORTCUT:F = 1.0f

.field private static final WT_WIDGET_FACTOR:F = 0.6f

.field private static final WT_WIDGET_MIN:F = 2.0f


# instance fields
.field private final mCarryOver:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDestAllAppsRank:I

.field private final mDestHotseatSize:I

.field private final mEntryToRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdp:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

.field private final mShouldRemoveX:Z

.field private final mShouldRemoveY:Z

.field private final mSrcAllAppsRank:I

.field private final mSrcHotseatSize:I

.field private final mSrcX:I

.field private final mSrcY:I

.field private final mTempValues:Landroid/content/ContentValues;

.field private final mTrgX:I

.field private final mTrgY:I

.field private final mUpdateOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mValidPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWidgetMinSize:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lnet/oneplus/h2launcher/Utilities;->isNOrAbove()Z

    move-result v0

    sput-boolean v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->ENABLED:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lnet/oneplus/h2launcher/InvariantDeviceProfile;Ljava/util/HashSet;IIII)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "idp"    # Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    .param p4, "srcHotseatSize"    # I
    .param p5, "srcAllAppsRank"    # I
    .param p6, "destHotseatSize"    # I
    .param p7, "destAllAppsRank"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lnet/oneplus/h2launcher/InvariantDeviceProfile;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;IIII)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p3, "validPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mWidgetMinSize:Ljava/util/HashMap;

    .line 69
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mTempValues:Landroid/content/ContentValues;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mEntryToRemove:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mUpdateOperations:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    .line 109
    iput-object p1, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mContext:Landroid/content/Context;

    .line 110
    iput-object p2, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mIdp:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    .line 111
    iput-object p3, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mValidPackages:Ljava/util/HashSet;

    .line 113
    iput p4, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mSrcHotseatSize:I

    .line 114
    iput p5, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mSrcAllAppsRank:I

    .line 116
    iput p6, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mDestHotseatSize:I

    .line 117
    iput p7, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mDestAllAppsRank:I

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mTrgY:I

    iput v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mTrgX:I

    iput v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mSrcY:I

    iput v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mSrcX:I

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mShouldRemoveY:Z

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mShouldRemoveX:Z

    .line 122
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lnet/oneplus/h2launcher/InvariantDeviceProfile;Ljava/util/HashSet;Ljava/util/HashMap;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "idp"    # Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    .param p5, "sourceSize"    # Landroid/graphics/Point;
    .param p6, "targetSize"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lnet/oneplus/h2launcher/InvariantDeviceProfile;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Point;",
            ">;",
            "Landroid/graphics/Point;",
            "Landroid/graphics/Point;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "validPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p4, "widgetMinSize":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Point;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mWidgetMinSize:Ljava/util/HashMap;

    .line 69
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mTempValues:Landroid/content/ContentValues;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mEntryToRemove:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mUpdateOperations:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    .line 87
    iput-object p1, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mContext:Landroid/content/Context;

    .line 88
    iput-object p3, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mValidPackages:Ljava/util/HashSet;

    .line 89
    iget-object v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mWidgetMinSize:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 90
    iput-object p2, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mIdp:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    .line 92
    iget v0, p5, Landroid/graphics/Point;->x:I

    iput v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mSrcX:I

    .line 93
    iget v0, p5, Landroid/graphics/Point;->y:I

    iput v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mSrcY:I

    .line 95
    iget v0, p6, Landroid/graphics/Point;->x:I

    iput v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mTrgX:I

    .line 96
    iget v0, p6, Landroid/graphics/Point;->y:I

    iput v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mTrgY:I

    .line 98
    iget v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mTrgX:I

    iget v3, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mSrcX:I

    if-ge v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mShouldRemoveX:Z

    .line 99
    iget v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mTrgY:I

    iget v3, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mSrcY:I

    if-ge v0, v3, :cond_1

    :goto_1
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mShouldRemoveY:Z

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mDestAllAppsRank:I

    iput v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mDestHotseatSize:I

    iput v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mSrcAllAppsRank:I

    iput v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mSrcHotseatSize:I

    .line 103
    return-void

    :cond_0
    move v0, v2

    .line 98
    goto :goto_0

    :cond_1
    move v1, v2

    .line 99
    goto :goto_1
.end method

.method static synthetic access$000(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    .line 43
    invoke-static {p0}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->deepCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;

    .prologue
    .line 43
    iget v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mTrgY:I

    return v0
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;

    .prologue
    .line 43
    iget v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mTrgX:I

    return v0
.end method

.method static synthetic access$300(Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;[[ZIIII)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;
    .param p1, "x1"    # [[Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 43
    invoke-direct/range {p0 .. p5}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->isVacant([[ZIIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;[[ZLnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;Z)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;
    .param p1, "x1"    # [[Z
    .param p2, "x2"    # Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;
    .param p3, "x3"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->markCells([[ZLnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;Z)V

    return-void
.end method

.method private applyOperations()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mUpdateOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lnet/oneplus/h2launcher/LauncherProvider;->AUTHORITY:Ljava/lang/String;

    iget-object v2, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mUpdateOperations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 136
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mEntryToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    const-string v0, "GridSizeMigrationTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing items: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    iget-object v3, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mEntryToRemove:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lnet/oneplus/h2launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id"

    iget-object v3, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mEntryToRemove:Ljava/util/ArrayList;

    .line 141
    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 140
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 145
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mUpdateOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mEntryToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static deepCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 885
    .local p0, "src":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 886
    .local v0, "dup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;

    .line 887
    .local v1, "e":Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->copy()Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 889
    .end local v1    # "e":Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;
    :cond_0
    return-object v0
.end method

.method private getFolderItemsCount(J)I
    .locals 11
    .param p1, "folderId"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 796
    iget-object v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lnet/oneplus/h2launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v10

    const-string v3, "intent"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "container = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 800
    .local v7, "c":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 801
    .local v9, "total":I
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->verifyIntent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 804
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 805
    :catch_0
    move-exception v8

    .line 806
    .local v8, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mEntryToRemove:Ljava/util/ArrayList;

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 809
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 810
    return v9
.end method

.method private static getPointString(II)Ljava/lang/String;
    .locals 5
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 898
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%d,%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isVacant([[ZIIII)Z
    .locals 5
    .param p1, "occupied"    # [[Z
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    const/4 v2, 0x0

    .line 419
    add-int v3, p2, p4

    iget v4, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mTrgX:I

    if-le v3, v4, :cond_1

    .line 429
    :cond_0
    :goto_0
    return v2

    .line 420
    :cond_1
    add-int v3, p3, p5

    iget v4, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mTrgY:I

    if-gt v3, v4, :cond_0

    .line 422
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p4, :cond_3

    .line 423
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    if-ge v1, p5, :cond_2

    .line 424
    add-int v3, v0, p2

    aget-object v3, p1, v3

    add-int v4, v1, p3

    aget-boolean v3, v3, v4

    if-nez v3, :cond_0

    .line 423
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 422
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 429
    .end local v1    # "j":I
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private loadHotseatEntries()Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 627
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lnet/oneplus/h2launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "itemType"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "intent"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "screen"

    aput-object v6, v4, v5

    const-string v5, "container = -101"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .line 635
    .local v9, "c":Landroid/database/Cursor;
    const-string v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 636
    .local v13, "indexId":I
    const-string v2, "itemType"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 637
    .local v15, "indexItemType":I
    const-string v2, "intent"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 638
    .local v14, "indexIntent":I
    const-string v2, "screen"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 640
    .local v16, "indexScreen":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 641
    .local v11, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;>;"
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 642
    new-instance v12, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;

    invoke-direct {v12}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;-><init>()V

    .line 643
    .local v12, "entry":Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v12, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->id:J

    .line 644
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->itemType:I

    .line 645
    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v12, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->screenId:J

    .line 647
    iget-wide v2, v12, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->screenId:J

    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mSrcHotseatSize:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 648
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mEntryToRemove:Ljava/util/ArrayList;

    iget-wide v4, v12, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 654
    :cond_0
    :try_start_0
    iget v2, v12, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->itemType:I

    packed-switch v2, :pswitch_data_0

    .line 671
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Invalid item type"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    :catch_0
    move-exception v10

    .line 675
    .local v10, "e":Ljava/lang/Exception;
    const-string v2, "GridSizeMigrationTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v12, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 677
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mEntryToRemove:Ljava/util/ArrayList;

    iget-wide v4, v12, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 657
    .end local v10    # "e":Ljava/lang/Exception;
    :pswitch_0
    :try_start_1
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->verifyIntent(Ljava/lang/String;)V

    .line 658
    iget v2, v12, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->itemType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    iput v2, v12, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->weight:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 680
    :goto_2
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 658
    :cond_1
    const v2, 0x3f4ccccd    # 0.8f

    goto :goto_1

    .line 663
    :pswitch_1
    :try_start_2
    iget-wide v2, v12, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->id:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->getFolderItemsCount(J)I

    move-result v17

    .line 664
    .local v17, "total":I
    if-nez v17, :cond_2

    .line 665
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Folder is empty"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 667
    :cond_2
    const/high16 v2, 0x3f000000    # 0.5f

    move/from16 v0, v17

    int-to-float v3, v0

    mul-float/2addr v2, v3

    iput v2, v12, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->weight:F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 682
    .end local v12    # "entry":Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;
    .end local v17    # "total":I
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 683
    return-object v11

    .line 654
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private loadWorkspaceEntries(J)Ljava/util/ArrayList;
    .locals 27
    .param p1, "screen"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 691
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lnet/oneplus/h2launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "itemType"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "cellX"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "cellY"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "spanX"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "spanY"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "intent"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "appWidgetProvider"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "container = -100 AND screen = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .line 704
    .local v9, "c":Landroid/database/Cursor;
    const-string v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 705
    .local v17, "indexId":I
    const-string v2, "itemType"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 706
    .local v19, "indexItemType":I
    const-string v2, "cellX"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 707
    .local v15, "indexCellX":I
    const-string v2, "cellY"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 708
    .local v16, "indexCellY":I
    const-string v2, "spanX"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 709
    .local v20, "indexSpanX":I
    const-string v2, "spanY"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 710
    .local v21, "indexSpanY":I
    const-string v2, "intent"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 711
    .local v18, "indexIntent":I
    const-string v2, "appWidgetProvider"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 713
    .local v14, "indexAppWidgetProvider":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 714
    .local v12, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;>;"
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 715
    new-instance v13, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;

    invoke-direct {v13}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;-><init>()V

    .line 716
    .local v13, "entry":Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;
    move/from16 v0, v17

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v13, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->id:J

    .line 717
    move/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v13, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->itemType:I

    .line 718
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v13, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->cellX:I

    .line 719
    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v13, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->cellY:I

    .line 720
    move/from16 v0, v20

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v13, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->spanX:I

    .line 721
    move/from16 v0, v21

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v13, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->spanY:I

    .line 722
    move-wide/from16 v0, p1

    iput-wide v0, v13, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->screenId:J

    .line 726
    :try_start_0
    iget v2, v13, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->itemType:I

    packed-switch v2, :pswitch_data_0

    .line 777
    :pswitch_0
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Invalid item type"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    :catch_0
    move-exception v11

    .line 781
    .local v11, "e":Ljava/lang/Exception;
    const-string v2, "GridSizeMigrationTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v13, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 783
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mEntryToRemove:Ljava/util/ArrayList;

    iget-wide v4, v13, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 729
    .end local v11    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    move/from16 v0, v18

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->verifyIntent(Ljava/lang/String;)V

    .line 730
    iget v2, v13, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->itemType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    iput v2, v13, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->weight:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 786
    :cond_0
    :goto_2
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 730
    :cond_1
    const v2, 0x3f4ccccd    # 0.8f

    goto :goto_1

    .line 736
    :pswitch_2
    :try_start_2
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 737
    .local v23, "provider":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    .line 738
    .local v10, "cn":Landroid/content/ComponentName;
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->verifyPackage(Ljava/lang/String;)V

    .line 739
    const/high16 v2, 0x40000000    # 2.0f

    const v3, 0x3f19999a    # 0.6f

    iget v4, v13, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->spanX:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, v13, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->spanY:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v13, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->weight:F

    .line 743
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mContext:Landroid/content/Context;

    .line 744
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v3

    .line 743
    invoke-static {v2, v10, v3}, Lnet/oneplus/h2launcher/LauncherModel;->getProviderInfo(Landroid/content/Context;Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    move-result-object v22

    .line 745
    .local v22, "pInfo":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    if-nez v22, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mWidgetMinSize:Ljava/util/HashMap;

    .line 746
    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    move-object/from16 v24, v2

    .line 747
    .local v24, "spans":Landroid/graphics/Point;
    :goto_3
    if-eqz v24, :cond_9

    .line 748
    move-object/from16 v0, v24

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-lez v2, :cond_5

    move-object/from16 v0, v24

    iget v2, v0, Landroid/graphics/Point;->x:I

    :goto_4
    iput v2, v13, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->minSpanX:I

    .line 749
    move-object/from16 v0, v24

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-lez v2, :cond_6

    move-object/from16 v0, v24

    iget v2, v0, Landroid/graphics/Point;->y:I

    :goto_5
    iput v2, v13, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->minSpanY:I

    .line 751
    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 752
    iget v2, v13, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->minSpanX:I

    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mTrgX:I

    if-le v2, v3, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mTrgX:I

    :goto_6
    iput v2, v13, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->minSpanX:I

    .line 753
    iget v2, v13, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->minSpanY:I

    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mTrgY:I

    if-le v2, v3, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mTrgY:I

    :goto_7
    iput v2, v13, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->minSpanY:I

    .line 760
    :cond_2
    :goto_8
    iget v2, v13, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->minSpanX:I

    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mTrgX:I

    if-gt v2, v3, :cond_3

    iget v2, v13, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->minSpanY:I

    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mTrgY:I

    if-le v2, v3, :cond_0

    .line 761
    :cond_3
    const-string v2, "GridSizeMigrationTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[loadWorkspaceEntries] Widget can\'t be resized down to fit the grid. entry.minSpanX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v13, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->minSpanX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", entry.minSpanY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v13, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->minSpanY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ComponentName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Widget can\'t be resized down to fit the grid"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 746
    .end local v24    # "spans":Landroid/graphics/Point;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mIdp:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->getMinSpans(Lnet/oneplus/h2launcher/InvariantDeviceProfile;Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v24

    goto/16 :goto_3

    .line 748
    .restart local v24    # "spans":Landroid/graphics/Point;
    :cond_5
    iget v2, v13, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->spanX:I

    goto/16 :goto_4

    .line 749
    :cond_6
    iget v2, v13, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->spanY:I

    goto/16 :goto_5

    .line 752
    :cond_7
    iget v2, v13, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->minSpanX:I

    goto :goto_6

    .line 753
    :cond_8
    iget v2, v13, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->minSpanY:I

    goto :goto_7

    .line 757
    :cond_9
    const/4 v2, 0x2

    iput v2, v13, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->minSpanY:I

    iput v2, v13, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->minSpanX:I

    goto :goto_8

    .line 769
    .end local v10    # "cn":Landroid/content/ComponentName;
    .end local v22    # "pInfo":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    .end local v23    # "provider":Ljava/lang/String;
    .end local v24    # "spans":Landroid/graphics/Point;
    :pswitch_3
    iget-wide v2, v13, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->id:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->getFolderItemsCount(J)I

    move-result v25

    .line 770
    .local v25, "total":I
    if-nez v25, :cond_a

    .line 771
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Folder is empty"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 773
    :cond_a
    const/high16 v2, 0x3f000000    # 0.5f

    move/from16 v0, v25

    int-to-float v3, v0

    mul-float/2addr v2, v3

    iput v2, v13, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->weight:F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 788
    .end local v13    # "entry":Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;
    .end local v25    # "total":I
    :cond_b
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 789
    return-object v12

    .line 726
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private markCells([[ZLnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;Z)V
    .locals 4
    .param p1, "occupied"    # [[Z
    .param p2, "item"    # Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;
    .param p3, "val"    # Z

    .prologue
    .line 411
    iget v0, p2, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->cellX:I

    .local v0, "i":I
    :goto_0
    iget v2, p2, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->cellX:I

    iget v3, p2, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->spanX:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_1

    .line 412
    iget v1, p2, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->cellY:I

    .local v1, "j":I
    :goto_1
    iget v2, p2, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->cellY:I

    iget v3, p2, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->spanY:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 413
    aget-object v2, p1, v0

    aput-boolean p3, v2, v1

    .line 412
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 411
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 416
    .end local v1    # "j":I
    :cond_1
    return-void
.end method

.method public static markForMigration(Landroid/content/Context;Ljava/util/HashSet;Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "srcProfile"    # Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 903
    .local p1, "widgets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 904
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "migration_src_workspace_size"

    iget v3, p2, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->desktopCols:F

    float-to-int v3, v3

    iget v4, p2, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->desktopRows:F

    float-to-int v4, v4

    .line 906
    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->getPointString(II)Ljava/lang/String;

    move-result-object v3

    .line 905
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "migration_src_hotseat_size"

    iget v3, p2, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->hotseatCount:F

    float-to-int v3, v3

    iget v4, p2, Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;->allappsRank:I

    .line 908
    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->getPointString(II)Ljava/lang/String;

    move-result-object v3

    .line 907
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "migration_widget_min_size"

    .line 909
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 910
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 911
    return-void
.end method

.method public static migrateGridIfNeeded(Landroid/content/Context;)Z
    .locals 34
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 919
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v27

    .line 920
    .local v27, "prefs":Landroid/content/SharedPreferences;
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/LauncherAppState;->getInvariantDeviceProfile()Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-result-object v22

    .line 922
    .local v22, "idp":Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    move-object/from16 v0, v22

    iget v2, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numColumns:I

    move-object/from16 v0, v22

    iget v3, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numRows:I

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->getPointString(II)Ljava/lang/String;

    move-result-object v19

    .line 923
    .local v19, "gridSizeString":Ljava/lang/String;
    move-object/from16 v0, v22

    iget v2, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numHotseatIcons:I

    move-object/from16 v0, v22

    iget v3, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->hotseatAllAppsRank:I

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->getPointString(II)Ljava/lang/String;

    move-result-object v21

    .line 925
    .local v21, "hotseatSizeString":Ljava/lang/String;
    const-string v2, "show_switching_view"

    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 926
    const-string v2, "GridSizeMigrationTask"

    const-string v3, "[migrateGridIfNeeded] layout switch case no need migrate."

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    invoke-interface/range {v27 .. v27}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "migration_src_workspace_size"

    .line 929
    move-object/from16 v0, v19

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "migration_src_hotseat_size"

    .line 930
    move-object/from16 v0, v21

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "migration_widget_min_size"

    .line 931
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 932
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 933
    const/4 v2, 0x0

    .line 1049
    :goto_0
    return v2

    .line 936
    :cond_0
    const-string v2, "migration_src_workspace_size"

    const-string v3, ""

    move-object/from16 v0, v27

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "migration_src_hotseat_size"

    const-string v3, ""

    .line 937
    move-object/from16 v0, v27

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 939
    const/4 v2, 0x1

    goto :goto_0

    .line 942
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 944
    .local v24, "migrationStartTime":J
    const/16 v16, 0x0

    .line 950
    .local v16, "dbChanged":Z
    :try_start_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 951
    .local v5, "validPackages":Ljava/util/HashSet;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/PackageInfo;

    .line 952
    .local v23, "info":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v23

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1037
    .end local v5    # "validPackages":Ljava/util/HashSet;
    .end local v23    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v17

    .line 1038
    .local v17, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "GridSizeMigrationTask"

    const-string v3, "Error during grid migration"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1039
    const/4 v2, 0x0

    .line 1041
    const-string v3, "GridSizeMigrationTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Workspace migration completed in "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1042
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v10, v10, v24

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "ms"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1041
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    invoke-interface/range {v27 .. v27}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "migration_src_workspace_size"

    .line 1046
    move-object/from16 v0, v19

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "migration_src_hotseat_size"

    .line 1047
    move-object/from16 v0, v21

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "migration_widget_min_size"

    .line 1048
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1049
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 954
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v5    # "validPackages":Ljava/util/HashSet;
    :cond_2
    :try_start_2
    invoke-static/range {p0 .. p0}, Lnet/oneplus/h2launcher/compat/PackageInstallerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/PackageInstallerCompat;

    move-result-object v2

    .line 955
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/compat/PackageInstallerCompat;->updateAndGetActiveSessionCache()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 954
    invoke-virtual {v5, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 958
    const-string v2, "migration_src_hotseat_size"

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->parsePoint(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v31

    .line 960
    .local v31, "srcHotseatSize":Landroid/graphics/Point;
    move-object/from16 v0, v31

    iget v2, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v22

    iget v3, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numHotseatIcons:I

    if-ne v2, v3, :cond_3

    move-object/from16 v0, v31

    iget v2, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v22

    iget v3, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->hotseatAllAppsRank:I

    if-eq v2, v3, :cond_4

    .line 964
    :cond_3
    new-instance v2, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;

    .line 965
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/LauncherAppState;->getInvariantDeviceProfile()Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-result-object v4

    move-object/from16 v0, v31

    iget v6, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v31

    iget v7, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v22

    iget v8, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numHotseatIcons:I

    move-object/from16 v0, v22

    iget v9, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->hotseatAllAppsRank:I

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;-><init>(Landroid/content/Context;Lnet/oneplus/h2launcher/InvariantDeviceProfile;Ljava/util/HashSet;IIII)V

    .line 968
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->migrateHotseat()Z

    move-result v16

    .line 972
    :cond_4
    new-instance v32, Landroid/graphics/Point;

    move-object/from16 v0, v22

    iget v2, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numColumns:I

    move-object/from16 v0, v22

    iget v3, v0, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numRows:I

    move-object/from16 v0, v32

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 973
    .local v32, "targetSize":Landroid/graphics/Point;
    const-string v2, "migration_src_workspace_size"

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->parsePoint(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v29

    .line 975
    .local v29, "sourceSize":Landroid/graphics/Point;
    const-string v2, "GridSizeMigrationTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[migrateGridIfNeeded] sourceSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", targetSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 984
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 985
    .local v18, "gridSizeSteps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    new-instance v2, Landroid/graphics/Point;

    const/4 v3, 0x3

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 986
    new-instance v2, Landroid/graphics/Point;

    const/4 v3, 0x4

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 987
    new-instance v2, Landroid/graphics/Point;

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 989
    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v30

    .line 990
    .local v30, "sourceSizeIndex":I
    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v33

    .line 992
    .local v33, "targetSizeIndex":I
    const-string v2, "GridSizeMigrationTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[migrateGridIfNeeded] sourceSizeIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", targetSizeIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    const/4 v2, -0x1

    move/from16 v0, v30

    if-le v0, v2, :cond_5

    const/4 v2, -0x1

    move/from16 v0, v33

    if-gt v0, v2, :cond_6

    .line 996
    :cond_5
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to migrate grid size from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1041
    .end local v5    # "validPackages":Ljava/util/HashSet;
    .end local v18    # "gridSizeSteps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    .end local v29    # "sourceSize":Landroid/graphics/Point;
    .end local v30    # "sourceSizeIndex":I
    .end local v31    # "srcHotseatSize":Landroid/graphics/Point;
    .end local v32    # "targetSize":Landroid/graphics/Point;
    .end local v33    # "targetSizeIndex":I
    :catchall_0
    move-exception v2

    const-string v3, "GridSizeMigrationTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Workspace migration completed in "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1042
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v10, v10, v24

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "ms"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1041
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    invoke-interface/range {v27 .. v27}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "migration_src_workspace_size"

    .line 1046
    move-object/from16 v0, v19

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "migration_src_hotseat_size"

    .line 1047
    move-object/from16 v0, v21

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "migration_widget_min_size"

    .line 1048
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1049
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    throw v2

    .line 1001
    .restart local v5    # "validPackages":Ljava/util/HashSet;
    .restart local v18    # "gridSizeSteps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    .restart local v29    # "sourceSize":Landroid/graphics/Point;
    .restart local v30    # "sourceSizeIndex":I
    .restart local v31    # "srcHotseatSize":Landroid/graphics/Point;
    .restart local v32    # "targetSize":Landroid/graphics/Point;
    .restart local v33    # "targetSizeIndex":I
    :cond_6
    :try_start_3
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1002
    .local v6, "widgetMinSize":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Point;>;"
    const-string v2, "migration_widget_min_size"

    .line 1003
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    .line 1002
    move-object/from16 v0, v27

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 1004
    .local v28, "s":Ljava/lang/String;
    const-string v3, "#"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .line 1005
    .local v26, "parts":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v26, v3

    const/4 v4, 0x1

    aget-object v4, v26, v4

    invoke-static {v4}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->parsePoint(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1009
    .end local v26    # "parts":[Ljava/lang/String;
    .end local v28    # "s":Ljava/lang/String;
    :cond_7
    :goto_3
    move/from16 v0, v33

    move/from16 v1, v30

    if-ge v0, v1, :cond_9

    .line 1012
    add-int/lit8 v2, v30, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Point;

    .line 1013
    .local v8, "stepTargetSize":Landroid/graphics/Point;
    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Point;

    .line 1015
    .local v7, "stepSourceSize":Landroid/graphics/Point;
    new-instance v2, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;

    .line 1016
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/LauncherAppState;->getInvariantDeviceProfile()Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-result-object v4

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;-><init>(Landroid/content/Context;Lnet/oneplus/h2launcher/InvariantDeviceProfile;Ljava/util/HashSet;Ljava/util/HashMap;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 1018
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->migrateWorkspace()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1019
    const/16 v16, 0x1

    .line 1021
    :cond_8
    add-int/lit8 v30, v30, -0x1

    .line 1022
    goto :goto_3

    .line 1025
    .end local v6    # "widgetMinSize":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Point;>;"
    .end local v7    # "stepSourceSize":Landroid/graphics/Point;
    .end local v8    # "stepTargetSize":Landroid/graphics/Point;
    .end local v18    # "gridSizeSteps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    .end local v30    # "sourceSizeIndex":I
    .end local v33    # "targetSizeIndex":I
    :cond_9
    if-eqz v16, :cond_a

    .line 1027
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lnet/oneplus/h2launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1029
    .local v15, "c":Landroid/database/Cursor;
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    .line 1030
    .local v20, "hasData":Z
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1031
    if-nez v20, :cond_a

    .line 1032
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Removed every thing during grid resize"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1036
    .end local v15    # "c":Landroid/database/Cursor;
    .end local v20    # "hasData":Z
    :cond_a
    const/4 v2, 0x1

    .line 1041
    const-string v3, "GridSizeMigrationTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Workspace migration completed in "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1042
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v10, v10, v24

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "ms"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1041
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    invoke-interface/range {v27 .. v27}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "migration_src_workspace_size"

    .line 1046
    move-object/from16 v0, v19

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "migration_src_hotseat_size"

    .line 1047
    move-object/from16 v0, v21

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "migration_widget_min_size"

    .line 1048
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1049
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method

.method private migrateScreen(J)V
    .locals 25
    .param p1, "screenId"    # J

    .prologue
    .line 272
    invoke-direct/range {p0 .. p2}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->loadWorkspaceEntries(J)Ljava/util/ArrayList;

    move-result-object v8

    .line 274
    .local v8, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;>;"
    const v16, 0x7fffffff

    .line 275
    .local v16, "removedCol":I
    const v17, 0x7fffffff

    .line 282
    .local v17, "removedRow":I
    const v15, 0x7f7fffff    # Float.MAX_VALUE

    .line 283
    .local v15, "removeWt":F
    const v10, 0x7f7fffff    # Float.MAX_VALUE

    .line 284
    .local v10, "moveWt":F
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v13, v0, [F

    .line 285
    .local v13, "outLoss":[F
    const/4 v5, 0x0

    .line 288
    .local v5, "finalItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;>;"
    const/16 v18, 0x0

    .local v18, "x":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mSrcX:I

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    .line 289
    const/16 v19, 0x0

    .local v19, "y":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mSrcY:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    .line 292
    invoke-static {v8}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->deepCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v13}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->tryRemove(IILjava/util/ArrayList;[F)Ljava/util/ArrayList;

    move-result-object v9

    .line 294
    .local v9, "itemsOnScreen":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;>;"
    const/16 v20, 0x0

    aget v20, v13, v20

    cmpg-float v20, v20, v15

    if-ltz v20, :cond_0

    const/16 v20, 0x0

    aget v20, v13, v20

    cmpl-float v20, v20, v15

    if-nez v20, :cond_3

    const/16 v20, 0x1

    aget v20, v13, v20

    cmpg-float v20, v20, v10

    if-gez v20, :cond_3

    .line 295
    :cond_0
    const/16 v20, 0x0

    aget v15, v13, v20

    .line 296
    const/16 v20, 0x1

    aget v10, v13, v20

    .line 297
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mShouldRemoveX:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    move/from16 v16, v18

    .line 298
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mShouldRemoveY:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move/from16 v17, v19

    .line 299
    :cond_2
    move-object v5, v9

    .line 303
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mShouldRemoveY:Z

    move/from16 v20, v0

    if-nez v20, :cond_6

    .line 308
    .end local v9    # "itemsOnScreen":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mShouldRemoveX:Z

    move/from16 v20, v0

    if-nez v20, :cond_7

    .line 314
    .end local v19    # "y":I
    :cond_5
    const-string v20, "GridSizeMigrationTask"

    const-string v21, "Removing row %d, column %d on screen %d"

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    .line 315
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    .line 314
    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v7, Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-direct {v7}, Lnet/oneplus/h2launcher/util/LongArrayMap;-><init>()V

    .line 319
    .local v7, "itemMap":Lnet/oneplus/h2launcher/util/LongArrayMap;, "Lnet/oneplus/h2launcher/util/LongArrayMap<Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;>;"
    invoke-static {v8}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->deepCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;

    .line 320
    .local v4, "e":Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;
    iget-wide v0, v4, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->id:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v7, v0, v1, v4}, Lnet/oneplus/h2launcher/util/LongArrayMap;->put(JLjava/lang/Object;)V

    goto :goto_2

    .line 289
    .end local v4    # "e":Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;
    .end local v7    # "itemMap":Lnet/oneplus/h2launcher/util/LongArrayMap;, "Lnet/oneplus/h2launcher/util/LongArrayMap<Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;>;"
    .restart local v9    # "itemsOnScreen":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;>;"
    .restart local v19    # "y":I
    :cond_6
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .line 288
    .end local v9    # "itemsOnScreen":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;>;"
    :cond_7
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 323
    .end local v19    # "y":I
    .restart local v7    # "itemMap":Lnet/oneplus/h2launcher/util/LongArrayMap;, "Lnet/oneplus/h2launcher/util/LongArrayMap<Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;>;"
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_9
    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_a

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;

    .line 324
    .local v6, "item":Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;
    iget-wide v0, v6, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->id:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v7, v0, v1}, Lnet/oneplus/h2launcher/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;

    .line 325
    .local v12, "org":Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;
    iget-wide v0, v6, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->id:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v7, v0, v1}, Lnet/oneplus/h2launcher/util/LongArrayMap;->remove(J)V

    .line 328
    invoke-virtual {v6, v12}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->columnsSame(Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;)Z

    move-result v21

    if-nez v21, :cond_9

    .line 329
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->update(Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;)V

    goto :goto_3

    .line 334
    .end local v6    # "item":Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;
    .end local v12    # "org":Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;
    :cond_a
    invoke-virtual {v7}, Lnet/oneplus/h2launcher/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_b

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;

    .line 335
    .restart local v6    # "item":Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 338
    .end local v6    # "item":Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_e

    const/16 v20, 0x0

    cmpl-float v20, v15, v20

    if-nez v20, :cond_e

    .line 340
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mTrgX:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mTrgY:I

    move/from16 v21, v0

    filled-new-array/range {v20 .. v21}, [I

    move-result-object v20

    sget-object v21, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[Z

    .line 341
    .local v11, "occupied":[[Z
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_c

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;

    .line 342
    .restart local v6    # "item":Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v11, v6, v1}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->markCells([[ZLnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;Z)V

    goto :goto_5

    .line 345
    .end local v6    # "item":Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;
    :cond_c
    new-instance v14, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$OptimalPlacementSolution;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    .line 346
    invoke-static/range {v20 .. v20}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->deepCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v14, v0, v11, v1, v2}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$OptimalPlacementSolution;-><init>(Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;[[ZLjava/util/ArrayList;Z)V

    .line 347
    .local v14, "placement":Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$OptimalPlacementSolution;
    invoke-virtual {v14}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$OptimalPlacementSolution;->find()V

    .line 348
    iget v0, v14, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$OptimalPlacementSolution;->lowestWeightLoss:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-nez v20, :cond_e

    .line 351
    iget-object v0, v14, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$OptimalPlacementSolution;->finalPlacedItems:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_6
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_d

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;

    .line 352
    .restart local v6    # "item":Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;
    move-wide/from16 v0, p1

    iput-wide v0, v6, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->screenId:J

    .line 353
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->update(Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;)V

    goto :goto_6

    .line 356
    .end local v6    # "item":Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 359
    .end local v11    # "occupied":[[Z
    .end local v14    # "placement":Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$OptimalPlacementSolution;
    :cond_e
    return-void
.end method

.method private static parsePoint(Ljava/lang/String;)Landroid/graphics/Point;
    .locals 4
    .param p0, "point"    # Ljava/lang/String;

    .prologue
    .line 893
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 894
    .local v0, "split":[Ljava/lang/String;
    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method private tryRemove(IILjava/util/ArrayList;[F)Ljava/util/ArrayList;
    .locals 9
    .param p1, "col"    # I
    .param p2, "row"    # I
    .param p4, "outLoss"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;",
            ">;[F)",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .local p3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;>;"
    const v5, 0x7fffffff

    const/4 v8, 0x1

    .line 380
    iget v6, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mTrgX:I

    iget v7, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mTrgY:I

    filled-new-array {v6, v7}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Z

    .line 382
    .local v2, "occupied":[[Z
    iget-boolean v6, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mShouldRemoveX:Z

    if-eqz v6, :cond_4

    .line 383
    :goto_0
    iget-boolean v6, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mShouldRemoveY:Z

    if-eqz v6, :cond_5

    .line 385
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .local v0, "finalItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v4, "removedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;

    .line 389
    .local v1, "item":Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;
    iget v6, v1, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->cellX:I

    if-gt v6, p1, :cond_1

    iget v6, v1, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->spanX:I

    iget v7, v1, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->cellX:I

    add-int/2addr v6, v7

    if-gt v6, p1, :cond_2

    :cond_1
    iget v6, v1, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->cellY:I

    if-gt v6, p2, :cond_6

    iget v6, v1, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->spanY:I

    iget v7, v1, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->cellY:I

    add-int/2addr v6, v7

    if-le v6, p2, :cond_6

    .line 391
    :cond_2
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    iget v6, v1, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->cellX:I

    if-lt v6, p1, :cond_3

    iget v6, v1, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->cellX:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v1, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->cellX:I

    .line 393
    :cond_3
    iget v6, v1, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->cellY:I

    if-lt v6, p2, :cond_0

    iget v6, v1, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->cellY:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v1, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->cellY:I

    goto :goto_2

    .end local v0    # "finalItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;>;"
    .end local v1    # "item":Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;
    .end local v4    # "removedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;>;"
    :cond_4
    move p1, v5

    .line 382
    goto :goto_0

    :cond_5
    move p2, v5

    .line 383
    goto :goto_1

    .line 395
    .restart local v0    # "finalItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;>;"
    .restart local v1    # "item":Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;
    .restart local v4    # "removedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;>;"
    :cond_6
    iget v6, v1, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->cellX:I

    if-le v6, p1, :cond_7

    iget v6, v1, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->cellX:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v1, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->cellX:I

    .line 396
    :cond_7
    iget v6, v1, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->cellY:I

    if-le v6, p2, :cond_8

    iget v6, v1, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->cellY:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v1, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->cellY:I

    .line 397
    :cond_8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    invoke-direct {p0, v2, v1, v8}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->markCells([[ZLnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;Z)V

    goto :goto_2

    .line 402
    .end local v1    # "item":Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;
    :cond_9
    new-instance v3, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$OptimalPlacementSolution;

    invoke-direct {v3, p0, v2, v4}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$OptimalPlacementSolution;-><init>(Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;[[ZLjava/util/ArrayList;)V

    .line 403
    .local v3, "placement":Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$OptimalPlacementSolution;
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$OptimalPlacementSolution;->find()V

    .line 404
    iget-object v5, v3, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$OptimalPlacementSolution;->finalPlacedItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 405
    const/4 v5, 0x0

    iget v6, v3, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$OptimalPlacementSolution;->lowestWeightLoss:F

    aput v6, p4, v5

    .line 406
    iget v5, v3, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$OptimalPlacementSolution;->lowestMoveCost:F

    aput v5, p4, v8

    .line 407
    return-object v0
.end method

.method private update(Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;)V
    .locals 4
    .param p1, "item"    # Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;

    .prologue
    .line 365
    iget-object v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mTempValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 366
    iget-object v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mTempValues:Landroid/content/ContentValues;

    invoke-virtual {p1, v0}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->addToContentValues(Landroid/content/ContentValues;)V

    .line 367
    iget-object v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mUpdateOperations:Ljava/util/ArrayList;

    iget-wide v2, p1, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->id:J

    .line 368
    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mTempValues:Landroid/content/ContentValues;

    .line 369
    invoke-virtual {v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 367
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    return-void
.end method

.method private verifyIntent(Ljava/lang/String;)V
    .locals 2
    .param p1, "intentStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 817
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 818
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 819
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->verifyPackage(Ljava/lang/String;)V

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 820
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 822
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->verifyPackage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private verifyPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 830
    iget-object v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mValidPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 831
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Package not available"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 833
    :cond_0
    return-void
.end method


# virtual methods
.method protected migrateHotseat()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 157
    invoke-direct {p0}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->loadHotseatEntries()Ljava/util/ArrayList;

    move-result-object v1

    .line 159
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;>;"
    iget v5, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mDestHotseatSize:I

    add-int/lit8 v3, v5, -0x1

    .line 161
    .local v3, "requiredCount":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v3, :cond_2

    .line 163
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;

    .line 166
    .local v4, "toRemove":Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;

    .line 167
    .local v0, "entry":Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;
    iget v6, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->weight:F

    iget v7, v4, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->weight:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    .line 168
    move-object v4, v0

    goto :goto_1

    .line 172
    .end local v0    # "entry":Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;
    :cond_1
    iget-object v5, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mEntryToRemove:Ljava/util/ArrayList;

    iget-wide v6, v4, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 177
    .end local v4    # "toRemove":Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;
    :cond_2
    const/4 v2, 0x0

    .line 178
    .local v2, "newScreenId":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;

    .line 179
    .restart local v0    # "entry":Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;
    iget-wide v6, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->screenId:J

    int-to-long v8, v2

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 180
    int-to-long v6, v2

    iput-wide v6, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->screenId:J

    .line 184
    iput v2, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->cellX:I

    .line 185
    const/4 v6, 0x0

    iput v6, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->cellY:I

    .line 187
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->update(Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;)V

    .line 190
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 191
    iget v6, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mDestAllAppsRank:I

    if-ne v2, v6, :cond_3

    .line 192
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 196
    .end local v0    # "entry":Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;
    :cond_5
    invoke-direct {p0}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->applyOperations()Z

    move-result v5

    return v5
.end method

.method protected migrateWorkspace()Z
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lnet/oneplus/h2launcher/LauncherModel;->loadWorkspaceScreensDb(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    .line 204
    .local v4, "allScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 205
    new-instance v17, Ljava/lang/Exception;

    const-string v18, "Unable to get workspace screens! Might be layout switch case."

    invoke-direct/range {v17 .. v18}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v17

    .line 208
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 210
    .local v14, "screenId":J
    const-string v17, "GridSizeMigrationTask"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Migrating "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->migrateScreen(J)V

    goto :goto_0

    .line 215
    .end local v14    # "screenId":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_6

    .line 216
    new-instance v9, Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-direct {v9}, Lnet/oneplus/h2launcher/util/LongArrayMap;-><init>()V

    .line 217
    .local v9, "itemMap":Lnet/oneplus/h2launcher/util/LongArrayMap;, "Lnet/oneplus/h2launcher/util/LongArrayMap<Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;

    .line 218
    .local v6, "e":Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;
    iget-wide v0, v6, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->id:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v9, v0, v1, v6}, Lnet/oneplus/h2launcher/util/LongArrayMap;->put(JLjava/lang/Object;)V

    goto :goto_1

    .line 227
    .end local v6    # "e":Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;
    :cond_2
    new-instance v12, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$OptimalPlacementSolution;

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mTrgX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mTrgY:I

    move/from16 v18, v0

    filled-new-array/range {v17 .. v18}, [I

    move-result-object v17

    sget-object v18, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [[Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    .line 228
    invoke-static/range {v18 .. v18}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->deepCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v12, v0, v1, v2, v3}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$OptimalPlacementSolution;-><init>(Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;[[ZLjava/util/ArrayList;Z)V

    .line 229
    .local v12, "placement":Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$OptimalPlacementSolution;
    invoke-virtual {v12}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$OptimalPlacementSolution;->find()V

    .line 230
    iget-object v0, v12, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$OptimalPlacementSolution;->finalPlacedItems:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_4

    .line 231
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncherProvider()Lnet/oneplus/h2launcher/LauncherProvider;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lnet/oneplus/h2launcher/LauncherProvider;->generateNewScreenId()J

    move-result-wide v10

    .line 232
    .local v10, "newScreenId":J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v0, v12, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$OptimalPlacementSolution;->finalPlacedItems:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;

    .line 234
    .local v8, "item":Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    iget-wide v0, v8, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->id:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v9, v0, v1}, Lnet/oneplus/h2launcher/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 235
    new-instance v17, Ljava/lang/Exception;

    const-string v18, "Unable to find matching items"

    invoke-direct/range {v17 .. v18}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v17

    .line 237
    :cond_3
    iput-wide v10, v8, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->screenId:J

    .line 238
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->update(Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;)V

    goto :goto_2

    .line 241
    .end local v8    # "item":Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;
    .end local v10    # "newScreenId":J
    :cond_4
    new-instance v17, Ljava/lang/Exception;

    const-string v18, "None of the items can be placed on an empty screen"

    invoke-direct/range {v17 .. v18}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v17

    .line 244
    .restart local v10    # "newScreenId":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 247
    sget-object v13, Lnet/oneplus/h2launcher/LauncherSettings$WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    .line 248
    .local v13, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mUpdateOperations:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 250
    .local v5, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, v5, :cond_6

    .line 251
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 252
    .local v16, "v":Landroid/content/ContentValues;
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 253
    .restart local v14    # "screenId":J
    const-string v17, "_id"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 254
    const-string v17, "screenRank"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->mUpdateOperations:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 258
    .end local v5    # "count":I
    .end local v7    # "i":I
    .end local v9    # "itemMap":Lnet/oneplus/h2launcher/util/LongArrayMap;, "Lnet/oneplus/h2launcher/util/LongArrayMap<Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;>;"
    .end local v10    # "newScreenId":J
    .end local v12    # "placement":Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$OptimalPlacementSolution;
    .end local v13    # "uri":Landroid/net/Uri;
    .end local v14    # "screenId":J
    .end local v16    # "v":Landroid/content/ContentValues;
    :cond_6
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->applyOperations()Z

    move-result v17

    return v17
.end method

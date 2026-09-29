.class public Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;
.super Ljava/lang/Object;
.source "MigrateFromRestoreTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;,
        Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static ENABLED:Z = false

.field private static final KEY_MIGRATION_SOURCE_SIZE:Ljava/lang/String; = "migration_restore_src_size"

.field private static final KEY_MIGRATION_WIDGET_MINSIZE:Ljava/lang/String; = "migration_widget_min_size"

.field private static final TAG:Ljava/lang/String; = "MigrateFromRestoreTask"

.field private static final WT_APPLICATION:F = 0.8f

.field private static final WT_FOLDER_FACTOR:F = 0.5f

.field private static final WT_SHORTCUT:F = 1.0f

.field private static final WT_WIDGET_FACTOR:F = 0.6f

.field private static final WT_WIDGET_MIN:F = 2.0f


# instance fields
.field private mCarryOver:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field public mEntryToRemove:Ljava/util/ArrayList;
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

.field private final mSrcX:I

.field private final mSrcY:I

.field private final mTempValues:Landroid/content/ContentValues;

.field final mTrgX:I

.field final mTrgY:I

.field private mUpdateOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private mValidPackages:Ljava/util/HashSet;
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
    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->ENABLED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    iput-object v4, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mTempValues:Landroid/content/ContentValues;

    .line 71
    iput-object p1, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mContext:Landroid/content/Context;

    .line 73
    invoke-static {p1}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 74
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "migration_restore_src_size"

    const-string v7, ""

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->parsePoint(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v3

    .line 75
    .local v3, "sourceSize":Landroid/graphics/Point;
    iget v4, v3, Landroid/graphics/Point;->x:I

    iput v4, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mSrcX:I

    .line 76
    iget v4, v3, Landroid/graphics/Point;->y:I

    iput v4, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mSrcY:I

    .line 78
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mWidgetMinSize:Ljava/util/HashMap;

    .line 79
    const-string v4, "migration_widget_min_size"

    .line 80
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v7

    .line 79
    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 81
    .local v2, "s":Ljava/lang/String;
    const-string v7, "#"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "parts":[Ljava/lang/String;
    iget-object v7, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mWidgetMinSize:Ljava/util/HashMap;

    aget-object v8, v0, v6

    aget-object v9, v0, v5

    invoke-static {v9}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->parsePoint(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 85
    .end local v0    # "parts":[Ljava/lang/String;
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/LauncherAppState;->getInvariantDeviceProfile()Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-result-object v4

    iput-object v4, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mIdp:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    .line 86
    iget-object v4, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mIdp:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    iget v4, v4, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numColumns:I

    iput v4, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mTrgX:I

    .line 87
    iget-object v4, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mIdp:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    iget v4, v4, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numRows:I

    iput v4, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mTrgY:I

    .line 88
    iget v4, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mTrgX:I

    iget v7, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mSrcX:I

    if-ge v4, v7, :cond_1

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mShouldRemoveX:Z

    .line 89
    iget v4, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mTrgY:I

    iget v7, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mSrcY:I

    if-ge v4, v7, :cond_2

    :goto_2
    iput-boolean v5, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mShouldRemoveY:Z

    .line 90
    return-void

    :cond_1
    move v4, v6

    .line 88
    goto :goto_1

    :cond_2
    move v5, v6

    .line 89
    goto :goto_2
.end method

.method public static clearFlags(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 758
    invoke-static {p0}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "migration_restore_src_size"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "migration_widget_min_size"

    .line 759
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 760
    return-void
.end method

.method static deepCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 733
    .local p0, "src":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 734
    .local v0, "dup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;

    .line 735
    .local v1, "e":Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->copy()Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 737
    .end local v1    # "e":Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;
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

    .line 644
    iget-object v0, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mContext:Landroid/content/Context;

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

    .line 648
    .local v7, "c":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 649
    .local v9, "total":I
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->verifyIntent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 653
    :catch_0
    move-exception v8

    .line 654
    .local v8, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mEntryToRemove:Ljava/util/ArrayList;

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 658
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_0
    return v9
.end method

.method public static markForMigration(Landroid/content/Context;IILjava/util/HashSet;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "srcX"    # I
    .param p2, "srcY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 747
    .local p3, "widgets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {p0}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "migration_restore_src_size"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 748
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "migration_widget_min_size"

    .line 749
    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 750
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 751
    return-void
.end method

.method private migrateScreen(J)V
    .locals 25
    .param p1, "screenId"    # J

    .prologue
    .line 190
    invoke-virtual/range {p0 .. p2}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->loadEntries(J)Ljava/util/ArrayList;

    move-result-object v8

    .line 192
    .local v8, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;>;"
    const v16, 0x7fffffff

    .line 193
    .local v16, "removedCol":I
    const v17, 0x7fffffff

    .line 200
    .local v17, "removedRow":I
    const v15, 0x7f7fffff    # Float.MAX_VALUE

    .line 201
    .local v15, "removeWt":F
    const v10, 0x7f7fffff    # Float.MAX_VALUE

    .line 202
    .local v10, "moveWt":F
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v13, v0, [F

    .line 203
    .local v13, "outLoss":[F
    const/4 v5, 0x0

    .line 206
    .local v5, "finalItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;>;"
    const/16 v18, 0x0

    .local v18, "x":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mSrcX:I

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    .line 207
    const/16 v19, 0x0

    .local v19, "y":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mSrcY:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    .line 210
    invoke-static {v8}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->deepCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v13}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->tryRemove(IILjava/util/ArrayList;[F)Ljava/util/ArrayList;

    move-result-object v9

    .line 212
    .local v9, "itemsOnScreen":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;>;"
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

    .line 213
    :cond_0
    const/16 v20, 0x0

    aget v15, v13, v20

    .line 214
    const/16 v20, 0x1

    aget v10, v13, v20

    .line 215
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mShouldRemoveX:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    move/from16 v16, v18

    .line 216
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mShouldRemoveY:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move/from16 v17, v19

    .line 217
    :cond_2
    move-object v5, v9

    .line 221
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mShouldRemoveY:Z

    move/from16 v20, v0

    if-nez v20, :cond_6

    .line 226
    .end local v9    # "itemsOnScreen":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mShouldRemoveX:Z

    move/from16 v20, v0

    if-nez v20, :cond_7

    .line 232
    .end local v19    # "y":I
    :cond_5
    const-string v20, "MigrateFromRestoreTask"

    const-string v21, "Removing row %d, column %d on screen %d"

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    .line 233
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

    .line 232
    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v7, Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-direct {v7}, Lnet/oneplus/h2launcher/util/LongArrayMap;-><init>()V

    .line 237
    .local v7, "itemMap":Lnet/oneplus/h2launcher/util/LongArrayMap;, "Lnet/oneplus/h2launcher/util/LongArrayMap<Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;>;"
    invoke-static {v8}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->deepCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;

    .line 238
    .local v4, "e":Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;
    iget-wide v0, v4, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->id:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v7, v0, v1, v4}, Lnet/oneplus/h2launcher/util/LongArrayMap;->put(JLjava/lang/Object;)V

    goto :goto_2

    .line 207
    .end local v4    # "e":Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;
    .end local v7    # "itemMap":Lnet/oneplus/h2launcher/util/LongArrayMap;, "Lnet/oneplus/h2launcher/util/LongArrayMap<Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;>;"
    .restart local v9    # "itemsOnScreen":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;>;"
    .restart local v19    # "y":I
    :cond_6
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .line 206
    .end local v9    # "itemsOnScreen":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;>;"
    :cond_7
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 241
    .end local v19    # "y":I
    .restart local v7    # "itemMap":Lnet/oneplus/h2launcher/util/LongArrayMap;, "Lnet/oneplus/h2launcher/util/LongArrayMap<Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;>;"
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

    check-cast v6, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;

    .line 242
    .local v6, "item":Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;
    iget-wide v0, v6, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->id:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v7, v0, v1}, Lnet/oneplus/h2launcher/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;

    .line 243
    .local v12, "org":Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;
    iget-wide v0, v6, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->id:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v7, v0, v1}, Lnet/oneplus/h2launcher/util/LongArrayMap;->remove(J)V

    .line 246
    invoke-virtual {v6, v12}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->columnsSame(Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;)Z

    move-result v21

    if-nez v21, :cond_9

    .line 247
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->update(Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;)V

    goto :goto_3

    .line 252
    .end local v6    # "item":Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;
    .end local v12    # "org":Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;
    :cond_a
    invoke-virtual {v7}, Lnet/oneplus/h2launcher/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_b

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;

    .line 253
    .restart local v6    # "item":Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mCarryOver:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 256
    .end local v6    # "item":Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mCarryOver:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_e

    const/16 v20, 0x0

    cmpl-float v20, v15, v20

    if-nez v20, :cond_e

    .line 258
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mTrgX:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mTrgY:I

    move/from16 v21, v0

    filled-new-array/range {v20 .. v21}, [I

    move-result-object v20

    sget-object v21, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[Z

    .line 259
    .local v11, "occupied":[[Z
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_c

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;

    .line 260
    .restart local v6    # "item":Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v11, v6, v1}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->markCells([[ZLnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;Z)V

    goto :goto_5

    .line 263
    .end local v6    # "item":Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;
    :cond_c
    new-instance v14, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mCarryOver:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    .line 264
    invoke-static/range {v20 .. v20}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->deepCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v14, v0, v11, v1, v2}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;-><init>(Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;[[ZLjava/util/ArrayList;Z)V

    .line 265
    .local v14, "placement":Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;
    invoke-virtual {v14}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->find()V

    .line 266
    iget v0, v14, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->lowestWeightLoss:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-nez v20, :cond_e

    .line 269
    iget-object v0, v14, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->finalPlacedItems:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_6
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_d

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;

    .line 270
    .restart local v6    # "item":Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;
    move-wide/from16 v0, p1

    iput-wide v0, v6, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->screenId:J

    .line 271
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->update(Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;)V

    goto :goto_6

    .line 274
    .end local v6    # "item":Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mCarryOver:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 277
    .end local v11    # "occupied":[[Z
    .end local v14    # "placement":Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;
    :cond_e
    return-void
.end method

.method private static parsePoint(Ljava/lang/String;)Landroid/graphics/Point;
    .locals 4
    .param p0, "point"    # Ljava/lang/String;

    .prologue
    .line 741
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 742
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

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 763
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static shouldRunTask(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 754
    invoke-static {p0}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "migration_restore_src_size"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
            "Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;",
            ">;[F)",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .local p3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;>;"
    const v5, 0x7fffffff

    const/4 v8, 0x1

    .line 298
    iget v6, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mTrgX:I

    iget v7, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mTrgY:I

    filled-new-array {v6, v7}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Z

    .line 300
    .local v2, "occupied":[[Z
    iget-boolean v6, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mShouldRemoveX:Z

    if-eqz v6, :cond_4

    .line 301
    :goto_0
    iget-boolean v6, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mShouldRemoveY:Z

    if-eqz v6, :cond_5

    .line 303
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v0, "finalItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v4, "removedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;

    .line 307
    .local v1, "item":Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;
    iget v6, v1, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellX:I

    if-gt v6, p1, :cond_1

    iget v6, v1, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->spanX:I

    iget v7, v1, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellX:I

    add-int/2addr v6, v7

    if-gt v6, p1, :cond_2

    :cond_1
    iget v6, v1, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellY:I

    if-gt v6, p2, :cond_6

    iget v6, v1, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->spanY:I

    iget v7, v1, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellY:I

    add-int/2addr v6, v7

    if-le v6, p2, :cond_6

    .line 309
    :cond_2
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    iget v6, v1, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellX:I

    if-lt v6, p1, :cond_3

    iget v6, v1, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellX:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v1, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellX:I

    .line 311
    :cond_3
    iget v6, v1, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellY:I

    if-lt v6, p2, :cond_0

    iget v6, v1, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellY:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v1, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellY:I

    goto :goto_2

    .end local v0    # "finalItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;>;"
    .end local v1    # "item":Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;
    .end local v4    # "removedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;>;"
    :cond_4
    move p1, v5

    .line 300
    goto :goto_0

    :cond_5
    move p2, v5

    .line 301
    goto :goto_1

    .line 313
    .restart local v0    # "finalItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;>;"
    .restart local v1    # "item":Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;
    .restart local v4    # "removedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;>;"
    :cond_6
    iget v6, v1, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellX:I

    if-le v6, p1, :cond_7

    iget v6, v1, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellX:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v1, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellX:I

    .line 314
    :cond_7
    iget v6, v1, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellY:I

    if-le v6, p2, :cond_8

    iget v6, v1, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellY:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v1, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellY:I

    .line 315
    :cond_8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    invoke-virtual {p0, v2, v1, v8}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->markCells([[ZLnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;Z)V

    goto :goto_2

    .line 320
    .end local v1    # "item":Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;
    :cond_9
    new-instance v3, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;

    invoke-direct {v3, p0, v2, v4}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;-><init>(Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;[[ZLjava/util/ArrayList;)V

    .line 321
    .local v3, "placement":Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->find()V

    .line 322
    iget-object v5, v3, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->finalPlacedItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 323
    const/4 v5, 0x0

    iget v6, v3, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->lowestWeightLoss:F

    aput v6, p4, v5

    .line 324
    iget v5, v3, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->lowestMoveCost:F

    aput v5, p4, v8

    .line 325
    return-object v0
.end method

.method private update(Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;)V
    .locals 4
    .param p1, "item"    # Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;

    .prologue
    .line 283
    iget-object v0, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mTempValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 284
    iget-object v0, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mTempValues:Landroid/content/ContentValues;

    invoke-virtual {p1, v0}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->addToContentValues(Landroid/content/ContentValues;)V

    .line 285
    iget-object v0, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mUpdateOperations:Ljava/util/ArrayList;

    iget-wide v2, p1, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->id:J

    .line 286
    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mTempValues:Landroid/content/ContentValues;

    .line 287
    invoke-virtual {v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 285
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
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
    .line 665
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 666
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 667
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->verifyPackage(Ljava/lang/String;)V

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 668
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 670
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->verifyPackage(Ljava/lang/String;)V

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
    .line 678
    iget-object v0, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mValidPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 679
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Package not available"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 681
    :cond_0
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 93
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mEntryToRemove:Ljava/util/ArrayList;

    .line 94
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mCarryOver:Ljava/util/ArrayList;

    .line 95
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mUpdateOperations:Ljava/util/ArrayList;

    .line 102
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mValidPackages:Ljava/util/HashSet;

    .line 103
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageInfo;

    .line 104
    .local v14, "info":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mValidPackages:Ljava/util/HashSet;

    iget-object v6, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    .end local v14    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mValidPackages:Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lnet/oneplus/h2launcher/compat/PackageInstallerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/PackageInstallerCompat;

    move-result-object v5

    .line 107
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/compat/PackageInstallerCompat;->updateAndGetActiveSessionCache()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 106
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 109
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lnet/oneplus/h2launcher/LauncherModel;->loadWorkspaceScreensDb(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v10

    .line 110
    .local v10, "allScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 111
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Unable to get workspace screens"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 114
    :cond_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 116
    .local v20, "screenId":J
    const-string v4, "MigrateFromRestoreTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Migrating "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->migrateScreen(J)V

    goto :goto_1

    .line 121
    .end local v20    # "screenId":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mCarryOver:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 122
    new-instance v16, Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-direct/range {v16 .. v16}, Lnet/oneplus/h2launcher/util/LongArrayMap;-><init>()V

    .line 123
    .local v16, "itemMap":Lnet/oneplus/h2launcher/util/LongArrayMap;, "Lnet/oneplus/h2launcher/util/LongArrayMap<Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mCarryOver:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;

    .line 124
    .local v12, "e":Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;
    iget-wide v6, v12, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->id:J

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7, v12}, Lnet/oneplus/h2launcher/util/LongArrayMap;->put(JLjava/lang/Object;)V

    goto :goto_2

    .line 133
    .end local v12    # "e":Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;
    :cond_3
    new-instance v17, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;

    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mTrgX:I

    move-object/from16 v0, p0

    iget v5, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mTrgY:I

    filled-new-array {v4, v5}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mCarryOver:Ljava/util/ArrayList;

    .line 134
    invoke-static {v5}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->deepCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v5, v6}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;-><init>(Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;[[ZLjava/util/ArrayList;Z)V

    .line 135
    .local v17, "placement":Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;
    invoke-virtual/range {v17 .. v17}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->find()V

    .line 136
    move-object/from16 v0, v17

    iget-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->finalPlacedItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 137
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncherProvider()Lnet/oneplus/h2launcher/LauncherProvider;

    move-result-object v4

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/LauncherProvider;->generateNewScreenId()J

    move-result-wide v18

    .line 138
    .local v18, "newScreenId":J
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    move-object/from16 v0, v17

    iget-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;->finalPlacedItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;

    .line 140
    .local v15, "item":Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mCarryOver:Ljava/util/ArrayList;

    iget-wide v6, v15, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->id:J

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Lnet/oneplus/h2launcher/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 141
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Unable to find matching items"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 143
    :cond_4
    move-wide/from16 v0, v18

    iput-wide v0, v15, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->screenId:J

    .line 144
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->update(Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;)V

    goto :goto_3

    .line 147
    .end local v15    # "item":Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;
    .end local v18    # "newScreenId":J
    :cond_5
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "None of the items can be placed on an empty screen"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 150
    .restart local v18    # "newScreenId":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mCarryOver:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 153
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/LauncherAppState;->getModel()Lnet/oneplus/h2launcher/LauncherModel;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mContext:Landroid/content/Context;

    .line 154
    invoke-virtual {v4, v5, v10}, Lnet/oneplus/h2launcher/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 158
    .end local v16    # "itemMap":Lnet/oneplus/h2launcher/util/LongArrayMap;, "Lnet/oneplus/h2launcher/util/LongArrayMap<Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;>;"
    .end local v17    # "placement":Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$OptimalPlacementSolution;
    .end local v18    # "newScreenId":J
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lnet/oneplus/h2launcher/LauncherProvider;->AUTHORITY:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mUpdateOperations:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 160
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mEntryToRemove:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 162
    const-string v4, "MigrateFromRestoreTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing items: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mEntryToRemove:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lnet/oneplus/h2launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "_id"

    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mEntryToRemove:Ljava/util/ArrayList;

    .line 165
    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 164
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 170
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lnet/oneplus/h2launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 172
    .local v11, "c":Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    .line 173
    .local v13, "hasData":Z
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 174
    if-nez v13, :cond_9

    .line 175
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Removed every thing during grid resize"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 177
    :cond_9
    return-void
.end method

.method isVacant([[ZIIII)Z
    .locals 5
    .param p1, "occupied"    # [[Z
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    const/4 v2, 0x0

    .line 337
    add-int v3, p2, p4

    iget v4, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mTrgX:I

    if-le v3, v4, :cond_1

    .line 347
    :cond_0
    :goto_0
    return v2

    .line 338
    :cond_1
    add-int v3, p3, p5

    iget v4, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mTrgY:I

    if-gt v3, v4, :cond_0

    .line 340
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p4, :cond_3

    .line 341
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    if-ge v1, p5, :cond_2

    .line 342
    add-int v3, v0, p2

    aget-object v3, p1, v3

    add-int v4, v1, p3

    aget-boolean v3, v3, v4

    if-nez v3, :cond_0

    .line 341
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 340
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 347
    .end local v1    # "j":I
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public loadEntries(J)Ljava/util/ArrayList;
    .locals 27
    .param p1, "screen"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mContext:Landroid/content/Context;

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

    .line 561
    .local v9, "c":Landroid/database/Cursor;
    const-string v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 562
    .local v17, "indexId":I
    const-string v2, "itemType"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 563
    .local v19, "indexItemType":I
    const-string v2, "cellX"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 564
    .local v15, "indexCellX":I
    const-string v2, "cellY"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 565
    .local v16, "indexCellY":I
    const-string v2, "spanX"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 566
    .local v20, "indexSpanX":I
    const-string v2, "spanY"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 567
    .local v21, "indexSpanY":I
    const-string v2, "intent"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 568
    .local v18, "indexIntent":I
    const-string v2, "appWidgetProvider"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 570
    .local v14, "indexAppWidgetProvider":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 571
    .local v12, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;>;"
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 572
    new-instance v13, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;

    invoke-direct {v13}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;-><init>()V

    .line 573
    .local v13, "entry":Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;
    move/from16 v0, v17

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v13, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->id:J

    .line 574
    move/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v13, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->itemType:I

    .line 575
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v13, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellX:I

    .line 576
    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v13, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellY:I

    .line 577
    move/from16 v0, v20

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v13, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->spanX:I

    .line 578
    move/from16 v0, v21

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v13, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->spanY:I

    .line 579
    move-wide/from16 v0, p1

    iput-wide v0, v13, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->screenId:J

    .line 583
    :try_start_0
    iget v2, v13, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->itemType:I

    packed-switch v2, :pswitch_data_0

    .line 625
    :pswitch_0
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Invalid item type"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    :catch_0
    move-exception v11

    .line 629
    .local v11, "e":Ljava/lang/Exception;
    const-string v2, "MigrateFromRestoreTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v13, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 631
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mEntryToRemove:Ljava/util/ArrayList;

    iget-wide v4, v13, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 586
    .end local v11    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    move/from16 v0, v18

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->verifyIntent(Ljava/lang/String;)V

    .line 587
    iget v2, v13, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->itemType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    iput v2, v13, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->weight:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 635
    :cond_0
    :goto_2
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 587
    :cond_1
    const v2, 0x3f4ccccd    # 0.8f

    goto :goto_1

    .line 592
    :pswitch_2
    :try_start_2
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 593
    .local v23, "provider":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    .line 594
    .local v10, "cn":Landroid/content/ComponentName;
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->verifyPackage(Ljava/lang/String;)V

    .line 595
    const/high16 v2, 0x40000000    # 2.0f

    const v3, 0x3f19999a    # 0.6f

    iget v4, v13, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->spanX:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, v13, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->spanY:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v13, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->weight:F

    .line 599
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mContext:Landroid/content/Context;

    .line 600
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v3

    .line 599
    invoke-static {v2, v10, v3}, Lnet/oneplus/h2launcher/LauncherModel;->getProviderInfo(Landroid/content/Context;Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    move-result-object v22

    .line 601
    .local v22, "pInfo":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    if-nez v22, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mWidgetMinSize:Ljava/util/HashMap;

    .line 602
    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    move-object/from16 v24, v2

    .line 603
    .local v24, "spans":Landroid/graphics/Point;
    :goto_3
    if-eqz v24, :cond_6

    .line 604
    move-object/from16 v0, v24

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-lez v2, :cond_4

    move-object/from16 v0, v24

    iget v2, v0, Landroid/graphics/Point;->x:I

    :goto_4
    iput v2, v13, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->minSpanX:I

    .line 605
    move-object/from16 v0, v24

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-lez v2, :cond_5

    move-object/from16 v0, v24

    iget v2, v0, Landroid/graphics/Point;->y:I

    :goto_5
    iput v2, v13, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->minSpanY:I

    .line 611
    :goto_6
    iget v2, v13, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->minSpanX:I

    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mTrgX:I

    if-gt v2, v3, :cond_2

    iget v2, v13, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->minSpanY:I

    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mTrgY:I

    if-le v2, v3, :cond_0

    .line 612
    :cond_2
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Widget can\'t be resized down to fit the grid"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 602
    .end local v24    # "spans":Landroid/graphics/Point;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mIdp:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->getMinSpans(Lnet/oneplus/h2launcher/InvariantDeviceProfile;Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v24

    goto :goto_3

    .line 604
    .restart local v24    # "spans":Landroid/graphics/Point;
    :cond_4
    iget v2, v13, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->spanX:I

    goto :goto_4

    .line 605
    :cond_5
    iget v2, v13, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->spanY:I

    goto :goto_5

    .line 608
    :cond_6
    const/4 v2, 0x2

    iput v2, v13, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->minSpanY:I

    iput v2, v13, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->minSpanX:I

    goto :goto_6

    .line 617
    .end local v10    # "cn":Landroid/content/ComponentName;
    .end local v22    # "pInfo":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    .end local v23    # "provider":Ljava/lang/String;
    .end local v24    # "spans":Landroid/graphics/Point;
    :pswitch_3
    iget-wide v2, v13, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->id:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;->getFolderItemsCount(J)I

    move-result v25

    .line 618
    .local v25, "total":I
    if-nez v25, :cond_7

    .line 619
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Folder is empty"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 621
    :cond_7
    const/high16 v2, 0x3f000000    # 0.5f

    move/from16 v0, v25

    int-to-float v3, v0

    mul-float/2addr v2, v3

    iput v2, v13, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->weight:F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 637
    .end local v13    # "entry":Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;
    .end local v25    # "total":I
    :cond_8
    return-object v12

    .line 583
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method markCells([[ZLnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;Z)V
    .locals 4
    .param p1, "occupied"    # [[Z
    .param p2, "item"    # Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;
    .param p3, "val"    # Z

    .prologue
    .line 329
    iget v0, p2, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellX:I

    .local v0, "i":I
    :goto_0
    iget v2, p2, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellX:I

    iget v3, p2, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->spanX:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_1

    .line 330
    iget v1, p2, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellY:I

    .local v1, "j":I
    :goto_1
    iget v2, p2, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellY:I

    iget v3, p2, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->spanY:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 331
    aget-object v2, p1, v0

    aput-boolean p3, v2, v1

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 329
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    .end local v1    # "j":I
    :cond_1
    return-void
.end method

.class public Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;
.super Landroid/content/ContentProvider;
.source "ExternalWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$SqlArguments;,
        Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field mOpenHelper:Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->$assertionsDisabled:Z

    .line 42
    const-class v0, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->TAG:Ljava/lang/String;

    return-void

    .line 41
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private hasQuickPageItemsReachedLimit()Z
    .locals 15

    .prologue
    .line 283
    const/4 v10, 0x1

    .line 284
    .local v10, "reached":Z
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v13

    .line 285
    .local v13, "spKey":Ljava/lang/String;
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v13, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 288
    .local v12, "sp":Landroid/content/SharedPreferences;
    const-string v1, "HAS_LOADED_QUICK_PAGE_DEFAULT_VALUES"

    const/4 v2, 0x0

    invoke-interface {v12, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 289
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 292
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 295
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lnet/oneplus/h2launcher/LauncherSettings$QuickPage;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "type != ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x4

    .line 296
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    .line 295
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 297
    if-nez v9, :cond_1

    .line 298
    sget-object v1, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->TAG:Ljava/lang/String;

    const-string v2, "something wrong in launcher provider, check database"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    const/4 v1, 0x1

    .line 303
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 343
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return v1

    .line 301
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_1
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 303
    .local v8, "currentCount":I
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 308
    :cond_2
    :try_start_2
    sget-object v2, Lnet/oneplus/h2launcher/LauncherSettings$ExternalWidget;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "operationType = ?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 309
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x0

    move-object v1, p0

    .line 308
    invoke-virtual/range {v1 .. v6}, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 310
    if-nez v9, :cond_4

    .line 311
    sget-object v1, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->TAG:Ljava/lang/String;

    const-string v2, "something wrong in external widget provider, check database"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 312
    const/4 v1, 0x1

    .line 316
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 303
    .end local v8    # "currentCount":I
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .line 314
    .restart local v8    # "currentCount":I
    :cond_4
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v7

    .line 316
    .local v7, "addingWidgetCount":I
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 321
    :cond_5
    :try_start_4
    sget-object v2, Lnet/oneplus/h2launcher/LauncherSettings$ExternalWidget;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "operationType = ?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 322
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x0

    move-object v1, p0

    .line 321
    invoke-virtual/range {v1 .. v6}, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 323
    if-nez v9, :cond_7

    .line 324
    sget-object v1, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->TAG:Ljava/lang/String;

    const-string v2, "something wrong in external widget provider, check database"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 325
    const/4 v1, 0x1

    .line 329
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 316
    .end local v7    # "addingWidgetCount":I
    :catchall_1
    move-exception v1

    if-eqz v9, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1

    .line 327
    .restart local v7    # "addingWidgetCount":I
    :cond_7
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result v11

    .line 329
    .local v11, "removingWidgetCount":I
    if-eqz v9, :cond_8

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 333
    :cond_8
    add-int v1, v8, v7

    sub-int v14, v1, v11

    .line 334
    .local v14, "totalCount":I
    sget-object v1, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->TAG:Ljava/lang/String;

    const-string v2, "total number of widgets: %d, current: %d, adding: %d, removing: %d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 335
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 334
    invoke-static {v1, v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    add-int/lit8 v1, v14, 0x2

    const/16 v2, 0x10

    if-lt v1, v2, :cond_a

    const/4 v10, 0x1

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v7    # "addingWidgetCount":I
    .end local v8    # "currentCount":I
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v11    # "removingWidgetCount":I
    .end local v14    # "totalCount":I
    :goto_1
    move v1, v10

    .line 343
    goto/16 :goto_0

    .line 329
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v7    # "addingWidgetCount":I
    .restart local v8    # "currentCount":I
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :catchall_2
    move-exception v1

    if-eqz v9, :cond_9

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v1

    .line 338
    .restart local v11    # "removingWidgetCount":I
    .restart local v14    # "totalCount":I
    :cond_a
    const/4 v10, 0x0

    goto :goto_1

    .line 340
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v7    # "addingWidgetCount":I
    .end local v8    # "currentCount":I
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v11    # "removingWidgetCount":I
    .end local v14    # "totalCount":I
    :cond_b
    sget-object v1, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->TAG:Ljava/lang/String;

    const-string v2, "launcher is never loaded"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static syncWithLauncherProvider(Lnet/oneplus/h2launcher/Launcher;)V
    .locals 25
    .param p0, "launcher"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 347
    if-nez p0, :cond_1

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 352
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/16 v18, 0x0

    .line 353
    .local v18, "shelfCursor":Landroid/database/Cursor;
    const/16 v22, 0x0

    .line 357
    .local v22, "widgetCursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Lnet/oneplus/h2launcher/LauncherSettings$QuickPage;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 358
    invoke-static/range {v18 .. v18}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->isCursorDataAvailable(Landroid/database/Cursor;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    .line 367
    if-eqz v18, :cond_2

    :try_start_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 497
    :cond_2
    if-eqz v22, :cond_0

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 359
    :cond_3
    :try_start_2
    sget-boolean v3, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->$assertionsDisabled:Z

    if-nez v3, :cond_6

    if-nez v18, :cond_6

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 367
    :catchall_0
    move-exception v3

    if-eqz v18, :cond_4

    :try_start_3
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 497
    :catchall_1
    move-exception v3

    if-eqz v22, :cond_5

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v3

    .line 361
    :cond_6
    :try_start_4
    sget-object v3, Lnet/oneplus/h2launcher/LauncherSettings$ExternalWidget;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 362
    invoke-static/range {v22 .. v22}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->isCursorDataAvailable(Landroid/database/Cursor;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v3

    if-nez v3, :cond_8

    .line 367
    if-eqz v18, :cond_7

    :try_start_5
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 497
    :cond_7
    if-eqz v22, :cond_0

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 363
    :cond_8
    :try_start_6
    sget-boolean v3, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->$assertionsDisabled:Z

    if-nez v3, :cond_9

    if-nez v22, :cond_9

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 365
    :cond_9
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v15

    .line 367
    .local v15, "quickPageItemCount":I
    if-eqz v18, :cond_a

    :try_start_7
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 370
    :cond_a
    const-string v3, "_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 371
    .local v12, "indexId":I
    const-string v3, "operationType"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 372
    .local v13, "indexType":I
    const-string v3, "widgetId"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 373
    .local v14, "indexWidgetId":I
    const-string v3, "component"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 376
    .local v11, "indexComponent":I
    :cond_b
    move-object/from16 v0, v22

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 377
    .local v10, "id":I
    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 378
    .local v20, "type":I
    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 379
    .local v23, "widgetId":I
    move-object/from16 v0, v22

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 381
    .local v8, "component":Ljava/lang/String;
    if-ltz v23, :cond_c

    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_d

    .line 382
    :cond_c
    sget-object v3, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->TAG:Ljava/lang/String;

    const-string v4, "ignored invalid widget data, id: %d, component: "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 383
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v8, v5, v6

    .line 382
    invoke-static {v3, v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 493
    :goto_1
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_b

    .line 495
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/Launcher;->invalidateListPosted()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 497
    if-eqz v22, :cond_0

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 387
    :cond_d
    packed-switch v20, :pswitch_data_0

    .line 486
    :goto_2
    :try_start_8
    sget-object v3, Lnet/oneplus/h2launcher/LauncherSettings$ExternalWidget;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 487
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 486
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v17

    .line 488
    .local v17, "removed":I
    if-lez v17, :cond_22

    .line 489
    sget-object v3, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the temporarily data has been removed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    .line 390
    .end local v17    # "removed":I
    :pswitch_0
    :try_start_9
    sget-object v3, Lnet/oneplus/h2launcher/LauncherSettings$QuickPage;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "widgetId = ? AND component = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 392
    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v6, v7

    const/4 v7, 0x1

    aput-object v8, v6, v7

    const/4 v7, 0x0

    .line 390
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 395
    invoke-static/range {v18 .. v18}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->isCursorDataAvailable(Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 396
    sget-object v3, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "widget data already exists, ignored: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 400
    :try_start_a
    sget-boolean v3, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->$assertionsDisabled:Z

    if-nez v3, :cond_e

    if-nez v18, :cond_e

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 401
    :cond_e
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 400
    :cond_f
    sget-boolean v3, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->$assertionsDisabled:Z

    if-nez v3, :cond_10

    if-nez v18, :cond_10

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 401
    :cond_10
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 404
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 405
    .local v21, "values":Landroid/content/ContentValues;
    const-string v3, "_id"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 406
    const-string v3, "type"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 407
    const-string v3, "size"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 408
    const-string v3, "content"

    const-string v4, "EXTERNAL"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v3, "widgetId"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 410
    const-string v3, "component"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    sget-object v3, Lnet/oneplus/h2launcher/LauncherSettings$QuickPage;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v21

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v16

    .line 414
    .local v16, "rec":Landroid/net/Uri;
    if-nez v16, :cond_12

    .line 415
    sget-object v3, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert new widget failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 400
    .end local v16    # "rec":Landroid/net/Uri;
    .end local v21    # "values":Landroid/content/ContentValues;
    :catchall_2
    move-exception v3

    sget-boolean v4, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->$assertionsDisabled:Z

    if-nez v4, :cond_11

    if-nez v18, :cond_11

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 401
    :cond_11
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    throw v3

    .line 417
    .restart local v16    # "rec":Landroid/net/Uri;
    .restart local v21    # "values":Landroid/content/ContentValues;
    :cond_12
    add-int/lit8 v15, v15, 0x1

    .line 418
    sget-object v3, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new widget has added into quick page: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 421
    :try_start_b
    sget-object v3, Lnet/oneplus/h2launcher/LauncherSettings$QuickPage;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "type = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v24, 0x2

    .line 422
    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v6, v7

    const/4 v7, 0x0

    .line 421
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 424
    invoke-static/range {v18 .. v18}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->isCursorDataAvailable(Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 425
    sget-boolean v3, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->$assertionsDisabled:Z

    if-nez v3, :cond_13

    if-nez v18, :cond_13

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 429
    :catchall_3
    move-exception v3

    :try_start_c
    sget-boolean v4, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->$assertionsDisabled:Z

    if-nez v4, :cond_16

    if-nez v18, :cond_16

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 426
    :cond_13
    :try_start_d
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 429
    :cond_14
    :try_start_e
    sget-boolean v3, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->$assertionsDisabled:Z

    if-nez v3, :cond_15

    if-nez v18, :cond_15

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 430
    :cond_15
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :cond_16
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 438
    .end local v16    # "rec":Landroid/net/Uri;
    .end local v21    # "values":Landroid/content/ContentValues;
    :pswitch_1
    :try_start_f
    sget-object v3, Lnet/oneplus/h2launcher/LauncherSettings$QuickPage;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "widgetId = ? AND component = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 440
    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v6, v7

    const/4 v7, 0x1

    aput-object v8, v6, v7

    const/4 v7, 0x0

    .line 438
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 443
    invoke-static/range {v18 .. v18}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->isCursorDataAvailable(Landroid/database/Cursor;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    move-result v3

    if-nez v3, :cond_18

    .line 464
    :try_start_10
    sget-boolean v3, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->$assertionsDisabled:Z

    if-nez v3, :cond_17

    if-nez v18, :cond_17

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 465
    :cond_17
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_2

    .line 445
    :cond_18
    :try_start_11
    sget-boolean v3, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->$assertionsDisabled:Z

    if-nez v3, :cond_19

    if-nez v18, :cond_19

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 464
    :catchall_4
    move-exception v3

    :try_start_12
    sget-boolean v4, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->$assertionsDisabled:Z

    if-nez v4, :cond_1c

    if-nez v18, :cond_1c

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 446
    :cond_19
    :try_start_13
    const-string v3, "_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 449
    .local v19, "shelfId":I
    move/from16 v0, v19

    int-to-long v4, v0

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/LauncherSettings$QuickPage;->getContentUri(J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 452
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/LauncherAppState;->getAppWidgetHost()Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    move-result-object v3

    .line 453
    move/from16 v0, v23

    invoke-virtual {v3, v0}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 455
    add-int/lit8 v9, v19, 0x1

    .local v9, "i":I
    :goto_3
    if-ge v9, v15, :cond_1a

    .line 456
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 457
    .restart local v21    # "values":Landroid/content/ContentValues;
    const-string v3, "_id"

    add-int/lit8 v4, v9, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 460
    sget-object v3, Lnet/oneplus/h2launcher/LauncherSettings$QuickPage;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 461
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 460
    move-object/from16 v0, v21

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 455
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 464
    .end local v21    # "values":Landroid/content/ContentValues;
    :cond_1a
    :try_start_14
    sget-boolean v3, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->$assertionsDisabled:Z

    if-nez v3, :cond_1b

    if-nez v18, :cond_1b

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 465
    :cond_1b
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 468
    add-int/lit8 v15, v15, -0x1

    .line 471
    :try_start_15
    sget-object v3, Lnet/oneplus/h2launcher/LauncherSettings$QuickPage;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "type = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v24, 0x2

    .line 472
    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v6, v7

    const/4 v7, 0x0

    .line 471
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 474
    invoke-static/range {v18 .. v18}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->isCursorDataAvailable(Landroid/database/Cursor;)Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    move-result v3

    if-nez v3, :cond_1e

    .line 477
    :try_start_16
    sget-boolean v3, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->$assertionsDisabled:Z

    if-nez v3, :cond_1d

    if-nez v18, :cond_1d

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 465
    .end local v9    # "i":I
    .end local v19    # "shelfId":I
    :cond_1c
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    throw v3

    .line 478
    .restart local v9    # "i":I
    .restart local v19    # "shelfId":I
    :cond_1d
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    goto/16 :goto_2

    .line 475
    :cond_1e
    :try_start_17
    sget-boolean v3, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->$assertionsDisabled:Z

    if-nez v3, :cond_1f

    if-nez v18, :cond_1f

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    .line 477
    :catchall_5
    move-exception v3

    :try_start_18
    sget-boolean v4, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->$assertionsDisabled:Z

    if-nez v4, :cond_21

    if-nez v18, :cond_21

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_1f
    sget-boolean v3, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->$assertionsDisabled:Z

    if-nez v3, :cond_20

    if-nez v18, :cond_20

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 478
    :cond_20
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 481
    sget-object v3, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "external widget removed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 478
    :cond_21
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    throw v3

    .line 491
    .end local v9    # "i":I
    .end local v19    # "shelfId":I
    .restart local v17    # "removed":I
    :cond_22
    sget-object v3, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caution! the temporarily data was not cleaned: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    goto/16 :goto_1

    .line 387
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addModifiedTime(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 57
    const-string v0, "modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 58
    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 28
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 123
    const/4 v3, -0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_1

    .line 276
    sget-object v3, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->TAG:Ljava/lang/String;

    const-string v4, "unexpected method: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v26, 0x0

    aput-object p1, v7, v26

    invoke-static {v3, v4, v7}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    const/16 v16, 0x0

    :cond_1
    :goto_1
    return-object v16

    .line 123
    :pswitch_0
    const-string v4, "manageWidget"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 125
    :pswitch_1
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 126
    .local v16, "result":Landroid/os/Bundle;
    const-string v3, "package"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 127
    .local v25, "widgetPackage":Ljava/lang/String;
    const-string v3, "class"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 128
    .local v22, "widgetClass":Ljava/lang/String;
    new-instance v10, Landroid/content/ComponentName;

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-direct {v10, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .local v10, "component":Landroid/content/ComponentName;
    if-eqz v25, :cond_2

    if-nez v22, :cond_3

    .line 131
    :cond_2
    sget-object v3, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->TAG:Ljava/lang/String;

    const-string v4, "the given widget package/class name is invalid: %s / %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v26, 0x0

    aput-object v25, v7, v26

    const/16 v26, 0x1

    aput-object v22, v7, v26

    invoke-static {v3, v4, v7}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    const/16 v16, 0x0

    goto :goto_1

    .line 135
    :cond_3
    sget-object v3, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->TAG:Ljava/lang/String;

    const-string v4, "%s widget component name: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v26, 0x0

    aput-object p2, v7, v26

    const/16 v26, 0x1

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v7, v26

    invoke-static {v3, v4, v7}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    const/16 v20, 0x0

    .line 137
    .local v20, "validComponent":Z
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v9

    .line 138
    .local v9, "callingPackage":Ljava/lang/String;
    sget-object v4, Lnet/oneplus/h2launcher/widget/WidgetConstant;->ALLOWED_EXTERNAL_WIDGET_OWNER:[Ljava/lang/String;

    array-length v7, v4

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v7, :cond_5

    aget-object v8, v4, v3

    .line 139
    .local v8, "allow":Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 140
    const/16 v20, 0x1

    .line 138
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 144
    .end local v8    # "allow":Ljava/lang/String;
    :cond_5
    if-nez v20, :cond_6

    .line 145
    sget-object v3, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->TAG:Ljava/lang/String;

    const-string v4, "the given component is not allowed for the operation: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v26, 0x0

    .line 146
    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v7, v26

    .line 145
    invoke-static {v3, v4, v7}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 151
    :cond_6
    const/4 v3, -0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_7
    :goto_3
    packed-switch v3, :pswitch_data_2

    .line 270
    sget-object v3, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->TAG:Ljava/lang/String;

    const-string v4, "unexpected operation: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v26, 0x0

    aput-object p2, v7, v26

    invoke-static {v3, v4, v7}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 151
    :sswitch_0
    const-string v4, "add"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v3, 0x0

    goto :goto_3

    :sswitch_1
    const-string v4, "remove"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :sswitch_2
    const-string v4, "available"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v3, 0x2

    goto :goto_3

    .line 153
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v24

    .line 154
    .local v24, "widgetManager":Landroid/appwidget/AppWidgetManager;
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->hasQuickPageItemsReachedLimit()Z

    move-result v15

    .line 155
    .local v15, "reached":Z
    const-string v3, "widget_id"

    const/4 v4, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 156
    const-string v3, "reach_limit"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 158
    if-eqz v15, :cond_8

    .line 159
    sget-object v3, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->TAG:Ljava/lang/String;

    const-string v4, "the number of widget has reached the limitation"

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 164
    :cond_8
    :try_start_0
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setBindAppWidgetPermission"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/16 v26, 0x0

    const-class v27, Ljava/lang/String;

    aput-object v27, v7, v26

    const/16 v26, 0x1

    sget-object v27, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v27, v7, v26

    invoke-virtual {v3, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 166
    .local v17, "setWidgetPermission":Ljava/lang/reflect/Method;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->mContext:Landroid/content/Context;

    .line 167
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    const/4 v4, 0x1

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v3, v4

    .line 166
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstanceNoCreate()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v19

    .line 177
    .local v19, "state":Lnet/oneplus/h2launcher/LauncherAppState;
    if-eqz v19, :cond_9

    .line 178
    invoke-virtual/range {v19 .. v19}, Lnet/oneplus/h2launcher/LauncherAppState;->getAppWidgetHost()Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    move-result-object v13

    .line 179
    .local v13, "host":Lnet/oneplus/h2launcher/LauncherAppWidgetHost;
    invoke-virtual {v13}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v23

    .line 189
    .local v23, "widgetId":I
    :goto_4
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1, v10}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 190
    sget-object v3, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->TAG:Ljava/lang/String;

    const-string v4, "id: %d, component: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v26, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v7, v26

    const/16 v26, 0x1

    .line 191
    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v7, v26

    .line 190
    invoke-static {v3, v4, v7}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 194
    .local v21, "values":Landroid/content/ContentValues;
    const-string v3, "operationType"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 195
    const-string v3, "widgetId"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 196
    const-string v3, "component"

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    sget-object v3, Lnet/oneplus/h2launcher/LauncherSettings$ExternalWidget;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 198
    const-string v3, "widget_id"

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 168
    .end local v13    # "host":Lnet/oneplus/h2launcher/LauncherAppWidgetHost;
    .end local v17    # "setWidgetPermission":Ljava/lang/reflect/Method;
    .end local v19    # "state":Lnet/oneplus/h2launcher/LauncherAppState;
    .end local v21    # "values":Landroid/content/ContentValues;
    .end local v23    # "widgetId":I
    :catch_0
    move-exception v12

    .line 170
    .local v12, "e":Ljava/lang/ReflectiveOperationException;
    :goto_5
    sget-object v3, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->TAG:Ljava/lang/String;

    const-string v4, "Failed to invoke bindAppWidgetPermission: %s"

    invoke-static {v3, v4, v12}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 181
    .end local v12    # "e":Ljava/lang/ReflectiveOperationException;
    .restart local v17    # "setWidgetPermission":Ljava/lang/reflect/Method;
    .restart local v19    # "state":Lnet/oneplus/h2launcher/LauncherAppState;
    :cond_9
    sget-object v3, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->TAG:Ljava/lang/String;

    const-string v4, "Launcher instance is null, create new widget host"

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance v13, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    .line 183
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x400

    invoke-direct {v13, v3, v4}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 184
    .restart local v13    # "host":Lnet/oneplus/h2launcher/LauncherAppWidgetHost;
    invoke-virtual {v13}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->startListening()V

    .line 185
    invoke-virtual {v13}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v23

    .line 186
    .restart local v23    # "widgetId":I
    invoke-virtual {v13}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->stopListening()V

    goto/16 :goto_4

    .line 200
    .restart local v21    # "values":Landroid/content/ContentValues;
    :cond_a
    sget-object v3, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->TAG:Ljava/lang/String;

    const-string v4, "failed to insert data to external widget provider"

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 205
    .end local v21    # "values":Landroid/content/ContentValues;
    :cond_b
    sget-object v3, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->TAG:Ljava/lang/String;

    const-string v4, "no permission to bind app widgets, component invalid?"

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 211
    .end local v13    # "host":Lnet/oneplus/h2launcher/LauncherAppWidgetHost;
    .end local v15    # "reached":Z
    .end local v17    # "setWidgetPermission":Ljava/lang/reflect/Method;
    .end local v19    # "state":Lnet/oneplus/h2launcher/LauncherAppState;
    .end local v23    # "widgetId":I
    .end local v24    # "widgetManager":Landroid/appwidget/AppWidgetManager;
    :pswitch_3
    const-string v3, "widget_id"

    const/4 v4, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v23

    .line 212
    .restart local v23    # "widgetId":I
    const-string v3, "external_only"

    .line 213
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    .line 214
    .local v14, "isExternalOnly":Z
    if-eqz v14, :cond_c

    const-string v11, "EXTERNAL"

    .line 215
    .local v11, "content":Ljava/lang/String;
    :goto_6
    const-string v3, "widget_id"

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 216
    const-string v3, "success"

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 217
    sget-object v3, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->TAG:Ljava/lang/String;

    const-string v4, "the widget id going to be removed: %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v26, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v7, v26

    invoke-static {v3, v4, v7}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    const-string v5, "widgetId = ? AND component = ? AND type = ?"

    .line 224
    .local v5, "selectionStatement":Ljava/lang/String;
    if-eqz v14, :cond_d

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND content = ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 226
    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x1

    .line 227
    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x3

    const-string v4, "EXTERNAL"

    aput-object v4, v6, v3

    .line 234
    .local v6, "selectionArguments":[Ljava/lang/String;
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 235
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/16 v18, 0x0

    .line 237
    .local v18, "shelfCursor":Landroid/database/Cursor;
    :try_start_1
    sget-object v3, Lnet/oneplus/h2launcher/LauncherSettings$QuickPage;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 240
    invoke-static/range {v18 .. v18}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->isCursorDataAvailable(Landroid/database/Cursor;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 241
    sget-object v3, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->TAG:Ljava/lang/String;

    const-string v4, "ignored invalid widget data, id: %d, component: %s, external: %B"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v26, 0x0

    .line 242
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v7, v26

    const/16 v26, 0x1

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v7, v26

    const/16 v26, 0x2

    .line 243
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    aput-object v27, v7, v26

    .line 241
    invoke-static {v3, v4, v7}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    if-eqz v18, :cond_1

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 214
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "selectionStatement":Ljava/lang/String;
    .end local v6    # "selectionArguments":[Ljava/lang/String;
    .end local v11    # "content":Ljava/lang/String;
    .end local v18    # "shelfCursor":Landroid/database/Cursor;
    :cond_c
    const-string v11, ""

    goto/16 :goto_6

    .line 230
    .restart local v5    # "selectionStatement":Ljava/lang/String;
    .restart local v11    # "content":Ljava/lang/String;
    :cond_d
    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x1

    .line 231
    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    .restart local v6    # "selectionArguments":[Ljava/lang/String;
    goto :goto_7

    .line 247
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v18    # "shelfCursor":Landroid/database/Cursor;
    :cond_e
    if-eqz v18, :cond_f

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 250
    :cond_f
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 251
    .restart local v21    # "values":Landroid/content/ContentValues;
    const-string v3, "operationType"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 252
    const-string v3, "widgetId"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 253
    const-string v3, "CONTENT"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v3, "component"

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    sget-object v3, Lnet/oneplus/h2launcher/LauncherSettings$ExternalWidget;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 256
    const-string v3, "success"

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 247
    .end local v21    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    if-eqz v18, :cond_10

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_10
    throw v3

    .line 258
    .restart local v21    # "values":Landroid/content/ContentValues;
    :cond_11
    sget-object v3, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->TAG:Ljava/lang/String;

    const-string v4, "failed to remove external widget: %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v26, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v7, v26

    invoke-static {v3, v4, v7}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 264
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "selectionStatement":Ljava/lang/String;
    .end local v6    # "selectionArguments":[Ljava/lang/String;
    .end local v11    # "content":Ljava/lang/String;
    .end local v14    # "isExternalOnly":Z
    .end local v18    # "shelfCursor":Landroid/database/Cursor;
    .end local v21    # "values":Landroid/content/ContentValues;
    .end local v23    # "widgetId":I
    :pswitch_4
    const-string v4, "seat_available"

    .line 265
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->hasQuickPageItemsReachedLimit()Z

    move-result v3

    if-nez v3, :cond_12

    const/4 v3, 0x1

    .line 264
    :goto_8
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 265
    :cond_12
    const/4 v3, 0x0

    goto :goto_8

    .line 168
    .restart local v15    # "reached":Z
    .restart local v24    # "widgetManager":Landroid/appwidget/AppWidgetManager;
    :catch_1
    move-exception v12

    goto/16 :goto_5

    :catch_2
    move-exception v12

    goto/16 :goto_5

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x1ba28409
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 151
    :sswitch_data_0
    .sparse-switch
        -0x37b5077c -> :sswitch_1
        -0x2bbe7537 -> :sswitch_2
        0x178a1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 106
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 108
    .local v0, "args":Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$SqlArguments;
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->mOpenHelper:Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$DatabaseHelper;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 109
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v3, v0, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v0, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 79
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$SqlArguments;

    invoke-direct {v0, p1, v1, v1}, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 80
    .local v0, "args":Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$SqlArguments;
    iget-object v1, v0, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.dir/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.item/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "values"    # Landroid/content/ContentValues;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 91
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$SqlArguments;

    invoke-direct {v0, p1}, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 93
    .local v0, "args":Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$SqlArguments;
    invoke-virtual {p0, p2}, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->addModifiedTime(Landroid/content/ContentValues;)V

    .line 94
    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->mOpenHelper:Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$DatabaseHelper;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 95
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v6, v0, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v6, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 96
    .local v4, "rowId":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_0

    move-object v2, v3

    .line 101
    :goto_0
    return-object v2

    .line 98
    :cond_0
    invoke-static {p1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 99
    .local v2, "newUri":Landroid/net/Uri;
    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 49
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->mContext:Landroid/content/Context;

    .line 50
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 51
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    new-instance v1, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$DatabaseHelper;

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->mOpenHelper:Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$DatabaseHelper;

    .line 52
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 53
    const/4 v1, 0x1

    return v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 64
    new-instance v8, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$SqlArguments;

    invoke-direct {v8, p1, p3, p4}, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 65
    .local v8, "args":Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$SqlArguments;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 66
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    iget-object v2, v8, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 68
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->mOpenHelper:Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$DatabaseHelper;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 70
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v8, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v8, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$SqlArguments;->args:[Ljava/lang/String;

    move-object v2, p2

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 71
    .local v9, "result":Landroid/database/Cursor;
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 73
    return-object v9
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 114
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 116
    .local v0, "args":Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$SqlArguments;
    invoke-virtual {p0, p2}, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->addModifiedTime(Landroid/content/ContentValues;)V

    .line 117
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider;->mOpenHelper:Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$DatabaseHelper;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 118
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v3, v0, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v0, Lnet/oneplus/h2launcher/quickpage/ExternalWidgetProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v1, v2, p2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

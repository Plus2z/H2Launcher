.class Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem$ShortcutLoaderTask;
.super Landroid/os/AsyncTask;
.source "FrequentAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShortcutLoaderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private cache:Lnet/oneplus/h2launcher/AssetCache;

.field private context:Landroid/content/Context;

.field private id:J

.field private info:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;

.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;

.field private user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;Landroid/content/Context;Lnet/oneplus/h2launcher/AssetCache;JLnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cache"    # Lnet/oneplus/h2launcher/AssetCache;
    .param p4, "id"    # J
    .param p6, "info"    # Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;
    .param p7, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 589
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem$ShortcutLoaderTask;->this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 590
    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem$ShortcutLoaderTask;->context:Landroid/content/Context;

    .line 591
    iput-object p3, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem$ShortcutLoaderTask;->cache:Lnet/oneplus/h2launcher/AssetCache;

    .line 592
    iput-wide p4, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem$ShortcutLoaderTask;->id:J

    .line 593
    iput-object p6, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem$ShortcutLoaderTask;->info:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;

    .line 594
    iput-object p7, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem$ShortcutLoaderTask;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 595
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;
    .locals 19
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 600
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem$ShortcutLoaderTask;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 601
    .local v2, "cr":Landroid/content/ContentResolver;
    sget-object v3, Lnet/oneplus/h2launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem$ShortcutLoaderTask;->id:J

    move-wide/from16 v16, v0

    .line 602
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    .line 601
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .local v9, "c":Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 603
    if-nez v9, :cond_3

    .line 604
    :try_start_0
    const-string v3, "FrequentAppsGrid"

    const-string v4, "cannot query the shortcut with id: %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem$ShortcutLoaderTask;->id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 605
    const/4 v3, 0x0

    .line 633
    if-eqz v9, :cond_0

    if-eqz v15, :cond_2

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    move-object v9, v3

    .end local v9    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_1
    return-object v9

    .restart local v9    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v4

    invoke-virtual {v15, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 608
    :cond_3
    :goto_2
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 609
    const-string v3, "title"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 610
    .local v14, "titleIndex":I
    const-string v3, "iconType"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 611
    .local v13, "iconTypeIndex":I
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 612
    .local v12, "iconType":I
    new-instance v11, Lnet/oneplus/h2launcher/util/CursorIconInfo;

    invoke-direct {v11, v9}, Lnet/oneplus/h2launcher/util/CursorIconInfo;-><init>(Landroid/database/Cursor;)V

    .line 615
    .local v11, "iconInfo":Lnet/oneplus/h2launcher/util/CursorIconInfo;
    if-eqz v12, :cond_4

    const/4 v3, 0x1

    if-ne v12, v3, :cond_6

    .line 618
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem$ShortcutLoaderTask;->info:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem$ShortcutLoaderTask;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    iput-object v4, v3, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 619
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem$ShortcutLoaderTask;->info:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;

    const/4 v4, 0x1

    iput v4, v3, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;->itemType:I

    .line 620
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem$ShortcutLoaderTask;->info:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;

    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/oneplus/h2launcher/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 621
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem$ShortcutLoaderTask;->info:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem$ShortcutLoaderTask;->context:Landroid/content/Context;

    invoke-virtual {v11, v9, v3, v4}, Lnet/oneplus/h2launcher/util/CursorIconInfo;->loadIcon(Landroid/database/Cursor;Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 622
    .local v10, "icon":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem$ShortcutLoaderTask;->info:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;

    invoke-virtual {v3, v10}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 623
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem$ShortcutLoaderTask;->info:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;->isIconReady:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 601
    .end local v10    # "icon":Landroid/graphics/Bitmap;
    .end local v11    # "iconInfo":Lnet/oneplus/h2launcher/util/CursorIconInfo;
    .end local v12    # "iconType":I
    .end local v13    # "iconTypeIndex":I
    .end local v14    # "titleIndex":I
    :catch_1
    move-exception v3

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 633
    :catchall_0
    move-exception v4

    move-object/from16 v18, v4

    move-object v4, v3

    move-object/from16 v3, v18

    :goto_3
    if-eqz v9, :cond_5

    if-eqz v4, :cond_9

    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_4
    throw v3

    .line 627
    .restart local v11    # "iconInfo":Lnet/oneplus/h2launcher/util/CursorIconInfo;
    .restart local v12    # "iconType":I
    .restart local v13    # "iconTypeIndex":I
    .restart local v14    # "titleIndex":I
    :cond_6
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem$ShortcutLoaderTask;->cache:Lnet/oneplus/h2launcher/AssetCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem$ShortcutLoaderTask;->info:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem$ShortcutLoaderTask;->this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;

    iget-object v5, v5, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->intent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem$ShortcutLoaderTask;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lnet/oneplus/h2launcher/AssetCache;->getTitleAndIcon(Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;ZZ)V

    .line 628
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem$ShortcutLoaderTask;->info:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;->isIconReady:Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_2

    .line 633
    .end local v11    # "iconInfo":Lnet/oneplus/h2launcher/util/CursorIconInfo;
    .end local v12    # "iconType":I
    .end local v13    # "iconTypeIndex":I
    .end local v14    # "titleIndex":I
    :catchall_1
    move-exception v3

    move-object v4, v15

    goto :goto_3

    :cond_7
    if-eqz v9, :cond_1

    if-eqz v15, :cond_8

    :try_start_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v3

    invoke-virtual {v15, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_8
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catch_3
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_9
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 580
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem$ShortcutLoaderTask;->doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 638
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 639
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem$ShortcutLoaderTask;->info:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;

    const/4 v1, -0x1

    iput v1, v0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;->itemType:I

    .line 640
    const-string v0, "FrequentAppsGrid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shortcut does not exist now."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem$ShortcutLoaderTask;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem$ShortcutLoaderTask;->this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->access$1800(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;)Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    move-result-object v0

    iget-wide v2, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem$ShortcutLoaderTask;->id:J

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem$ShortcutLoaderTask;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v0, v2, v3, v1}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->onStatsRemoved(JLnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 646
    :goto_0
    return-void

    .line 644
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem$ShortcutLoaderTask;->this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->access$1800(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;)Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem$ShortcutLoaderTask;->this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->componentName:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->access$1900(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;Landroid/content/ComponentName;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 580
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem$ShortcutLoaderTask;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method

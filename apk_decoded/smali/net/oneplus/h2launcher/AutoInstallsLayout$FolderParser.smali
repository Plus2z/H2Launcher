.class public Lnet/oneplus/h2launcher/AutoInstallsLayout$FolderParser;
.super Ljava/lang/Object;
.source "AutoInstallsLayout.java"

# interfaces
.implements Lnet/oneplus/h2launcher/AutoInstallsLayout$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/AutoInstallsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FolderParser"
.end annotation


# instance fields
.field private final mFolderElements:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lnet/oneplus/h2launcher/AutoInstallsLayout$TagParser;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/AutoInstallsLayout;)V
    .locals 1
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/AutoInstallsLayout;

    .prologue
    .line 602
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/AutoInstallsLayout;->getFolderElementsMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/AutoInstallsLayout$FolderParser;-><init>(Lnet/oneplus/h2launcher/AutoInstallsLayout;Ljava/util/HashMap;)V

    .line 603
    return-void
.end method

.method public constructor <init>(Lnet/oneplus/h2launcher/AutoInstallsLayout;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/AutoInstallsLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lnet/oneplus/h2launcher/AutoInstallsLayout$TagParser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 605
    .local p2, "elements":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lnet/oneplus/h2launcher/AutoInstallsLayout$TagParser;>;"
    iput-object p1, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout$FolderParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    iput-object p2, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout$FolderParser;->mFolderElements:Ljava/util/HashMap;

    .line 607
    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;)J
    .locals 26
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 613
    const-string v21, "title"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/AutoInstallsLayout;->getAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v18

    .line 614
    .local v18, "titleResId":I
    if-eqz v18, :cond_1

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AutoInstallsLayout$FolderParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 620
    .local v17, "title":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AutoInstallsLayout$FolderParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    move-object/from16 v21, v0

    const-string v22, "title"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AutoInstallsLayout$FolderParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    move-object/from16 v21, v0

    const-string v22, "itemType"

    const/16 v23, 0x2

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AutoInstallsLayout$FolderParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    move-object/from16 v21, v0

    const-string v22, "spanX"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AutoInstallsLayout$FolderParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    move-object/from16 v21, v0

    const-string v22, "spanY"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AutoInstallsLayout$FolderParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    move-object/from16 v21, v0

    const-string v22, "_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AutoInstallsLayout$FolderParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mCallback:Lnet/oneplus/h2launcher/AutoInstallsLayout$LayoutParserCallback;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lnet/oneplus/h2launcher/AutoInstallsLayout$LayoutParserCallback;->generateNewItemId()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AutoInstallsLayout$FolderParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mCallback:Lnet/oneplus/h2launcher/AutoInstallsLayout$LayoutParserCallback;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AutoInstallsLayout$FolderParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AutoInstallsLayout$FolderParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    move-object/from16 v23, v0

    invoke-interface/range {v21 .. v23}, Lnet/oneplus/h2launcher/AutoInstallsLayout$LayoutParserCallback;->insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v10

    .line 626
    .local v10, "folderId":J
    const-wide/16 v22, 0x0

    cmp-long v21, v10, v22

    if-gez v21, :cond_2

    .line 628
    const-wide/16 v4, -0x1

    .line 684
    :cond_0
    :goto_1
    return-wide v4

    .line 617
    .end local v10    # "folderId":J
    .end local v17    # "title":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AutoInstallsLayout$FolderParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0b0054

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "title":Ljava/lang/String;
    goto/16 :goto_0

    .line 631
    .restart local v10    # "folderId":J
    :cond_2
    new-instance v14, Landroid/content/ContentValues;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AutoInstallsLayout$FolderParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 632
    .local v14, "myValues":Landroid/content/ContentValues;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 635
    .local v9, "folderItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 636
    .local v8, "folderDepth":I
    const/4 v15, 0x0

    .line 637
    .local v15, "rank":I
    :cond_3
    :goto_2
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v19

    .local v19, "type":I
    const/16 v21, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 638
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v21

    move/from16 v0, v21

    if-le v0, v8, :cond_6

    .line 639
    :cond_4
    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AutoInstallsLayout$FolderParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentValues;->clear()V

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AutoInstallsLayout$FolderParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    move-object/from16 v21, v0

    const-string v22, "container"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AutoInstallsLayout$FolderParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    move-object/from16 v21, v0

    const-string v22, "rank"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AutoInstallsLayout$FolderParser;->mFolderElements:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lnet/oneplus/h2launcher/AutoInstallsLayout$TagParser;

    .line 647
    .local v16, "tagParser":Lnet/oneplus/h2launcher/AutoInstallsLayout$TagParser;
    if-eqz v16, :cond_5

    .line 648
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lnet/oneplus/h2launcher/AutoInstallsLayout$TagParser;->parseAndAdd(Landroid/content/res/XmlResourceParser;)J

    move-result-wide v12

    .line 649
    .local v12, "id":J
    const-wide/16 v22, 0x0

    cmp-long v21, v12, v22

    if-ltz v21, :cond_3

    .line 650
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 654
    .end local v12    # "id":J
    :cond_5
    new-instance v21, Ljava/lang/RuntimeException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Invalid folder item "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 658
    .end local v16    # "tagParser":Lnet/oneplus/h2launcher/AutoInstallsLayout$TagParser;
    :cond_6
    move-wide v4, v10

    .line 663
    .local v4, "addedId":J
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 665
    invoke-static {v10, v11}, Lnet/oneplus/h2launcher/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v20

    .line 666
    .local v20, "uri":Landroid/net/Uri;
    new-instance v6, Lnet/oneplus/h2launcher/LauncherProvider$SqlArguments;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v6, v0, v1, v2}, Lnet/oneplus/h2launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 667
    .local v6, "args":Lnet/oneplus/h2launcher/LauncherProvider$SqlArguments;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AutoInstallsLayout$FolderParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v21, v0

    iget-object v0, v6, Lnet/oneplus/h2launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    move-object/from16 v22, v0

    iget-object v0, v6, Lnet/oneplus/h2launcher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    move-object/from16 v23, v0

    iget-object v0, v6, Lnet/oneplus/h2launcher/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v21 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 668
    const-wide/16 v4, -0x1

    .line 672
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 673
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 674
    .local v7, "childValues":Landroid/content/ContentValues;
    const-string v21, "container"

    move-object/from16 v0, v21

    invoke-static {v14, v7, v0}, Lnet/oneplus/h2launcher/AutoInstallsLayout;->copyInteger(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 675
    const-string v21, "screen"

    move-object/from16 v0, v21

    invoke-static {v14, v7, v0}, Lnet/oneplus/h2launcher/AutoInstallsLayout;->copyInteger(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 676
    const-string v21, "cellX"

    move-object/from16 v0, v21

    invoke-static {v14, v7, v0}, Lnet/oneplus/h2launcher/AutoInstallsLayout;->copyInteger(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 677
    const-string v21, "cellY"

    move-object/from16 v0, v21

    invoke-static {v14, v7, v0}, Lnet/oneplus/h2launcher/AutoInstallsLayout;->copyInteger(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 679
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Long;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/AutoInstallsLayout$FolderParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v21, v0

    invoke-static {}, Lnet/oneplus/h2launcher/launcherProviderHelper/LauncherProviderUtil;->getFavoritesTable()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "_id="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1
.end method

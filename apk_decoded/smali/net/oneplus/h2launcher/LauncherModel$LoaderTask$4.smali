.class Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->addAndBindAddedWorkspaceApps(Landroid/content/Context;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

.field final synthetic val$callbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$workspaceApps:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;Landroid/content/Context;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    .prologue
    .line 2150
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4;->val$workspaceApps:Ljava/util/ArrayList;

    iput-object p4, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4;->val$callbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 35

    .prologue
    .line 2152
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2153
    .local v13, "addedShortcutsFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2154
    .local v14, "addedWorkspaceScreensFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 2159
    .local v27, "restoredAppsFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 2160
    .local v32, "workspaceScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4;->val$context:Landroid/content/Context;

    invoke-static {v2, v4}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->access$200(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;Landroid/content/Context;)Ljava/util/TreeMap;

    move-result-object v26

    .line 2161
    .local v26, "orderedScreens":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    invoke-virtual/range {v26 .. v26}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    .line 2162
    .local v18, "i":Ljava/lang/Integer;
    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    .line 2163
    .local v28, "screenId":J
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2166
    .end local v18    # "i":Ljava/lang/Integer;
    .end local v28    # "screenId":J
    :cond_0
    sget-object v33, Lnet/oneplus/h2launcher/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v33

    .line 2167
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4;->val$workspaceApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 2168
    .local v20, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/oneplus/h2launcher/ItemInfo;>;"
    :cond_1
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2169
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/oneplus/h2launcher/ItemInfo;

    .line 2171
    .local v11, "a":Lnet/oneplus/h2launcher/ItemInfo;
    invoke-virtual {v11}, Lnet/oneplus/h2launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v22

    .line 2173
    .local v22, "launchIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    iget-object v2, v2, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4;->val$context:Landroid/content/Context;

    iget-object v5, v11, Lnet/oneplus/h2launcher/ItemInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-object/from16 v0, v22

    invoke-virtual {v2, v4, v0, v5}, Lnet/oneplus/h2launcher/LauncherModel;->shortcutExists(Landroid/content/Context;Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2175
    instance-of v2, v11, Lnet/oneplus/h2launcher/AppInfo;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4;->val$context:Landroid/content/Context;

    iget-object v5, v11, Lnet/oneplus/h2launcher/ItemInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 2176
    move-object/from16 v0, v22

    invoke-virtual {v2, v4, v0, v5}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->appWasPromise(Landroid/content/Context;Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2177
    check-cast v11, Lnet/oneplus/h2launcher/AppInfo;

    .end local v11    # "a":Lnet/oneplus/h2launcher/ItemInfo;
    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2227
    .end local v20    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/oneplus/h2launcher/ItemInfo;>;"
    .end local v22    # "launchIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    monitor-exit v33
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2185
    .restart local v11    # "a":Lnet/oneplus/h2launcher/ItemInfo;
    .restart local v20    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/oneplus/h2launcher/ItemInfo;>;"
    .restart local v22    # "launchIntent":Landroid/content/Intent;
    :cond_2
    const/16 v31, 0x0

    .line 2186
    .local v31, "startSearchPageIndex":I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4;->val$context:Landroid/content/Context;

    move/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v2, v4, v0, v1}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->findNextAvailableIconSpace(Landroid/content/Context;ILjava/util/ArrayList;)Landroid/util/Pair;

    move-result-object v16

    .line 2187
    .local v16, "coords":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;[I>;"
    if-nez v16, :cond_4

    .line 2188
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncherProvider()Lnet/oneplus/h2launcher/LauncherProvider;

    move-result-object v23

    .line 2194
    .local v23, "lp":Lnet/oneplus/h2launcher/LauncherProvider;
    const/4 v2, 0x1

    .line 2195
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x1

    .line 2194
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 2196
    .local v25, "numPagesToAdd":I
    :goto_2
    if-lez v25, :cond_3

    .line 2197
    invoke-virtual/range {v23 .. v23}, Lnet/oneplus/h2launcher/LauncherProvider;->generateNewScreenId()J

    move-result-wide v28

    .line 2199
    .restart local v28    # "screenId":J
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2200
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2201
    add-int/lit8 v25, v25, -0x1

    .line 2202
    goto :goto_2

    .line 2205
    .end local v28    # "screenId":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4;->val$context:Landroid/content/Context;

    move/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v2, v4, v0, v1}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->findNextAvailableIconSpace(Landroid/content/Context;ILjava/util/ArrayList;)Landroid/util/Pair;

    move-result-object v16

    .line 2207
    .end local v23    # "lp":Lnet/oneplus/h2launcher/LauncherProvider;
    .end local v25    # "numPagesToAdd":I
    :cond_4
    if-nez v16, :cond_5

    .line 2208
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Coordinates should not be null"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2212
    :cond_5
    instance-of v2, v11, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v2, :cond_6

    .line 2213
    move-object v0, v11

    check-cast v0, Lnet/oneplus/h2launcher/ShortcutInfo;

    move-object v3, v0

    .line 2221
    .end local v11    # "a":Lnet/oneplus/h2launcher/ItemInfo;
    .local v3, "shortcutInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4;->val$context:Landroid/content/Context;

    const-wide/16 v4, -0x64

    move-object/from16 v0, v16

    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    .line 2223
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, v16

    iget-object v8, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, [I

    const/4 v9, 0x0

    aget v8, v8, v9

    move-object/from16 v0, v16

    iget-object v9, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, [I

    const/16 v34, 0x1

    aget v9, v9, v34

    .line 2221
    invoke-static/range {v2 .. v9}, Lnet/oneplus/h2launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;JJII)V

    .line 2225
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2214
    .end local v3    # "shortcutInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    .restart local v11    # "a":Lnet/oneplus/h2launcher/ItemInfo;
    :cond_6
    instance-of v2, v11, Lnet/oneplus/h2launcher/AppInfo;

    if-eqz v2, :cond_7

    .line 2215
    check-cast v11, Lnet/oneplus/h2launcher/AppInfo;

    .end local v11    # "a":Lnet/oneplus/h2launcher/ItemInfo;
    invoke-virtual {v11}, Lnet/oneplus/h2launcher/AppInfo;->makeShortcut()Lnet/oneplus/h2launcher/ShortcutInfo;

    move-result-object v3

    .restart local v3    # "shortcutInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    goto :goto_3

    .line 2217
    .end local v3    # "shortcutInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    .restart local v11    # "a":Lnet/oneplus/h2launcher/ItemInfo;
    :cond_7
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Unexpected info type"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2227
    .end local v11    # "a":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v16    # "coords":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;[I>;"
    .end local v22    # "launchIntent":Landroid/content/Intent;
    .end local v31    # "startSearchPageIndex":I
    :cond_8
    monitor-exit v33
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2230
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    iget-object v2, v2, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4;->val$context:Landroid/content/Context;

    move-object/from16 v0, v32

    invoke-virtual {v2, v4, v0}, Lnet/oneplus/h2launcher/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2232
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 2233
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2234
    .local v10, "N":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_4
    move/from16 v0, v18

    if-ge v0, v10, :cond_c

    .line 2235
    move/from16 v30, v18

    .line 2236
    .local v30, "start":I
    add-int/lit8 v2, v18, 0x6

    if-gt v2, v10, :cond_a

    const/4 v15, 0x6

    .line 2237
    .local v15, "chunkSize":I
    :goto_5
    add-int v17, v30, v15

    .line 2238
    .local v17, "end":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    move/from16 v0, v30

    move/from16 v1, v17

    invoke-static {v2, v13, v0, v1}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->access$300(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;Ljava/util/ArrayList;II)V

    .line 2240
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 2241
    .local v24, "newBindedScreenId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2243
    .local v12, "addNotAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    move/from16 v21, v30

    .local v21, "j":I
    :goto_6
    move/from16 v0, v21

    move/from16 v1, v17

    if-ge v0, v1, :cond_b

    .line 2244
    move/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lnet/oneplus/h2launcher/ItemInfo;

    .line 2245
    .local v19, "info":Lnet/oneplus/h2launcher/ItemInfo;
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2246
    move-object/from16 v0, v19

    iget-wide v4, v0, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2247
    move-object/from16 v0, v19

    iget-wide v4, v0, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2248
    move-object/from16 v0, v19

    iget-wide v4, v0, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2243
    :cond_9
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 2236
    .end local v12    # "addNotAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    .end local v15    # "chunkSize":I
    .end local v17    # "end":I
    .end local v19    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v21    # "j":I
    .end local v24    # "newBindedScreenId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_a
    sub-int v15, v10, v18

    goto :goto_5

    .line 2252
    .restart local v12    # "addNotAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    .restart local v15    # "chunkSize":I
    .restart local v17    # "end":I
    .restart local v21    # "j":I
    .restart local v24    # "newBindedScreenId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    iget-object v2, v2, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    new-instance v4, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v4, v0, v1, v12}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4$1;-><init>(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v4}, Lnet/oneplus/h2launcher/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 2234
    add-int/lit8 v18, v18, 0x6

    goto :goto_4

    .line 2266
    .end local v10    # "N":I
    .end local v12    # "addNotAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    .end local v15    # "chunkSize":I
    .end local v17    # "end":I
    .end local v18    # "i":I
    .end local v21    # "j":I
    .end local v24    # "newBindedScreenId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v30    # "start":I
    :cond_c
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 2267
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    iget-object v2, v2, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    new-instance v4, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v4, v0, v1}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4$2;-><init>(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$4;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v4}, Lnet/oneplus/h2launcher/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 2276
    :cond_d
    return-void
.end method

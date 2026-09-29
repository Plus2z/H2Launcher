.class public Lnet/oneplus/h2launcher/MemoryDumpActivity;
.super Landroid/app/Activity;
.source "MemoryDumpActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MemoryDumpActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static dumpHprofAndShare(Landroid/content/Context;Lnet/oneplus/h2launcher/MemoryTracker;)V
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tracker"    # Lnet/oneplus/h2launcher/MemoryTracker;

    .prologue
    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v3, "body":Ljava/lang/StringBuilder;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v10, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    .line 100
    .local v6, "myPid":I
    invoke-virtual/range {p1 .. p1}, Lnet/oneplus/h2launcher/MemoryTracker;->getTrackedProcesses()[I

    move-result-object v13

    .line 101
    .local v13, "pids_orig":[I
    array-length v0, v13

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v13, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v12

    .line 102
    .local v12, "pids_copy":[I
    array-length v0, v12

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    aget v11, v12, v17

    .line 103
    .local v11, "pid":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lnet/oneplus/h2launcher/MemoryTracker;->getMemInfo(I)Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;

    move-result-object v5

    .line 104
    .local v5, "info":Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;
    if-eqz v5, :cond_0

    .line 105
    const-string v19, "pid "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " up="

    .line 106
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;->getUptime()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " pss="

    .line 107
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v5, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;->currentPss:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " uss="

    .line 108
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v5, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;->currentUss:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    .line 109
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_0
    if-ne v11, v6, :cond_1

    .line 112
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v19

    const-string v20, "%s/launcher-memory-%d.ahprof"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    .line 114
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    .line 112
    invoke-static/range {v19 .. v21}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 115
    .local v7, "path":Ljava/lang/String;
    const-string v19, "MemoryDumpActivity"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Dumping memory info for process "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :try_start_0
    invoke-static {v7}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_1
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .end local v7    # "path":Ljava/lang/String;
    :cond_1
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 118
    .restart local v7    # "path":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 119
    .local v4, "e":Ljava/io/IOException;
    const-string v19, "MemoryDumpActivity"

    const-string v20, "error dumping memory:"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 125
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "info":Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;
    .end local v7    # "path":Ljava/lang/String;
    .end local v11    # "pid":I
    :cond_2
    invoke-static {v10}, Lnet/oneplus/h2launcher/MemoryDumpActivity;->zipUp(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v16

    .line 127
    .local v16, "zipfile":Ljava/lang/String;
    if-nez v16, :cond_3

    .line 150
    :goto_2
    return-void

    .line 129
    :cond_3
    new-instance v15, Landroid/content/Intent;

    const-string v17, "android.intent.action.SEND"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v15, "shareIntent":Landroid/content/Intent;
    const-string v17, "application/zip"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 133
    .local v14, "pm":Landroid/content/pm/PackageManager;
    const-string v17, "android.intent.extra.SUBJECT"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v18

    const-string v19, "Launcher memory dump (%d)"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 134
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    .line 133
    invoke-static/range {v18 .. v20}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 142
    .local v2, "appVersion":Ljava/lang/String;
    :goto_3
    const-string v17, "\nApp version: "

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\nBuild: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string v17, "android.intent.extra.TEXT"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .local v8, "pathFile":Ljava/io/File;
    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    .line 148
    .local v9, "pathUri":Landroid/net/Uri;
    const-string v17, "android.intent.extra.STREAM"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 149
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 138
    .end local v2    # "appVersion":Ljava/lang/String;
    .end local v8    # "pathFile":Ljava/io/File;
    .end local v9    # "pathUri":Landroid/net/Uri;
    :catch_1
    move-exception v4

    .line 139
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "?"

    .restart local v2    # "appVersion":Ljava/lang/String;
    goto :goto_3
.end method

.method public static startDump(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lnet/oneplus/h2launcher/MemoryDumpActivity;->startDump(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 166
    return-void
.end method

.method public static startDump(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "andThen"    # Ljava/lang/Runnable;

    .prologue
    .line 169
    new-instance v0, Lnet/oneplus/h2launcher/MemoryDumpActivity$2;

    invoke-direct {v0, p0, p1}, Lnet/oneplus/h2launcher/MemoryDumpActivity$2;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 181
    .local v0, "connection":Landroid/content/ServiceConnection;
    const-string v1, "MemoryDumpActivity"

    const-string v2, "attempting to bind to memory tracker"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lnet/oneplus/h2launcher/MemoryTracker;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 184
    return-void
.end method

.method public static zipUp(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/high16 v0, 0x40000

    .line 56
    .local v0, "BUFSIZ":I
    const/high16 v12, 0x40000

    new-array v1, v12, [B

    .line 57
    .local v1, "buf":[B
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    const-string v13, "%s/hprof-%d.zip"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 58
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    .line 57
    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 60
    .local v9, "zipfilePath":Ljava/lang/String;
    const/4 v10, 0x0

    .line 62
    .local v10, "zos":Ljava/util/zip/ZipOutputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 63
    .local v8, "os":Ljava/io/OutputStream;
    new-instance v11, Ljava/util/zip/ZipOutputStream;

    new-instance v12, Ljava/io/BufferedOutputStream;

    invoke-direct {v12, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v11, v12}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 64
    .end local v10    # "zos":Ljava/util/zip/ZipOutputStream;
    .local v11, "zos":Ljava/util/zip/ZipOutputStream;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65
    .local v4, "filename":Ljava/lang/String;
    const/4 v5, 0x0

    .line 67
    .local v5, "is":Ljava/io/InputStream;
    :try_start_2
    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 68
    .end local v5    # "is":Ljava/io/InputStream;
    .local v6, "is":Ljava/io/InputStream;
    :try_start_3
    new-instance v3, Ljava/util/zip/ZipEntry;

    invoke-direct {v3, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 69
    .local v3, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v11, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 71
    :goto_1
    const/4 v13, 0x0

    const/high16 v14, 0x40000

    invoke-virtual {v6, v1, v13, v14}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .local v7, "len":I
    if-lez v7, :cond_1

    .line 72
    const/4 v13, 0x0

    invoke-virtual {v11, v1, v13, v7}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 76
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v7    # "len":I
    :catchall_0
    move-exception v12

    move-object v5, v6

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :goto_2
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v12
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 79
    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    move-object v10, v11

    .line 80
    .end local v8    # "os":Ljava/io/OutputStream;
    .end local v11    # "zos":Ljava/util/zip/ZipOutputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v10    # "zos":Ljava/util/zip/ZipOutputStream;
    :goto_3
    :try_start_5
    const-string v12, "MemoryDumpActivity"

    const-string v13, "error zipping up profile data"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 81
    const/4 v9, 0x0

    .line 83
    .end local v9    # "zipfilePath":Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 85
    :try_start_6
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 91
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_4
    return-object v9

    .line 74
    .end local v10    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v4    # "filename":Ljava/lang/String;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "len":I
    .restart local v8    # "os":Ljava/io/OutputStream;
    .restart local v9    # "zipfilePath":Ljava/lang/String;
    .restart local v11    # "zos":Ljava/util/zip/ZipOutputStream;
    :cond_1
    :try_start_7
    invoke-virtual {v11}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 76
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    .line 83
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v4    # "filename":Ljava/lang/String;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "len":I
    :catchall_1
    move-exception v12

    move-object v10, v11

    .end local v8    # "os":Ljava/io/OutputStream;
    .end local v11    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v10    # "zos":Ljava/util/zip/ZipOutputStream;
    :goto_5
    if-eqz v10, :cond_2

    .line 85
    :try_start_9
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 88
    :cond_2
    :goto_6
    throw v12

    .line 83
    .end local v10    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v8    # "os":Ljava/io/OutputStream;
    .restart local v11    # "zos":Ljava/util/zip/ZipOutputStream;
    :cond_3
    if-eqz v11, :cond_4

    .line 85
    :try_start_a
    invoke-virtual {v11}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    :cond_4
    :goto_7
    move-object v10, v11

    .line 91
    .end local v11    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v10    # "zos":Ljava/util/zip/ZipOutputStream;
    goto :goto_4

    .line 86
    .end local v10    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v11    # "zos":Ljava/util/zip/ZipOutputStream;
    :catch_1
    move-exception v12

    goto :goto_7

    .end local v8    # "os":Ljava/io/OutputStream;
    .end local v9    # "zipfilePath":Ljava/lang/String;
    .end local v11    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v2    # "e":Ljava/io/IOException;
    .restart local v10    # "zos":Ljava/util/zip/ZipOutputStream;
    :catch_2
    move-exception v12

    goto :goto_4

    .end local v2    # "e":Ljava/io/IOException;
    .restart local v9    # "zipfilePath":Ljava/lang/String;
    :catch_3
    move-exception v13

    goto :goto_6

    .line 83
    :catchall_2
    move-exception v12

    goto :goto_5

    .line 79
    :catch_4
    move-exception v2

    goto :goto_3

    .line 76
    .end local v10    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v4    # "filename":Ljava/lang/String;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v8    # "os":Ljava/io/OutputStream;
    .restart local v11    # "zos":Ljava/util/zip/ZipOutputStream;
    :catchall_3
    move-exception v12

    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 156
    new-instance v0, Lnet/oneplus/h2launcher/MemoryDumpActivity$1;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/MemoryDumpActivity$1;-><init>(Lnet/oneplus/h2launcher/MemoryDumpActivity;)V

    invoke-static {p0, v0}, Lnet/oneplus/h2launcher/MemoryDumpActivity;->startDump(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 162
    return-void
.end method

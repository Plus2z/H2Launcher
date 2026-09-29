.class Lcom/crashlytics/android/core/QueueFileLogStore;
.super Ljava/lang/Object;
.source "QueueFileLogStore.java"

# interfaces
.implements Lcom/crashlytics/android/core/FileLogStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/core/QueueFileLogStore$LogBytes;
    }
.end annotation


# instance fields
.field private logFile:Lio/fabric/sdk/android/services/common/QueueFile;

.field private final maxLogSize:I

.field private final workingFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .locals 0
    .param p1, "workingFile"    # Ljava/io/File;
    .param p2, "maxLogSize"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->workingFile:Ljava/io/File;

    .line 50
    iput p2, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->maxLogSize:I

    .line 51
    return-void
.end method

.method private doWriteToLog(JLjava/lang/String;)V
    .locals 9
    .param p1, "timestamp"    # J
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-object v3, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->logFile:Lio/fabric/sdk/android/services/common/QueueFile;

    if-nez v3, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    if-nez p3, :cond_2

    .line 139
    const-string p3, "null"

    .line 159
    :cond_2
    :try_start_0
    iget v3, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->maxLogSize:I

    div-int/lit8 v2, v3, 0x4

    .line 161
    .local v2, "quarterMaxLogSize":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_3

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 165
    :cond_3
    const-string v3, "\r"

    const-string v4, " "

    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 166
    const-string v3, "\n"

    const-string v4, " "

    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 168
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%d %s%n"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 169
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 171
    .local v1, "msgBytes":[B
    iget-object v3, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->logFile:Lio/fabric/sdk/android/services/common/QueueFile;

    invoke-virtual {v3, v1}, Lio/fabric/sdk/android/services/common/QueueFile;->add([B)V

    .line 174
    :goto_1
    iget-object v3, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->logFile:Lio/fabric/sdk/android/services/common/QueueFile;

    invoke-virtual {v3}, Lio/fabric/sdk/android/services/common/QueueFile;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->logFile:Lio/fabric/sdk/android/services/common/QueueFile;

    invoke-virtual {v3}, Lio/fabric/sdk/android/services/common/QueueFile;->usedBytes()I

    move-result v3

    iget v4, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->maxLogSize:I

    if-le v3, v4, :cond_0

    .line 175
    iget-object v3, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->logFile:Lio/fabric/sdk/android/services/common/QueueFile;

    invoke-virtual {v3}, Lio/fabric/sdk/android/services/common/QueueFile;->remove()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 177
    .end local v1    # "msgBytes":[B
    .end local v2    # "quarterMaxLogSize":I
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    const-string v5, "There was a problem writing to the Crashlytics log."

    invoke-interface {v3, v4, v5, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getLogBytes()Lcom/crashlytics/android/core/QueueFileLogStore$LogBytes;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 72
    iget-object v4, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->workingFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-object v3

    .line 77
    :cond_1
    invoke-direct {p0}, Lcom/crashlytics/android/core/QueueFileLogStore;->openLogFile()V

    .line 79
    iget-object v4, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->logFile:Lio/fabric/sdk/android/services/common/QueueFile;

    if-eqz v4, :cond_0

    .line 87
    const/4 v3, 0x1

    new-array v2, v3, [I

    aput v6, v2, v6

    .line 89
    .local v2, "offsetHolder":[I
    iget-object v3, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->logFile:Lio/fabric/sdk/android/services/common/QueueFile;

    invoke-virtual {v3}, Lio/fabric/sdk/android/services/common/QueueFile;->usedBytes()I

    move-result v3

    new-array v1, v3, [B

    .line 92
    .local v1, "logBytes":[B
    :try_start_0
    iget-object v3, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->logFile:Lio/fabric/sdk/android/services/common/QueueFile;

    new-instance v4, Lcom/crashlytics/android/core/QueueFileLogStore$1;

    invoke-direct {v4, p0, v1, v2}, Lcom/crashlytics/android/core/QueueFileLogStore$1;-><init>(Lcom/crashlytics/android/core/QueueFileLogStore;[B[I)V

    invoke-virtual {v3, v4}, Lio/fabric/sdk/android/services/common/QueueFile;->forEach(Lio/fabric/sdk/android/services/common/QueueFile$ElementReader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_1
    new-instance v3, Lcom/crashlytics/android/core/QueueFileLogStore$LogBytes;

    aget v4, v2, v6

    invoke-direct {v3, p0, v1, v4}, Lcom/crashlytics/android/core/QueueFileLogStore$LogBytes;-><init>(Lcom/crashlytics/android/core/QueueFileLogStore;[BI)V

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    const-string v5, "A problem occurred while reading the Crashlytics log file."

    invoke-interface {v3, v4, v5, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private openLogFile()V
    .locals 5

    .prologue
    .line 124
    iget-object v1, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->logFile:Lio/fabric/sdk/android/services/common/QueueFile;

    if-nez v1, :cond_0

    .line 126
    :try_start_0
    new-instance v1, Lio/fabric/sdk/android/services/common/QueueFile;

    iget-object v2, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->workingFile:Ljava/io/File;

    invoke-direct {v1, v2}, Lio/fabric/sdk/android/services/common/QueueFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->logFile:Lio/fabric/sdk/android/services/common/QueueFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not open log file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->workingFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public closeLogFile()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->logFile:Lio/fabric/sdk/android/services/common/QueueFile;

    const-string v1, "There was a problem closing the Crashlytics log file."

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->logFile:Lio/fabric/sdk/android/services/common/QueueFile;

    .line 115
    return-void
.end method

.method public deleteLogFile()V
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/crashlytics/android/core/QueueFileLogStore;->closeLogFile()V

    .line 120
    iget-object v0, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->workingFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 121
    return-void
.end method

.method public getLogAsByteString()Lcom/crashlytics/android/core/ByteString;
    .locals 4

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/crashlytics/android/core/QueueFileLogStore;->getLogBytes()Lcom/crashlytics/android/core/QueueFileLogStore$LogBytes;

    move-result-object v0

    .line 62
    .local v0, "logBytes":Lcom/crashlytics/android/core/QueueFileLogStore$LogBytes;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/crashlytics/android/core/QueueFileLogStore$LogBytes;->bytes:[B

    const/4 v2, 0x0

    iget v3, v0, Lcom/crashlytics/android/core/QueueFileLogStore$LogBytes;->offset:I

    invoke-static {v1, v2, v3}, Lcom/crashlytics/android/core/ByteString;->copyFrom([BII)Lcom/crashlytics/android/core/ByteString;

    move-result-object v1

    goto :goto_0
.end method

.method public getLogAsBytes()[B
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/crashlytics/android/core/QueueFileLogStore;->getLogBytes()Lcom/crashlytics/android/core/QueueFileLogStore$LogBytes;

    move-result-object v0

    .line 68
    .local v0, "logBytes":Lcom/crashlytics/android/core/QueueFileLogStore$LogBytes;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/crashlytics/android/core/QueueFileLogStore$LogBytes;->bytes:[B

    goto :goto_0
.end method

.method public writeToLog(JLjava/lang/String;)V
    .locals 1
    .param p1, "timestamp"    # J
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/crashlytics/android/core/QueueFileLogStore;->openLogFile()V

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/crashlytics/android/core/QueueFileLogStore;->doWriteToLog(JLjava/lang/String;)V

    .line 57
    return-void
.end method

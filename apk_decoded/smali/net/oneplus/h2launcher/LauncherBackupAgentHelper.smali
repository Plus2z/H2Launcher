.class public Lnet/oneplus/h2launcher/LauncherBackupAgentHelper;
.super Landroid/app/backup/BackupAgentHelper;
.source "LauncherBackupAgentHelper.java"


# static fields
.field static final DEBUG:Z = false

.field private static final LAUNCHER_DATA_PREFIX:Ljava/lang/String; = "L"

.field private static final TAG:Ljava/lang/String;

.field static final VERBOSE:Z

.field private static sBackupManager:Landroid/app/backup/BackupManager;


# instance fields
.field private mHelper:Lnet/oneplus/h2launcher/LauncherBackupHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lnet/oneplus/h2launcher/LauncherBackupAgentHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/LauncherBackupAgentHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method

.method public static dataChanged(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    sget-object v0, Lnet/oneplus/h2launcher/LauncherBackupAgentHelper;->sBackupManager:Landroid/app/backup/BackupManager;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-direct {v0, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/oneplus/h2launcher/LauncherBackupAgentHelper;->sBackupManager:Landroid/app/backup/BackupManager;

    .line 53
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/LauncherBackupAgentHelper;->sBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 54
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/backup/BackupAgentHelper;->onCreate()V

    .line 61
    new-instance v0, Lnet/oneplus/h2launcher/LauncherBackupHelper;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/LauncherBackupHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/LauncherBackupAgentHelper;->mHelper:Lnet/oneplus/h2launcher/LauncherBackupHelper;

    .line 62
    const-string v0, "L"

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherBackupAgentHelper;->mHelper:Lnet/oneplus/h2launcher/LauncherBackupHelper;

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/LauncherBackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 63
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 9
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .param p2, "appVersionCode"    # I
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    sget-boolean v0, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_LOLLIPOP:Z

    if-nez v0, :cond_0

    .line 70
    sget-object v0, Lnet/oneplus/h2launcher/LauncherBackupAgentHelper;->TAG:Ljava/lang/String;

    const-string v1, "You shall not pass!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    sget-object v0, Lnet/oneplus/h2launcher/LauncherBackupAgentHelper;->TAG:Ljava/lang/String;

    const-string v1, "Restore is only supported on devices running Lollipop and above."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncherProvider()Lnet/oneplus/h2launcher/LauncherProvider;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherProvider;->createEmptyDB()V

    .line 80
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    .line 82
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherBackupAgentHelper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lnet/oneplus/h2launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 84
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    .line 85
    .local v8, "hasData":Z
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v6    # "c":Landroid/database/Cursor;
    :goto_1
    if-eqz v8, :cond_3

    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherBackupAgentHelper;->mHelper:Lnet/oneplus/h2launcher/LauncherBackupHelper;

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->restoreSuccessful:Z

    if-eqz v0, :cond_3

    .line 93
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncherProvider()Lnet/oneplus/h2launcher/LauncherProvider;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherProvider;->clearFlagEmptyDbCreated()V

    .line 94
    invoke-static {p0}, Lnet/oneplus/h2launcher/LauncherClings;->markFirstRunClingDismissed(Landroid/content/Context;)V

    .line 97
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherBackupAgentHelper;->mHelper:Lnet/oneplus/h2launcher/LauncherBackupHelper;

    iget v0, v0, Lnet/oneplus/h2launcher/LauncherBackupHelper;->restoredBackupVersion:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 98
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncherProvider()Lnet/oneplus/h2launcher/LauncherProvider;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherProvider;->updateFolderItemsRank()V

    .line 101
    :cond_1
    sget-boolean v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->ENABLED:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherBackupAgentHelper;->mHelper:Lnet/oneplus/h2launcher/LauncherBackupHelper;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherBackupHelper;->shouldAttemptWorkspaceMigration()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherBackupAgentHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherBackupAgentHelper;->mHelper:Lnet/oneplus/h2launcher/LauncherBackupHelper;

    iget-object v1, v1, Lnet/oneplus/h2launcher/LauncherBackupHelper;->widgetSizes:Ljava/util/HashSet;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherBackupAgentHelper;->mHelper:Lnet/oneplus/h2launcher/LauncherBackupHelper;

    iget-object v2, v2, Lnet/oneplus/h2launcher/LauncherBackupHelper;->migrationCompatibleProfileData:Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;->markForMigration(Landroid/content/Context;Ljava/util/HashSet;Lnet/oneplus/h2launcher/backup/BackupProtos$DeviceProfieData;)V

    .line 106
    :cond_2
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncherProvider()Lnet/oneplus/h2launcher/LauncherProvider;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherProvider;->convertShortcutsToLauncherActivities()V

    goto :goto_0

    .line 86
    .end local v8    # "hasData":Z
    :catch_0
    move-exception v7

    .line 88
    .local v7, "e":Ljava/lang/Exception;
    sget-object v0, Lnet/oneplus/h2launcher/LauncherBackupAgentHelper;->TAG:Ljava/lang/String;

    const-string v1, "Restore failed"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    const/4 v8, 0x0

    .restart local v8    # "hasData":Z
    goto :goto_1

    .line 109
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncherProvider()Lnet/oneplus/h2launcher/LauncherProvider;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherProvider;->createEmptyDB()V

    goto :goto_0
.end method

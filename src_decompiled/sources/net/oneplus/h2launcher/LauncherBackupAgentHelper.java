package net.oneplus.h2launcher;

import android.app.backup.BackupAgentHelper;
import android.app.backup.BackupDataInput;
import android.app.backup.BackupManager;
import android.content.Context;
import android.database.Cursor;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.IOException;
import net.oneplus.h2launcher.LauncherSettings;
import net.oneplus.h2launcher.model.GridSizeMigrationTask;

/* loaded from: classes.dex */
public class LauncherBackupAgentHelper extends BackupAgentHelper {
    static final boolean DEBUG = false;
    private static final String LAUNCHER_DATA_PREFIX = "L";
    private static final String TAG = LauncherBackupAgentHelper.class.getSimpleName();
    static final boolean VERBOSE = false;
    private static BackupManager sBackupManager;
    private LauncherBackupHelper mHelper;

    public static void dataChanged(Context context) {
        if (sBackupManager == null) {
            sBackupManager = new BackupManager(context);
        }
        sBackupManager.dataChanged();
    }

    @Override // android.app.backup.BackupAgent
    public void onCreate() {
        super.onCreate();
        this.mHelper = new LauncherBackupHelper(this);
        addHelper(LAUNCHER_DATA_PREFIX, this.mHelper);
    }

    @Override // android.app.backup.BackupAgentHelper, android.app.backup.BackupAgent
    public void onRestore(BackupDataInput data, int appVersionCode, ParcelFileDescriptor newState) throws IOException {
        boolean hasData;
        if (!Utilities.ATLEAST_LOLLIPOP) {
            Log.i(TAG, "You shall not pass!!!");
            Log.d(TAG, "Restore is only supported on devices running Lollipop and above.");
            return;
        }
        LauncherAppState.getLauncherProvider().createEmptyDB();
        try {
            super.onRestore(data, appVersionCode, newState);
            Cursor c = getContentResolver().query(LauncherSettings.Favorites.CONTENT_URI, null, null, null, null);
            hasData = c.moveToNext();
            c.close();
        } catch (Exception e) {
            Log.e(TAG, "Restore failed", e);
            hasData = false;
        }
        if (hasData && this.mHelper.restoreSuccessful) {
            LauncherAppState.getLauncherProvider().clearFlagEmptyDbCreated();
            LauncherClings.markFirstRunClingDismissed(this);
            if (this.mHelper.restoredBackupVersion <= 3) {
                LauncherAppState.getLauncherProvider().updateFolderItemsRank();
            }
            if (GridSizeMigrationTask.ENABLED && this.mHelper.shouldAttemptWorkspaceMigration()) {
                GridSizeMigrationTask.markForMigration(getApplicationContext(), this.mHelper.widgetSizes, this.mHelper.migrationCompatibleProfileData);
            }
            LauncherAppState.getLauncherProvider().convertShortcutsToLauncherActivities();
            return;
        }
        LauncherAppState.getLauncherProvider().createEmptyDB();
    }
}

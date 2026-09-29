package net.oneplus.h2launcher;

import android.app.backup.BackupDataInputStream;
import android.app.backup.BackupDataOutput;
import android.app.backup.BackupHelper;
import android.app.backup.BackupManager;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.XmlResourceParser;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import com.google.protobuf.nano.MessageNano;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.zip.CRC32;
import net.oneplus.h2launcher.LauncherSettings;
import net.oneplus.h2launcher.backup.BackupProtos;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.compat.UserManagerCompat;
import net.oneplus.h2launcher.globalsearch.GlobalSearchDbHelper;
import net.oneplus.h2launcher.model.GridSizeMigrationTask;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class LauncherBackupHelper implements BackupHelper {
    private static final int APPWIDGET_ID_INDEX = 4;
    private static final int APPWIDGET_PROVIDER_INDEX = 3;
    private static final int BACKUP_VERSION = 4;
    private static final int CELLX_INDEX = 5;
    private static final int CELLY_INDEX = 6;
    private static final int CONTAINER_INDEX = 7;
    private static final boolean DEBUG = false;
    private static final int ICON_INDEX = 8;
    private static final int ICON_PACKAGE_INDEX = 9;
    private static final int ICON_RESOURCE_INDEX = 10;
    private static final int ICON_TYPE_INDEX = 11;
    private static final int ID_INDEX = 0;
    private static final int ID_MODIFIED = 1;
    private static final int INTENT_INDEX = 2;
    private static final int ITEM_TYPE_INDEX = 12;
    private static final String JOURNAL_KEY = "#";
    private static final int MAX_ICONS_PER_PASS = 10;
    private static final int MAX_JOURNAL_SIZE = 1000000;
    private static final int MAX_WIDGETS_PER_PASS = 5;
    private static final int RANK_INDEX = 18;
    private static final int SCREEN_INDEX = 13;
    private static final int SCREEN_RANK_INDEX = 2;
    private static final int SPANX_INDEX = 14;
    private static final int SPANY_INDEX = 15;
    private static final String TAG = "LauncherBackupHelper";
    private static final int TITLE_INDEX = 16;
    private static final boolean VERBOSE = false;
    private AssetCache mAssetCache;
    private boolean mBackupDataWasUpdated;
    private BackupManager mBackupManager;
    final Context mContext;
    private BackupProtos.DeviceProfieData mDeviceProfileData;
    private InvariantDeviceProfile mIdp;
    private long mLastBackupRestoreTime;
    private final long mUserSerial;
    BackupProtos.DeviceProfieData migrationCompatibleProfileData;
    private static final String[] FAVORITE_PROJECTION = {GlobalSearchDbHelper.COLUMN_ID, LauncherSettings.ChangeLogColumns.MODIFIED, LauncherSettings.BaseLauncherColumns.INTENT, LauncherSettings.Favorites.APPWIDGET_PROVIDER, LauncherSettings.Favorites.APPWIDGET_ID, LauncherSettings.Favorites.CELLX, LauncherSettings.Favorites.CELLY, "container", "icon", LauncherSettings.BaseLauncherColumns.ICON_PACKAGE, LauncherSettings.BaseLauncherColumns.ICON_RESOURCE, "iconType", LauncherSettings.BaseLauncherColumns.ITEM_TYPE, LauncherSettings.Favorites.SCREEN, LauncherSettings.Favorites.SPANX, LauncherSettings.Favorites.SPANY, "title", "profileId", LauncherSettings.Favorites.RANK};
    private static final String[] SCREEN_PROJECTION = {GlobalSearchDbHelper.COLUMN_ID, LauncherSettings.ChangeLogColumns.MODIFIED, LauncherSettings.WorkspaceScreens.SCREEN_RANK};
    private byte[] mBuffer = new byte[512];
    HashSet<String> widgetSizes = new HashSet<>();
    int restoredBackupVersion = 1;
    private int mHotseatShift = 0;
    private final HashSet<String> mExistingKeys = new HashSet<>();
    private final ArrayList<BackupProtos.Key> mKeys = new ArrayList<>();
    boolean restoreSuccessful = true;
    private final ItemTypeMatcher[] mItemTypeMatchers = new ItemTypeMatcher[7];

    public LauncherBackupHelper(Context context) {
        this.mContext = context;
        UserManagerCompat userManager = UserManagerCompat.getInstance(this.mContext);
        this.mUserSerial = userManager.getSerialNumberForUser(UserHandleCompat.myUserHandle());
    }

    private void dataChanged() {
        if (this.mBackupManager == null) {
            this.mBackupManager = new BackupManager(this.mContext);
        }
        this.mBackupManager.dataChanged();
    }

    private void applyJournal(BackupProtos.Journal journal) {
        this.mLastBackupRestoreTime = journal.t;
        this.mExistingKeys.clear();
        if (journal.key != null) {
            for (BackupProtos.Key key : journal.key) {
                this.mExistingKeys.add(keyToBackupKey(key));
            }
        }
        this.restoredBackupVersion = journal.backupVersion;
    }

    @Override // android.app.backup.BackupHelper
    public void performBackup(ParcelFileDescriptor oldState, BackupDataOutput data, ParcelFileDescriptor newState) {
        BackupProtos.Journal in = readJournal(oldState);
        if (!launcherIsReady()) {
            dataChanged();
            writeJournal(newState, in);
            return;
        }
        if (this.mDeviceProfileData == null) {
            LauncherAppState app = LauncherAppState.getInstance();
            this.mIdp = app.getInvariantDeviceProfile();
            this.mDeviceProfileData = initDeviceProfileData(this.mIdp);
            this.mAssetCache = app.getAssetCache();
        }
        Log.v(TAG, "lastBackupTime = " + in.t);
        this.mKeys.clear();
        applyJournal(in);
        long newBackupTime = System.currentTimeMillis();
        this.mBackupDataWasUpdated = false;
        try {
            backupFavorites(data);
            backupScreens(data);
            backupIcons(data);
            backupWidgets(data);
            HashSet<String> validKeys = new HashSet<>();
            Iterator<BackupProtos.Key> it = this.mKeys.iterator();
            while (it.hasNext()) {
                BackupProtos.Key key = it.next();
                validKeys.add(keyToBackupKey(key));
            }
            this.mExistingKeys.removeAll(validKeys);
            Iterator<String> it2 = this.mExistingKeys.iterator();
            while (it2.hasNext()) {
                String deleted = it2.next();
                data.writeEntityHeader(deleted, -1);
                this.mBackupDataWasUpdated = true;
            }
            this.mExistingKeys.clear();
            if (!this.mBackupDataWasUpdated) {
                this.mBackupDataWasUpdated = (in.profile != null && Arrays.equals(BackupProtos.DeviceProfieData.toByteArray(in.profile), BackupProtos.DeviceProfieData.toByteArray(this.mDeviceProfileData)) && in.backupVersion == 4 && in.appVersion == getAppVersion()) ? false : true;
            }
            if (this.mBackupDataWasUpdated) {
                this.mLastBackupRestoreTime = newBackupTime;
                BackupProtos.Journal state = getCurrentStateJournal();
                writeRowToBackup(JOURNAL_KEY, state, data);
            }
        } catch (IOException e) {
            Log.e(TAG, "launcher backup has failed", e);
        }
        writeNewStateDescription(newState);
    }

    private boolean isBackupCompatible(BackupProtos.Journal oldState) {
        BackupProtos.DeviceProfieData currentProfile = this.mDeviceProfileData;
        BackupProtos.DeviceProfieData oldProfile = oldState.profile;
        if (oldProfile == null || oldProfile.desktopCols == 0.0f) {
            return true;
        }
        boolean isHotseatCompatible = false;
        if (currentProfile.allappsRank >= oldProfile.hotseatCount) {
            isHotseatCompatible = true;
            this.mHotseatShift = 0;
        }
        if (currentProfile.allappsRank >= oldProfile.allappsRank && currentProfile.hotseatCount - currentProfile.allappsRank >= oldProfile.hotseatCount - oldProfile.allappsRank) {
            isHotseatCompatible = true;
            this.mHotseatShift = currentProfile.allappsRank - oldProfile.allappsRank;
        }
        if (!isHotseatCompatible) {
            return false;
        }
        if (currentProfile.desktopCols >= oldProfile.desktopCols && currentProfile.desktopRows >= oldProfile.desktopRows) {
            return true;
        }
        if (!GridSizeMigrationTask.ENABLED) {
            return false;
        }
        this.migrationCompatibleProfileData = initDeviceProfileData(this.mIdp);
        this.migrationCompatibleProfileData.desktopCols = oldProfile.desktopCols;
        this.migrationCompatibleProfileData.desktopRows = oldProfile.desktopRows;
        this.migrationCompatibleProfileData.hotseatCount = oldProfile.hotseatCount;
        this.migrationCompatibleProfileData.allappsRank = oldProfile.allappsRank;
        return true;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x007d -> B:15:0x0004). Please report as a decompilation issue!!! */
    @Override // android.app.backup.BackupHelper
    public void restoreEntity(BackupDataInputStream data) {
        if (this.restoreSuccessful) {
            if (this.mDeviceProfileData == null) {
                this.mIdp = new InvariantDeviceProfile(this.mContext);
                this.mDeviceProfileData = initDeviceProfileData(this.mIdp);
                this.mAssetCache = new AssetCache(this.mContext, this.mIdp);
            }
            int dataSize = data.size();
            if (this.mBuffer.length < dataSize) {
                this.mBuffer = new byte[dataSize];
            }
            try {
                data.read(this.mBuffer, 0, dataSize);
                String backupKey = data.getKey();
                if (JOURNAL_KEY.equals(backupKey)) {
                    if (!this.mKeys.isEmpty()) {
                        Log.wtf(TAG, keyToBackupKey(this.mKeys.get(0)) + " received after " + JOURNAL_KEY);
                        this.restoreSuccessful = false;
                    } else {
                        BackupProtos.Journal journal = new BackupProtos.Journal();
                        MessageNano.mergeFrom(journal, readCheckedBytes(this.mBuffer, dataSize));
                        applyJournal(journal);
                        this.restoreSuccessful = isBackupCompatible(journal);
                    }
                } else if (this.mExistingKeys.isEmpty() || this.mExistingKeys.contains(backupKey)) {
                    BackupProtos.Key key = backupKeyToKey(backupKey);
                    this.mKeys.add(key);
                    switch (key.type) {
                        case 1:
                            restoreFavorite(key, this.mBuffer, dataSize);
                            break;
                        case 2:
                            restoreScreen(key, this.mBuffer, dataSize);
                            break;
                        case 3:
                            restoreIcon(key, this.mBuffer, dataSize);
                            break;
                        case 4:
                            restoreWidget(key, this.mBuffer, dataSize);
                            break;
                        default:
                            Log.w(TAG, "unknown restore entity type: " + key.type);
                            this.mKeys.remove(key);
                            break;
                    }
                }
            } catch (IOException e) {
                Log.w(TAG, "ignoring unparsable backup entry", e);
            }
        }
    }

    @Override // android.app.backup.BackupHelper
    public void writeNewStateDescription(ParcelFileDescriptor newState) {
        writeJournal(newState, getCurrentStateJournal());
    }

    private BackupProtos.Journal getCurrentStateJournal() {
        BackupProtos.Journal journal = new BackupProtos.Journal();
        journal.t = this.mLastBackupRestoreTime;
        journal.key = (BackupProtos.Key[]) this.mKeys.toArray(new BackupProtos.Key[this.mKeys.size()]);
        journal.appVersion = getAppVersion();
        journal.backupVersion = 4;
        journal.profile = this.mDeviceProfileData;
        return journal;
    }

    private int getAppVersion() {
        try {
            return this.mContext.getPackageManager().getPackageInfo(this.mContext.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            return 0;
        }
    }

    private BackupProtos.DeviceProfieData initDeviceProfileData(InvariantDeviceProfile profile) {
        BackupProtos.DeviceProfieData data = new BackupProtos.DeviceProfieData();
        data.desktopRows = profile.numRows;
        data.desktopCols = profile.numColumns;
        data.hotseatCount = profile.numHotseatIcons;
        data.allappsRank = profile.hotseatAllAppsRank;
        return data;
    }

    private void backupFavorites(BackupDataOutput data) throws IOException {
        ContentResolver cr = this.mContext.getContentResolver();
        Cursor cursor = cr.query(LauncherSettings.Favorites.CONTENT_URI, FAVORITE_PROJECTION, getUserSelectionArg(), null, null);
        try {
            cursor.moveToPosition(-1);
            while (cursor.moveToNext()) {
                long id = cursor.getLong(0);
                long updateTime = cursor.getLong(1);
                BackupProtos.Key key = getKey(1, id);
                this.mKeys.add(key);
                String backupKey = keyToBackupKey(key);
                if (!this.mExistingKeys.contains(backupKey) || updateTime >= this.mLastBackupRestoreTime || this.restoredBackupVersion < 4) {
                    writeRowToBackup(key, packFavorite(cursor), data);
                }
            }
        } finally {
            cursor.close();
        }
    }

    private void restoreFavorite(BackupProtos.Key key, byte[] buffer, int dataSize) throws IOException {
        ContentResolver cr = this.mContext.getContentResolver();
        ContentValues values = unpackFavorite(buffer, dataSize);
        cr.insert(LauncherSettings.Favorites.CONTENT_URI, values);
    }

    private void backupScreens(BackupDataOutput data) throws IOException {
        ContentResolver cr = this.mContext.getContentResolver();
        Cursor cursor = cr.query(LauncherSettings.WorkspaceScreens.CONTENT_URI, SCREEN_PROJECTION, null, null, null);
        try {
            cursor.moveToPosition(-1);
            while (cursor.moveToNext()) {
                long id = cursor.getLong(0);
                long updateTime = cursor.getLong(1);
                BackupProtos.Key key = getKey(2, id);
                this.mKeys.add(key);
                String backupKey = keyToBackupKey(key);
                if (!this.mExistingKeys.contains(backupKey) || updateTime >= this.mLastBackupRestoreTime) {
                    writeRowToBackup(key, packScreen(cursor), data);
                }
            }
        } finally {
            cursor.close();
        }
    }

    private void restoreScreen(BackupProtos.Key key, byte[] buffer, int dataSize) throws IOException {
        ContentResolver cr = this.mContext.getContentResolver();
        ContentValues values = unpackScreen(buffer, dataSize);
        cr.insert(LauncherSettings.WorkspaceScreens.CONTENT_URI, values);
    }

    private void backupIcons(BackupDataOutput data) throws IOException {
        ContentResolver cr = this.mContext.getContentResolver();
        int dpi = this.mContext.getResources().getDisplayMetrics().densityDpi;
        UserHandleCompat myUserHandle = UserHandleCompat.myUserHandle();
        int backupUpIconCount = 0;
        String where = "(itemType=0 OR itemType=1) AND " + getUserSelectionArg();
        Cursor cursor = cr.query(LauncherSettings.Favorites.CONTENT_URI, FAVORITE_PROJECTION, where, null, null);
        try {
            cursor.moveToPosition(-1);
            while (cursor.moveToNext()) {
                long id = cursor.getLong(0);
                String intentDescription = cursor.getString(2);
                try {
                    try {
                        Intent intent = Intent.parseUri(intentDescription, 0);
                        ComponentName cn = intent.getComponent();
                        BackupProtos.Key key = null;
                        String backupKey = null;
                        if (cn != null) {
                            key = getKey(3, cn.flattenToShortString());
                            backupKey = keyToBackupKey(key);
                        } else {
                            Log.w(TAG, "empty intent on application favorite: " + id);
                        }
                        if (this.mExistingKeys.contains(backupKey)) {
                            this.mKeys.add(key);
                        } else if (backupKey != null) {
                            if (backupUpIconCount < 10) {
                                Bitmap icon = this.mAssetCache.getIcon(intent, myUserHandle);
                                if (icon != null && !this.mAssetCache.isDefaultIcon(icon, myUserHandle)) {
                                    writeRowToBackup(key, packIcon(dpi, icon), data);
                                    this.mKeys.add(key);
                                    backupUpIconCount++;
                                }
                            } else {
                                dataChanged();
                            }
                        }
                    } catch (IOException e) {
                        Log.e(TAG, "unable to save application icon for favorite: " + id);
                    }
                } catch (URISyntaxException e2) {
                    Log.e(TAG, "invalid URI on application favorite: " + id);
                }
            }
        } finally {
            cursor.close();
        }
    }

    private void restoreIcon(BackupProtos.Key key, byte[] buffer, int dataSize) throws IOException {
        BackupProtos.Resource res = (BackupProtos.Resource) unpackProto(new BackupProtos.Resource(), buffer, dataSize);
        Bitmap icon = BitmapFactory.decodeByteArray(res.data, 0, res.data.length);
        if (icon == null) {
            Log.w(TAG, "failed to unpack icon for " + key.name);
        } else {
            this.mAssetCache.preloadIcon(ComponentName.unflattenFromString(key.name), icon, res.dpi, "", this.mUserSerial, this.mIdp);
        }
    }

    private void backupWidgets(BackupDataOutput data) throws IOException {
        ContentResolver cr = this.mContext.getContentResolver();
        int dpi = this.mContext.getResources().getDisplayMetrics().densityDpi;
        int backupWidgetCount = 0;
        String where = "itemType=4 AND " + getUserSelectionArg();
        Cursor cursor = cr.query(LauncherSettings.Favorites.CONTENT_URI, FAVORITE_PROJECTION, where, null, null);
        try {
            cursor.moveToPosition(-1);
            while (cursor.moveToNext()) {
                long id = cursor.getLong(0);
                String providerName = cursor.getString(3);
                ComponentName provider = ComponentName.unflattenFromString(providerName);
                BackupProtos.Key key = null;
                String backupKey = null;
                if (provider != null) {
                    key = getKey(4, providerName);
                    backupKey = keyToBackupKey(key);
                } else {
                    Log.w(TAG, "empty intent on appwidget: " + id);
                }
                if (this.mExistingKeys.contains(backupKey) && this.restoredBackupVersion >= 3) {
                    this.mKeys.add(key);
                } else if (backupKey != null) {
                    if (backupWidgetCount < 5) {
                        UserHandleCompat user = UserHandleCompat.myUserHandle();
                        writeRowToBackup(key, packWidget(dpi, provider, user), data);
                        this.mKeys.add(key);
                        backupWidgetCount++;
                    } else {
                        dataChanged();
                    }
                }
            }
        } finally {
            cursor.close();
        }
    }

    private void restoreWidget(BackupProtos.Key key, byte[] buffer, int dataSize) throws IOException {
        BackupProtos.Widget widget = (BackupProtos.Widget) unpackProto(new BackupProtos.Widget(), buffer, dataSize);
        if (widget.icon.data != null) {
            Bitmap icon = BitmapFactory.decodeByteArray(widget.icon.data, 0, widget.icon.data.length);
            if (icon == null) {
                Log.w(TAG, "failed to unpack widget icon for " + key.name);
            } else {
                this.mAssetCache.preloadIcon(ComponentName.unflattenFromString(widget.provider), icon, widget.icon.dpi, widget.label, this.mUserSerial, this.mIdp);
            }
        }
        this.widgetSizes.add(widget.provider + JOURNAL_KEY + widget.minSpanX + "," + widget.minSpanY);
    }

    private BackupProtos.Key getKey(int type, long id) {
        BackupProtos.Key key = new BackupProtos.Key();
        key.type = type;
        key.id = id;
        key.checksum = checkKey(key);
        return key;
    }

    private BackupProtos.Key getKey(int type, String name) {
        BackupProtos.Key key = new BackupProtos.Key();
        key.type = type;
        key.name = name;
        key.checksum = checkKey(key);
        return key;
    }

    private String keyToBackupKey(BackupProtos.Key key) {
        return Base64.encodeToString(BackupProtos.Key.toByteArray(key), 2);
    }

    private BackupProtos.Key backupKeyToKey(String backupKey) throws InvalidBackupException {
        try {
            BackupProtos.Key key = BackupProtos.Key.parseFrom(Base64.decode(backupKey, 0));
            if (key.checksum != checkKey(key)) {
                throw new InvalidBackupException("invalid key read from stream" + backupKey);
            }
            return key;
        } catch (InvalidProtocolBufferNanoException e) {
            throw new InvalidBackupException(e);
        } catch (IllegalArgumentException e2) {
            throw new InvalidBackupException(e2);
        }
    }

    private long checkKey(BackupProtos.Key key) {
        CRC32 checksum = new CRC32();
        checksum.update(key.type);
        checksum.update((int) (key.id & 65535));
        checksum.update((int) ((key.id >> 32) & 65535));
        if (!TextUtils.isEmpty(key.name)) {
            checksum.update(key.name.getBytes());
        }
        return checksum.getValue();
    }

    private boolean isReplaceableHotseatItem(BackupProtos.Favorite favorite) {
        return favorite.container == -101 && favorite.intent != null && (favorite.itemType == 0 || favorite.itemType == 1);
    }

    private BackupProtos.Favorite packFavorite(Cursor c) {
        BackupProtos.Favorite favorite = new BackupProtos.Favorite();
        favorite.id = c.getLong(0);
        favorite.screen = c.getInt(13);
        favorite.container = c.getInt(7);
        favorite.cellX = c.getInt(5);
        favorite.cellY = c.getInt(6);
        favorite.spanX = c.getInt(14);
        favorite.spanY = c.getInt(15);
        favorite.iconType = c.getInt(11);
        favorite.rank = c.getInt(18);
        String title = c.getString(16);
        if (!TextUtils.isEmpty(title)) {
            favorite.title = title;
        }
        String intentDescription = c.getString(2);
        Intent intent = null;
        if (!TextUtils.isEmpty(intentDescription)) {
            try {
                intent = Intent.parseUri(intentDescription, 0);
                intent.removeExtra(ItemInfo.EXTRA_PROFILE);
                favorite.intent = intent.toUri(0);
            } catch (URISyntaxException e) {
                Log.e(TAG, "Invalid intent", e);
            }
        }
        favorite.itemType = c.getInt(12);
        if (favorite.itemType == 4) {
            favorite.appWidgetId = c.getInt(4);
            String appWidgetProvider = c.getString(3);
            if (!TextUtils.isEmpty(appWidgetProvider)) {
                favorite.appWidgetProvider = appWidgetProvider;
            }
        } else if (favorite.itemType == 1) {
            if (favorite.iconType == 0) {
                String iconPackage = c.getString(9);
                if (!TextUtils.isEmpty(iconPackage)) {
                    favorite.iconPackage = iconPackage;
                }
                String iconResource = c.getString(10);
                if (!TextUtils.isEmpty(iconResource)) {
                    favorite.iconResource = iconResource;
                }
            }
            byte[] blob = c.getBlob(8);
            if (blob != null && blob.length > 0) {
                favorite.icon = blob;
            }
        }
        if (isReplaceableHotseatItem(favorite) && intent != null && intent.getComponent() != null) {
            PackageManager pm = this.mContext.getPackageManager();
            ActivityInfo activity = null;
            try {
                activity = pm.getActivityInfo(intent.getComponent(), 0);
            } catch (PackageManager.NameNotFoundException e2) {
                Log.e(TAG, "Target not found", e2);
            }
            if (activity != null) {
                int i = 0;
                while (true) {
                    if (i >= this.mItemTypeMatchers.length) {
                        break;
                    }
                    if (this.mItemTypeMatchers[i] == null) {
                        this.mItemTypeMatchers[i] = new ItemTypeMatcher(CommonAppTypeParser.getResourceForItemType(i));
                    }
                    if (!this.mItemTypeMatchers[i].matches(activity, pm)) {
                        i++;
                    } else {
                        favorite.targetType = i;
                        break;
                    }
                }
            }
        }
        return favorite;
    }

    private ContentValues unpackFavorite(byte[] buffer, int dataSize) throws IOException {
        BackupProtos.Favorite favorite = (BackupProtos.Favorite) unpackProto(new BackupProtos.Favorite(), buffer, dataSize);
        if (favorite.container == -101) {
            favorite.screen += this.mHotseatShift;
        }
        ContentValues values = new ContentValues();
        values.put(GlobalSearchDbHelper.COLUMN_ID, Long.valueOf(favorite.id));
        values.put(LauncherSettings.Favorites.SCREEN, Integer.valueOf(favorite.screen));
        values.put("container", Integer.valueOf(favorite.container));
        values.put(LauncherSettings.Favorites.CELLX, Integer.valueOf(favorite.cellX));
        values.put(LauncherSettings.Favorites.CELLY, Integer.valueOf(favorite.cellY));
        values.put(LauncherSettings.Favorites.SPANX, Integer.valueOf(favorite.spanX));
        values.put(LauncherSettings.Favorites.SPANY, Integer.valueOf(favorite.spanY));
        values.put(LauncherSettings.Favorites.RANK, Integer.valueOf(favorite.rank));
        if (favorite.itemType == 1) {
            values.put("iconType", Integer.valueOf(favorite.iconType));
            if (favorite.iconType == 0) {
                values.put(LauncherSettings.BaseLauncherColumns.ICON_PACKAGE, favorite.iconPackage);
                values.put(LauncherSettings.BaseLauncherColumns.ICON_RESOURCE, favorite.iconResource);
            }
            values.put("icon", favorite.icon);
        }
        if (!TextUtils.isEmpty(favorite.title)) {
            values.put("title", favorite.title);
        } else {
            values.put("title", "");
        }
        if (!TextUtils.isEmpty(favorite.intent)) {
            values.put(LauncherSettings.BaseLauncherColumns.INTENT, favorite.intent);
        }
        values.put(LauncherSettings.BaseLauncherColumns.ITEM_TYPE, Integer.valueOf(favorite.itemType));
        UserHandleCompat myUserHandle = UserHandleCompat.myUserHandle();
        long userSerialNumber = UserManagerCompat.getInstance(this.mContext).getSerialNumberForUser(myUserHandle);
        values.put("profileId", Long.valueOf(userSerialNumber));
        BackupProtos.DeviceProfieData currentProfile = this.migrationCompatibleProfileData == null ? this.mDeviceProfileData : this.migrationCompatibleProfileData;
        if (favorite.itemType == 4) {
            if (!TextUtils.isEmpty(favorite.appWidgetProvider)) {
                values.put(LauncherSettings.Favorites.APPWIDGET_PROVIDER, favorite.appWidgetProvider);
            }
            values.put(LauncherSettings.Favorites.APPWIDGET_ID, Integer.valueOf(favorite.appWidgetId));
            values.put(LauncherSettings.Favorites.RESTORED, (Integer) 7);
            if (favorite.cellX + favorite.spanX > currentProfile.desktopCols || favorite.cellY + favorite.spanY > currentProfile.desktopRows) {
                this.restoreSuccessful = false;
                throw new InvalidBackupException("Widget not in screen bounds, aborting restore");
            }
        } else {
            if (isReplaceableHotseatItem(favorite) && favorite.targetType != 0 && favorite.targetType < 7) {
                Log.e(TAG, "Added item type flag");
                values.put(LauncherSettings.Favorites.RESTORED, Integer.valueOf(CommonAppTypeParser.encodeItemTypeToFlag(favorite.targetType) | 1));
            } else {
                values.put(LauncherSettings.Favorites.RESTORED, (Integer) 1);
            }
            if (favorite.container == -101) {
                if (favorite.screen >= currentProfile.hotseatCount || favorite.screen == currentProfile.allappsRank) {
                    this.restoreSuccessful = false;
                    throw new InvalidBackupException("Item not in hotseat bounds, aborting restore");
                }
            } else if (favorite.cellX >= currentProfile.desktopCols || favorite.cellY >= currentProfile.desktopRows) {
                this.restoreSuccessful = false;
                throw new InvalidBackupException("Item not in desktop bounds, aborting restore");
            }
        }
        return values;
    }

    private BackupProtos.Screen packScreen(Cursor c) {
        BackupProtos.Screen screen = new BackupProtos.Screen();
        screen.id = c.getLong(0);
        screen.rank = c.getInt(2);
        return screen;
    }

    private ContentValues unpackScreen(byte[] buffer, int dataSize) throws InvalidProtocolBufferNanoException {
        BackupProtos.Screen screen = (BackupProtos.Screen) unpackProto(new BackupProtos.Screen(), buffer, dataSize);
        ContentValues values = new ContentValues();
        values.put(GlobalSearchDbHelper.COLUMN_ID, Long.valueOf(screen.id));
        values.put(LauncherSettings.WorkspaceScreens.SCREEN_RANK, Integer.valueOf(screen.rank));
        return values;
    }

    private BackupProtos.Resource packIcon(int dpi, Bitmap icon) {
        BackupProtos.Resource res = new BackupProtos.Resource();
        res.dpi = dpi;
        res.data = Utilities.flattenBitmap(icon);
        return res;
    }

    private BackupProtos.Widget packWidget(int dpi, ComponentName provider, UserHandleCompat user) {
        LauncherAppWidgetProviderInfo info = LauncherModel.getProviderInfo(this.mContext, provider, user);
        BackupProtos.Widget widget = new BackupProtos.Widget();
        widget.provider = provider.flattenToShortString();
        widget.label = info.label;
        widget.configure = info.configure != null;
        if (info.icon != 0) {
            widget.icon = new BackupProtos.Resource();
            Drawable fullResIcon = this.mAssetCache.getFullResIcon(provider.getPackageName(), info.icon);
            Bitmap icon = Utilities.createIconBitmap(fullResIcon, this.mContext);
            widget.icon.data = Utilities.flattenBitmap(icon);
            widget.icon.dpi = dpi;
        }
        Point spans = info.getMinSpans(this.mIdp, this.mContext);
        widget.minSpanX = spans.x;
        widget.minSpanY = spans.y;
        return widget;
    }

    private <T extends MessageNano> T unpackProto(T proto, byte[] buffer, int dataSize) throws InvalidProtocolBufferNanoException {
        MessageNano.mergeFrom(proto, readCheckedBytes(buffer, dataSize));
        return proto;
    }

    private BackupProtos.Journal readJournal(ParcelFileDescriptor oldState) {
        BackupProtos.Journal journal = new BackupProtos.Journal();
        if (oldState != null) {
            FileInputStream inStream = new FileInputStream(oldState.getFileDescriptor());
            try {
                try {
                    int availableBytes = inStream.available();
                    if (availableBytes < MAX_JOURNAL_SIZE) {
                        byte[] buffer = new byte[availableBytes];
                        int bytesRead = 0;
                        boolean valid = false;
                        InvalidProtocolBufferNanoException lastProtoException = null;
                        while (availableBytes > 0) {
                            try {
                                int result = inStream.read(buffer, bytesRead, 1);
                                if (result > 0) {
                                    availableBytes -= result;
                                    bytesRead += result;
                                } else {
                                    Log.w(TAG, "unexpected end of file while reading journal.");
                                    availableBytes = 0;
                                }
                            } catch (IOException e) {
                                buffer = null;
                                availableBytes = 0;
                            }
                            try {
                                MessageNano.mergeFrom(journal, readCheckedBytes(buffer, bytesRead));
                                valid = true;
                                availableBytes = 0;
                            } catch (InvalidProtocolBufferNanoException e2) {
                                lastProtoException = e2;
                                journal.clear();
                            }
                        }
                        if (!valid) {
                            Log.w(TAG, "could not find a valid journal", lastProtoException);
                        }
                    }
                    try {
                        inStream.close();
                    } catch (IOException e3) {
                        Log.w(TAG, "failed to close the journal", e3);
                    }
                } catch (IOException e4) {
                    Log.w(TAG, "failed to close the journal", e4);
                }
            } finally {
                try {
                    inStream.close();
                } catch (IOException e5) {
                    Log.w(TAG, "failed to close the journal", e5);
                }
            }
        }
        return journal;
    }

    private void writeRowToBackup(BackupProtos.Key key, MessageNano proto, BackupDataOutput data) throws IOException {
        writeRowToBackup(keyToBackupKey(key), proto, data);
    }

    private void writeRowToBackup(String backupKey, MessageNano proto, BackupDataOutput data) throws IOException {
        byte[] blob = writeCheckedBytes(proto);
        data.writeEntityHeader(backupKey, blob.length);
        data.writeEntityData(blob, blob.length);
        this.mBackupDataWasUpdated = true;
    }

    private void writeJournal(ParcelFileDescriptor newState, BackupProtos.Journal journal) {
        FileOutputStream outStream;
        try {
            outStream = new FileOutputStream(newState.getFileDescriptor());
        } catch (IOException e) {
            e = e;
        }
        try {
            byte[] journalBytes = writeCheckedBytes(journal);
            outStream.write(journalBytes);
            outStream.close();
        } catch (IOException e2) {
            e = e2;
            Log.w(TAG, "failed to write backup journal", e);
        }
    }

    private byte[] writeCheckedBytes(MessageNano proto) {
        BackupProtos.CheckedMessage wrapper = new BackupProtos.CheckedMessage();
        wrapper.payload = MessageNano.toByteArray(proto);
        CRC32 checksum = new CRC32();
        checksum.update(wrapper.payload);
        wrapper.checksum = checksum.getValue();
        return MessageNano.toByteArray(wrapper);
    }

    private static byte[] readCheckedBytes(byte[] buffer, int dataSize) throws InvalidProtocolBufferNanoException {
        BackupProtos.CheckedMessage wrapper = new BackupProtos.CheckedMessage();
        MessageNano.mergeFrom(wrapper, buffer, 0, dataSize);
        CRC32 checksum = new CRC32();
        checksum.update(wrapper.payload);
        if (wrapper.checksum != checksum.getValue()) {
            throw new InvalidProtocolBufferNanoException("checksum does not match");
        }
        return wrapper.payload;
    }

    private boolean launcherIsReady() {
        ContentResolver cr = this.mContext.getContentResolver();
        Cursor cursor = cr.query(LauncherSettings.Favorites.CONTENT_URI, FAVORITE_PROJECTION, null, null, null);
        if (cursor == null) {
            return false;
        }
        cursor.close();
        return LauncherAppState.getInstanceNoCreate() != null;
    }

    private String getUserSelectionArg() {
        return "profileId=" + UserManagerCompat.getInstance(this.mContext).getSerialNumberForUser(UserHandleCompat.myUserHandle());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class InvalidBackupException extends IOException {
        private static final long serialVersionUID = 8931456637211665082L;

        InvalidBackupException(Throwable cause) {
            super(cause);
        }

        InvalidBackupException(String reason) {
            super(reason);
        }
    }

    public boolean shouldAttemptWorkspaceMigration() {
        return this.migrationCompatibleProfileData != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class ItemTypeMatcher {
        private final ArrayList<Intent> mIntents;

        ItemTypeMatcher(int xml_res) {
            this.mIntents = xml_res == 0 ? new ArrayList<>() : parseIntents(xml_res);
        }

        private ArrayList<Intent> parseIntents(int xml_res) {
            Exception e;
            ArrayList<Intent> intents = new ArrayList<>();
            XmlResourceParser parser = LauncherBackupHelper.this.mContext.getResources().getXml(xml_res);
            try {
                try {
                    DefaultLayoutParser.beginDocument(parser, "resolve");
                    int depth = parser.getDepth();
                    while (true) {
                        int type = parser.next();
                        if ((type != 3 || parser.getDepth() > depth) && type != 1) {
                            if (type == 2 && "favorite".equals(parser.getName())) {
                                String uri = DefaultLayoutParser.getAttributeValue(parser, "uri");
                                intents.add(Intent.parseUri(uri, 0));
                            }
                        }
                    }
                } finally {
                    parser.close();
                }
            } catch (IOException e2) {
                e = e2;
                Log.e(LauncherBackupHelper.TAG, "Unable to parse " + xml_res, e);
                return intents;
            } catch (URISyntaxException e3) {
                e = e3;
                Log.e(LauncherBackupHelper.TAG, "Unable to parse " + xml_res, e);
                return intents;
            } catch (XmlPullParserException e4) {
                e = e4;
                Log.e(LauncherBackupHelper.TAG, "Unable to parse " + xml_res, e);
                return intents;
            }
            return intents;
        }

        public boolean matches(ActivityInfo activity, PackageManager pm) {
            Iterator<Intent> it = this.mIntents.iterator();
            while (it.hasNext()) {
                Intent intent = it.next();
                intent.setPackage(activity.packageName);
                ResolveInfo info = pm.resolveActivity(intent, 0);
                if (info != null && (info.activityInfo.name.equals(activity.name) || info.activityInfo.name.equals(activity.targetActivity))) {
                    return true;
                }
            }
            return false;
        }
    }
}

package net.oneplus.h2launcher;

import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.CancellationSignal;
import android.os.Handler;
import android.util.Log;
import android.util.LongSparseArray;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import net.oneplus.h2launcher.LauncherSettings;
import net.oneplus.h2launcher.compat.AppWidgetManagerCompat;
import net.oneplus.h2launcher.compat.ShortcutConfigActivityInfo;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.compat.UserManagerCompat;
import net.oneplus.h2launcher.model.WidgetItem;
import net.oneplus.h2launcher.util.ComponentKey;
import net.oneplus.h2launcher.widget.WidgetCell;

/* loaded from: classes.dex */
public class WidgetPreviewLoader {
    private static final boolean DEBUG = false;
    private static final String TAG = "WidgetPreviewLoader";
    private static final float WIDGET_PREVIEW_ICON_PADDING_PERCENTAGE = 0.25f;
    private final AssetCache mAssetCache;
    private final Context mContext;
    private final CacheDb mDb;
    private final DeviceProfile mDeviceProfile;
    private AppWidgetManagerCompat mManager;
    private final int mProfileBadgeMargin;
    private final UserManagerCompat mUserManager;
    private final HashMap<String, long[]> mPackageVersions = new HashMap<>();
    final Set<Bitmap> mUnusedBitmaps = Collections.newSetFromMap(new WeakHashMap());
    private final MainThreadExecutor mMainThreadExecutor = new MainThreadExecutor();
    Handler mWorkerHandler = new Handler(LauncherModel.getWorkerLooper());

    public WidgetPreviewLoader(Context context, AssetCache assetCache, InvariantDeviceProfile deviceProfile) {
        this.mContext = context;
        this.mAssetCache = assetCache;
        this.mDeviceProfile = deviceProfile.portraitProfile;
        this.mManager = AppWidgetManagerCompat.getInstance(context);
        this.mUserManager = UserManagerCompat.getInstance(context);
        this.mDb = new CacheDb(context);
        this.mProfileBadgeMargin = context.getResources().getDimensionPixelSize(R.dimen.profile_badge_margin);
    }

    public PreviewLoadRequest getPreview(WidgetItem item, int previewWidth, int previewHeight, WidgetCell caller) {
        String size = previewWidth + "x" + previewHeight;
        WidgetCacheKey key = new WidgetCacheKey(item.componentName, item.user, size);
        PreviewLoadTask task = new PreviewLoadTask(key, item, previewWidth, previewHeight, caller);
        task.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        CancellationSignal signal = new CancellationSignal();
        signal.setOnCancelListener(task);
        return new PreviewLoadRequest(task);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class CacheDb extends SQLiteOpenHelper {
        private static final String COLUMN_COMPONENT = "componentName";
        private static final String COLUMN_LAST_UPDATED = "lastUpdated";
        private static final String COLUMN_PACKAGE = "packageName";
        private static final String COLUMN_PREVIEW_BITMAP = "preview_bitmap";
        private static final String COLUMN_SIZE = "size";
        private static final String COLUMN_USER = "profileId";
        private static final String COLUMN_VERSION = "version";
        private static final int DB_VERSION = 4;
        private static final String TABLE_NAME = "shortcut_and_widget_previews";

        public CacheDb(Context context) {
            super(context, LauncherFiles.WIDGET_PREVIEWS_DB, (SQLiteDatabase.CursorFactory) null, 4);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase database) {
            database.execSQL("CREATE TABLE IF NOT EXISTS shortcut_and_widget_previews (componentName TEXT NOT NULL, profileId INTEGER NOT NULL, size TEXT NOT NULL, packageName TEXT NOT NULL, lastUpdated INTEGER NOT NULL DEFAULT 0, version INTEGER NOT NULL DEFAULT 0, preview_bitmap BLOB, PRIMARY KEY (componentName, profileId, size) );");
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
            if (oldVersion != newVersion) {
                clearDB(db);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase db, int oldVersion, int newVersion) {
            if (oldVersion != newVersion) {
                clearDB(db);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDB(SQLiteDatabase db) {
            db.execSQL("DROP TABLE IF EXISTS shortcut_and_widget_previews");
            onCreate(db);
        }
    }

    private WidgetCacheKey getObjectKey(Object o, String size) {
        if (o instanceof LauncherAppWidgetProviderInfo) {
            LauncherAppWidgetProviderInfo info = (LauncherAppWidgetProviderInfo) o;
            return new WidgetCacheKey(info.provider, this.mManager.getUser(info), size);
        }
        ResolveInfo info2 = (ResolveInfo) o;
        return new WidgetCacheKey(new ComponentName(info2.activityInfo.packageName, info2.activityInfo.name), UserHandleCompat.myUserHandle(), size);
    }

    void writeToDb(WidgetCacheKey key, long[] versions, Bitmap preview) {
        ContentValues values = new ContentValues();
        values.put("componentName", key.componentName.flattenToShortString());
        values.put("profileId", Long.valueOf(this.mUserManager.getSerialNumberForUser(key.user)));
        values.put(LauncherSettings.QuickPage.SIZE, key.size);
        values.put(LauncherSettings.QuickPage.PACKAGE_NAME, key.componentName.getPackageName());
        values.put("version", Long.valueOf(versions[0]));
        values.put("lastUpdated", Long.valueOf(versions[1]));
        values.put("preview_bitmap", Utilities.flattenBitmap(preview));
        try {
            this.mDb.getWritableDatabase().insertWithOnConflict("shortcut_and_widget_previews", null, values, 5);
        } catch (SQLException e) {
            Log.e(TAG, "Error saving image to DB", e);
        }
    }

    public void removePackage(String packageName, UserHandleCompat user) {
        removePackage(packageName, user, this.mUserManager.getSerialNumberForUser(user));
    }

    private void removePackage(String packageName, UserHandleCompat user, long userSerial) {
        synchronized (this.mPackageVersions) {
            this.mPackageVersions.remove(packageName);
        }
        try {
            this.mDb.getWritableDatabase().delete("shortcut_and_widget_previews", "packageName = ? AND profileId = ?", new String[]{packageName, Long.toString(userSerial)});
        } catch (SQLException e) {
            Log.e(TAG, "Unable to delete items from DB", e);
        }
    }

    public void removeObsoletePreviews(ArrayList<? extends ComponentKey> list) {
        Utilities.assertWorkerThread();
        LongSparseArray<HashSet<String>> validPackages = new LongSparseArray<>();
        Iterator<? extends ComponentKey> it = list.iterator();
        while (it.hasNext()) {
            ComponentKey key = it.next();
            long userId = this.mUserManager.getSerialNumberForUser(key.user);
            HashSet<String> packages = validPackages.get(userId);
            if (packages == null) {
                packages = new HashSet<>();
                validPackages.put(userId, packages);
            }
            packages.add(key.componentName.getPackageName());
        }
        LongSparseArray<HashSet<String>> packagesToDelete = new LongSparseArray<>();
        Cursor c = null;
        try {
            try {
                c = this.mDb.getReadableDatabase().query("shortcut_and_widget_previews", new String[]{"profileId", LauncherSettings.QuickPage.PACKAGE_NAME, "lastUpdated", "version"}, null, null, null, null, null);
                while (c.moveToNext()) {
                    long userId2 = c.getLong(0);
                    String pkg = c.getString(1);
                    long lastUpdated = c.getLong(2);
                    long version = c.getLong(3);
                    HashSet<String> packages2 = validPackages.get(userId2);
                    if (packages2 != null && packages2.contains(pkg)) {
                        long[] versions = getPackageVersion(pkg);
                        if (versions[0] == version && versions[1] == lastUpdated) {
                        }
                    }
                    HashSet<String> packages3 = packagesToDelete.get(userId2);
                    if (packages3 == null) {
                        packages3 = new HashSet<>();
                        packagesToDelete.put(userId2, packages3);
                    }
                    packages3.add(pkg);
                }
                for (int i = 0; i < packagesToDelete.size(); i++) {
                    long userId3 = packagesToDelete.keyAt(i);
                    UserHandleCompat user = this.mUserManager.getUserForSerialNumber(userId3);
                    Iterator<String> it2 = packagesToDelete.valueAt(i).iterator();
                    while (it2.hasNext()) {
                        removePackage(it2.next(), user, userId3);
                    }
                }
                if (c != null) {
                    c.close();
                }
            } catch (SQLException e) {
                Log.e(TAG, "Error updatating widget previews", e);
                if (c != null) {
                    c.close();
                }
            }
        } catch (Throwable th) {
            if (c != null) {
                c.close();
            }
            throw th;
        }
    }

    Bitmap readFromDb(WidgetCacheKey key, Bitmap recycle, PreviewLoadTask loadTask) {
        Cursor cursor = null;
        try {
            try {
                cursor = this.mDb.getReadableDatabase().query("shortcut_and_widget_previews", new String[]{"preview_bitmap"}, "componentName = ? AND profileId = ? AND size = ?", new String[]{key.componentName.flattenToString(), Long.toString(this.mUserManager.getSerialNumberForUser(key.user)), key.size}, null, null, null);
            } catch (SQLException e) {
                Log.w(TAG, "Error loading preview from DB", e);
                if (cursor != null) {
                    cursor.close();
                }
            }
            if (loadTask.isCancelled()) {
            }
            if (cursor.moveToNext()) {
                byte[] blob = cursor.getBlob(0);
                BitmapFactory.Options opts = new BitmapFactory.Options();
                opts.inBitmap = recycle;
                try {
                    if (!loadTask.isCancelled()) {
                        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(blob, 0, blob.length, opts);
                        if (cursor == null) {
                            return decodeByteArray;
                        }
                        cursor.close();
                        return decodeByteArray;
                    }
                } catch (Exception e2) {
                    if (cursor == null) {
                        return null;
                    }
                    cursor.close();
                    return null;
                }
            }
            if (cursor != null) {
                cursor.close();
            }
            return null;
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    Bitmap generatePreview(WidgetItem item, Bitmap recycle, int previewWidth, int previewHeight) {
        return item.widgetInfo != null ? generateWidgetPreview(item.widgetInfo, previewWidth, recycle, null) : generateShortcutPreview(item.activityInfo, previewWidth, previewHeight, recycle);
    }

    public Bitmap generateWidgetPreview(LauncherAppWidgetProviderInfo info, int maxPreviewWidth, Bitmap preview, int[] preScaledWidthOut) {
        int previewWidth;
        int previewHeight;
        if (maxPreviewWidth < 0) {
            maxPreviewWidth = Integer.MAX_VALUE;
        }
        Drawable drawable = null;
        if (info.previewImage != 0) {
            drawable = this.mManager.loadPreview(info);
            if (drawable != null) {
                drawable = mutateOnMainThread(drawable);
            } else {
                Log.w(TAG, "Can't load widget preview drawable 0x" + Integer.toHexString(info.previewImage) + " for provider: " + info.provider);
            }
        }
        boolean widgetPreviewExists = drawable != null;
        int spanX = info.spanX;
        int spanY = info.spanY;
        Bitmap tileBitmap = null;
        if (widgetPreviewExists) {
            previewWidth = drawable.getIntrinsicWidth();
            previewHeight = drawable.getIntrinsicHeight();
        } else {
            tileBitmap = ((BitmapDrawable) this.mContext.getResources().getDrawable(R.drawable.widget_tile)).getBitmap();
            previewWidth = tileBitmap.getWidth() * spanX;
            previewHeight = tileBitmap.getHeight() * spanY;
        }
        float scale = 1.0f;
        if (preScaledWidthOut != null) {
            preScaledWidthOut[0] = previewWidth;
        }
        if (previewWidth > maxPreviewWidth) {
            scale = (maxPreviewWidth - (this.mProfileBadgeMargin * 2)) / previewWidth;
        }
        if (scale != 1.0f) {
            previewWidth = (int) (previewWidth * scale);
            previewHeight = (int) (previewHeight * scale);
        }
        Canvas c = new Canvas();
        if (preview == null) {
            preview = Bitmap.createBitmap(previewWidth, previewHeight, Bitmap.Config.ARGB_8888);
            c.setBitmap(preview);
        } else {
            c.setBitmap(preview);
            c.drawColor(0, PorterDuff.Mode.CLEAR);
        }
        int x = (preview.getWidth() - previewWidth) / 2;
        if (widgetPreviewExists) {
            drawable.setBounds(x, 0, x + previewWidth, previewHeight);
            drawable.draw(c);
        } else {
            Paint p = new Paint();
            p.setFilterBitmap(true);
            int appIconSize = this.mDeviceProfile.iconSizePx;
            Rect src = new Rect(0, 0, tileBitmap.getWidth(), tileBitmap.getHeight());
            float tileW = scale * tileBitmap.getWidth();
            float tileH = scale * tileBitmap.getHeight();
            RectF dst = new RectF(0.0f, 0.0f, tileW, tileH);
            float tx = x;
            int i = 0;
            while (i < spanX) {
                float ty = 0.0f;
                int j = 0;
                while (j < spanY) {
                    dst.offsetTo(tx, ty);
                    c.drawBitmap(tileBitmap, src, dst, p);
                    j++;
                    ty += tileH;
                }
                i++;
                tx += tileW;
            }
            int minOffset = (int) (appIconSize * WIDGET_PREVIEW_ICON_PADDING_PERCENTAGE);
            int smallestSide = Math.min(previewWidth, previewHeight);
            float iconScale = Math.min(smallestSide / ((minOffset * 2) + appIconSize), scale);
            try {
                Drawable icon = this.mManager.loadIcon(info, this.mAssetCache);
                if (icon != null) {
                    Drawable icon2 = mutateOnMainThread(icon);
                    int hoffset = ((int) ((tileW - (appIconSize * iconScale)) / 2.0f)) + x;
                    int yoffset = (int) ((tileH - (appIconSize * iconScale)) / 2.0f);
                    icon2.setBounds(hoffset, yoffset, ((int) (appIconSize * iconScale)) + hoffset, ((int) (appIconSize * iconScale)) + yoffset);
                    icon2.draw(c);
                }
            } catch (Resources.NotFoundException e) {
            }
            c.setBitmap(null);
        }
        int imageHeight = Math.min(preview.getHeight(), this.mProfileBadgeMargin + previewHeight);
        return this.mManager.getBadgeBitmap(info, preview, imageHeight);
    }

    private Bitmap generateShortcutPreview(ShortcutConfigActivityInfo info, int maxWidth, int maxHeight, Bitmap preview) {
        Canvas c = new Canvas();
        if (preview == null) {
            preview = Bitmap.createBitmap(maxWidth, maxHeight, Bitmap.Config.ARGB_8888);
            c.setBitmap(preview);
        } else {
            if (preview.getWidth() != maxWidth || preview.getHeight() != maxHeight) {
                throw new RuntimeException("Improperly sized bitmap passed as argument");
            }
            c.setBitmap(preview);
            c.drawColor(0, PorterDuff.Mode.CLEAR);
        }
        Drawable icon = mutateOnMainThread(info.getFullResIcon(this.mAssetCache));
        icon.setFilterBitmap(true);
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation(0.0f);
        icon.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        icon.setAlpha(15);
        Resources res = this.mContext.getResources();
        int paddingTop = res.getDimensionPixelOffset(R.dimen.shortcut_preview_padding_top);
        int paddingLeft = res.getDimensionPixelOffset(R.dimen.shortcut_preview_padding_left);
        int paddingRight = res.getDimensionPixelOffset(R.dimen.shortcut_preview_padding_right);
        int scaledIconWidth = (maxWidth - paddingLeft) - paddingRight;
        icon.setBounds(paddingLeft, paddingTop, paddingLeft + scaledIconWidth, paddingTop + scaledIconWidth);
        icon.draw(c);
        int appIconSize = this.mDeviceProfile.iconSizePx;
        icon.setAlpha(255);
        icon.setColorFilter(null);
        icon.setBounds(0, 0, appIconSize, appIconSize);
        icon.draw(c);
        c.setBitmap(null);
        return preview;
    }

    private Drawable mutateOnMainThread(final Drawable drawable) {
        try {
            return (Drawable) this.mMainThreadExecutor.submit(new Callable<Drawable>() { // from class: net.oneplus.h2launcher.WidgetPreviewLoader.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public Drawable call() throws Exception {
                    return drawable.mutate();
                }
            }).get();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new RuntimeException(e);
        } catch (ExecutionException e2) {
            throw new RuntimeException(e2);
        }
    }

    long[] getPackageVersion(String packageName) {
        long[] versions;
        synchronized (this.mPackageVersions) {
            versions = this.mPackageVersions.get(packageName);
            if (versions == null) {
                versions = new long[2];
                try {
                    PackageInfo info = this.mContext.getPackageManager().getPackageInfo(packageName, 0);
                    versions[0] = info.versionCode;
                    versions[1] = info.lastUpdateTime;
                } catch (PackageManager.NameNotFoundException e) {
                    Log.e(TAG, "PackageInfo not found", e);
                }
                this.mPackageVersions.put(packageName, versions);
            }
        }
        return versions;
    }

    public void clearDB() {
        this.mDb.clearDB(this.mDb.getWritableDatabase());
    }

    /* loaded from: classes.dex */
    public class PreviewLoadRequest {
        final PreviewLoadTask mTask;

        public PreviewLoadRequest(PreviewLoadTask task) {
            this.mTask = task;
        }

        public void cleanup() {
            if (this.mTask != null) {
                this.mTask.cancel(true);
            }
            if (this.mTask.mBitmapToRecycle != null) {
                WidgetPreviewLoader.this.mWorkerHandler.post(new Runnable() { // from class: net.oneplus.h2launcher.WidgetPreviewLoader.PreviewLoadRequest.1
                    @Override // java.lang.Runnable
                    public void run() {
                        synchronized (WidgetPreviewLoader.this.mUnusedBitmaps) {
                            WidgetPreviewLoader.this.mUnusedBitmaps.add(PreviewLoadRequest.this.mTask.mBitmapToRecycle);
                        }
                        PreviewLoadRequest.this.mTask.mBitmapToRecycle = null;
                    }
                });
            }
        }
    }

    /* loaded from: classes.dex */
    public class PreviewLoadTask extends AsyncTask<Void, Void, Bitmap> implements CancellationSignal.OnCancelListener {
        Bitmap mBitmapToRecycle;
        private final WidgetCell mCaller;
        private ComponentName mComponentName;
        private final WidgetItem mInfo;
        final WidgetCacheKey mKey;
        private final int mPreviewHeight;
        private final int mPreviewWidth;
        long[] mVersions;

        PreviewLoadTask(WidgetCacheKey key, WidgetItem info, int previewWidth, int previewHeight, WidgetCell caller) {
            this.mKey = key;
            this.mInfo = info;
            this.mPreviewHeight = previewHeight;
            this.mPreviewWidth = previewWidth;
            this.mCaller = caller;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Bitmap doInBackground(Void... params) {
            Bitmap unusedBitmap = null;
            if (isCancelled()) {
                return null;
            }
            synchronized (WidgetPreviewLoader.this.mUnusedBitmaps) {
                Iterator<Bitmap> it = WidgetPreviewLoader.this.mUnusedBitmaps.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Bitmap candidate = it.next();
                    if (candidate != null && candidate.isMutable() && candidate.getWidth() == this.mPreviewWidth && candidate.getHeight() == this.mPreviewHeight) {
                        unusedBitmap = candidate;
                        WidgetPreviewLoader.this.mUnusedBitmaps.remove(unusedBitmap);
                        break;
                    }
                }
            }
            if (unusedBitmap == null) {
                unusedBitmap = Bitmap.createBitmap(this.mPreviewWidth, this.mPreviewHeight, Bitmap.Config.ARGB_8888);
            }
            if (isCancelled()) {
                return unusedBitmap;
            }
            Bitmap preview = WidgetPreviewLoader.this.readFromDb(this.mKey, unusedBitmap, this);
            this.mComponentName = this.mKey.componentName;
            if (!isCancelled() && preview == null) {
                boolean persistable = this.mInfo.activityInfo == null || this.mInfo.activityInfo.isPersistable();
                this.mVersions = persistable ? WidgetPreviewLoader.this.getPackageVersion(this.mKey.componentName.getPackageName()) : null;
                preview = WidgetPreviewLoader.this.generatePreview(this.mInfo, unusedBitmap, this.mPreviewWidth, this.mPreviewHeight);
            }
            return preview;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(final Bitmap preview) {
            this.mCaller.applyPreview(preview, this.mComponentName);
            if (this.mVersions != null) {
                WidgetPreviewLoader.this.mWorkerHandler.post(new Runnable() { // from class: net.oneplus.h2launcher.WidgetPreviewLoader.PreviewLoadTask.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!PreviewLoadTask.this.isCancelled()) {
                            WidgetPreviewLoader.this.writeToDb(PreviewLoadTask.this.mKey, PreviewLoadTask.this.mVersions, preview);
                            PreviewLoadTask.this.mBitmapToRecycle = preview;
                        } else {
                            synchronized (WidgetPreviewLoader.this.mUnusedBitmaps) {
                                WidgetPreviewLoader.this.mUnusedBitmaps.add(preview);
                            }
                        }
                    }
                });
            } else {
                this.mBitmapToRecycle = preview;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onCancelled(final Bitmap preview) {
            if (preview != null) {
                WidgetPreviewLoader.this.mWorkerHandler.post(new Runnable() { // from class: net.oneplus.h2launcher.WidgetPreviewLoader.PreviewLoadTask.2
                    @Override // java.lang.Runnable
                    public void run() {
                        synchronized (WidgetPreviewLoader.this.mUnusedBitmaps) {
                            WidgetPreviewLoader.this.mUnusedBitmaps.add(preview);
                        }
                    }
                });
            }
        }

        @Override // android.os.CancellationSignal.OnCancelListener
        public void onCancel() {
            cancel(true);
            if (this.mBitmapToRecycle != null) {
                WidgetPreviewLoader.this.mWorkerHandler.post(new Runnable() { // from class: net.oneplus.h2launcher.WidgetPreviewLoader.PreviewLoadTask.3
                    @Override // java.lang.Runnable
                    public void run() {
                        synchronized (WidgetPreviewLoader.this.mUnusedBitmaps) {
                            WidgetPreviewLoader.this.mUnusedBitmaps.add(PreviewLoadTask.this.mBitmapToRecycle);
                        }
                        PreviewLoadTask.this.mBitmapToRecycle = null;
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class WidgetCacheKey extends ComponentKey {
        final String size;

        public WidgetCacheKey(ComponentName componentName, UserHandleCompat user, String size) {
            super(componentName, user);
            this.size = size;
        }

        @Override // net.oneplus.h2launcher.util.ComponentKey
        public int hashCode() {
            return super.hashCode() ^ this.size.hashCode();
        }

        @Override // net.oneplus.h2launcher.util.ComponentKey
        public boolean equals(Object o) {
            return super.equals(o) && ((WidgetCacheKey) o).size.equals(this.size);
        }
    }
}

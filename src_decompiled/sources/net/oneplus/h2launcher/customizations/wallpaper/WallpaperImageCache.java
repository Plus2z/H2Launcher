package net.oneplus.h2launcher.customizations.wallpaper;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.LruCache;
import java.util.Map;
import net.oneplus.h2launcher.customizations.WallpaperPreview;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class WallpaperImageCache {
    private static final int CACHE_CAPACITY = 37748736;
    private static LruCache<String, Bitmap> sCache;
    private static Bitmap sHomeWallpaper;
    private static String sHomeWallpaperCacheKey;
    private static Bitmap sLockscreenWallpaper;
    private static final String LOG_TAG = WallpaperImageCache.class.getSimpleName();
    private static final Object sLock = new Object();

    static {
        createCache(CACHE_CAPACITY);
    }

    private static void createCache(int size) {
        synchronized (sLock) {
            Logger.i(LOG_TAG, "create image Cache, size: %d.", Integer.valueOf(size));
            if (sCache != null) {
                sCache.evictAll();
                sCache = null;
            }
            sCache = new LruCache<String, Bitmap>(size) { // from class: net.oneplus.h2launcher.customizations.wallpaper.WallpaperImageCache.1
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // android.util.LruCache
                public int sizeOf(String cacheKey, Bitmap value) {
                    return value.getByteCount();
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // android.util.LruCache
                public void entryRemoved(boolean evicted, String cacheKey, Bitmap oldValue, Bitmap newValue) {
                    Logger.d(WallpaperImageCache.LOG_TAG, "entryRemoved, evicted: %b, cacheKey: %s, oldValue:%s", Boolean.valueOf(evicted), cacheKey, oldValue);
                    Logger.d(WallpaperImageCache.LOG_TAG, "entryRemoved, currentCount: %d, currentSize: %d", Integer.valueOf(snapshot().size()), Integer.valueOf(size()));
                    oldValue.recycle();
                }
            };
        }
    }

    public static Bitmap getImage(String cacheKey) {
        if (TextUtils.isEmpty(cacheKey)) {
            return null;
        }
        if (cacheKey.equals(sHomeWallpaperCacheKey)) {
            return sHomeWallpaper;
        }
        if (cacheKey.equals(WallpaperPreview.LOCK_SCREEN_WALLPAPER)) {
            return sLockscreenWallpaper;
        }
        return sCache.get(cacheKey);
    }

    public static boolean cacheImage(String cacheKey, Bitmap bmp) {
        Logger.d(LOG_TAG, "[SNDMS-1030] cacheImage: cacheKey=%s, bmp=%s", cacheKey, bmp);
        if (TextUtils.isEmpty(cacheKey) || bmp == null || bmp.isRecycled()) {
            return false;
        }
        if (cacheKey.startsWith(WallpaperPreview.HOME_SCREEN_WALLPAPER)) {
            sHomeWallpaperCacheKey = cacheKey;
            sHomeWallpaper = bmp;
            return true;
        }
        if (cacheKey.equals(WallpaperPreview.LOCK_SCREEN_WALLPAPER)) {
            sLockscreenWallpaper = bmp;
            return true;
        }
        if (bmp.getByteCount() >= sCache.maxSize()) {
            Logger.i(LOG_TAG, "WallpaperImageCache cache full, please enlarge cache size");
            return false;
        }
        synchronized (sLock) {
            if (sCache.get(cacheKey) == null) {
                Logger.d(LOG_TAG, "cache image, key:%s", cacheKey);
                sCache.put(cacheKey, bmp);
            } else {
                Logger.d(LOG_TAG, "update cache image, key:%s", cacheKey);
                sCache.put(cacheKey, bmp);
            }
        }
        return true;
    }

    public static boolean clearImage(String cacheKey) {
        boolean z;
        Logger.d(LOG_TAG, "[SNDMS-1030] clearImage: cacheKey=%s", cacheKey);
        if (TextUtils.isEmpty(cacheKey)) {
            return false;
        }
        if (cacheKey.equals(sHomeWallpaperCacheKey)) {
            if (sHomeWallpaper != null) {
                sHomeWallpaper.recycle();
                sHomeWallpaper = null;
                sHomeWallpaperCacheKey = null;
                Logger.d(LOG_TAG, "[SNDMS-1030] clearImage: home wallpaper cleared");
            }
            return true;
        }
        if (cacheKey.equals(WallpaperPreview.LOCK_SCREEN_WALLPAPER)) {
            if (sLockscreenWallpaper != null) {
                sLockscreenWallpaper.recycle();
                sLockscreenWallpaper = null;
                Logger.d(LOG_TAG, "[SNDMS-1030] clearImage: lock wallpaper cleared");
            }
            return true;
        }
        synchronized (sLock) {
            z = sCache.remove(cacheKey) != null;
        }
        return z;
    }

    public static void clear() {
        synchronized (sLock) {
            sCache.evictAll();
            Logger.i(LOG_TAG, "WallpaperImageCache cleared.");
        }
        if (sHomeWallpaper != null) {
            sHomeWallpaper.recycle();
            sHomeWallpaper = null;
        }
        if (sLockscreenWallpaper != null) {
            sLockscreenWallpaper.recycle();
            sLockscreenWallpaper = null;
        }
    }

    public static void trimPreviewData() {
        synchronized (sLock) {
            Map<String, Bitmap> snapshot = sCache.snapshot();
            for (String id : snapshot.keySet()) {
                if (id.contains("preview_")) {
                    Logger.i(LOG_TAG, "WallpaperImageCache trimPreviewData:%s", id);
                    sCache.remove(id);
                }
            }
        }
    }

    public static void resize(int cacheSize) {
        if (cacheSize > 0) {
            Logger.i(LOG_TAG, "WallpaperImageCache resized to: %dMb.", Integer.valueOf(cacheSize));
            createCache(cacheSize * 1024 * 1024);
        } else {
            Logger.w(LOG_TAG, "invalid cache size:%d", Integer.valueOf(cacheSize));
        }
    }
}

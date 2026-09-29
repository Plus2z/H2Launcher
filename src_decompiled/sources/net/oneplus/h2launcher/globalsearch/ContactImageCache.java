package net.oneplus.h2launcher.globalsearch;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.LruCache;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class ContactImageCache {
    private static final int CACHE_CAPACITY = 15728640;
    private static LruCache<String, Bitmap> sCache;
    private static final String LOG_TAG = ContactImageCache.class.getSimpleName();
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
            sCache = new LruCache<String, Bitmap>(size) { // from class: net.oneplus.h2launcher.globalsearch.ContactImageCache.1
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // android.util.LruCache
                public int sizeOf(String cacheKey, Bitmap value) {
                    return value.getByteCount();
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // android.util.LruCache
                public void entryRemoved(boolean evicted, String cacheKey, Bitmap oldValue, Bitmap newValue) {
                    Logger.d(ContactImageCache.LOG_TAG, "entryRemoved, evicted: %b, cacheKey: %s, oldValue:%s", Boolean.valueOf(evicted), cacheKey, oldValue);
                    Logger.d(ContactImageCache.LOG_TAG, "entryRemoved, currentCount: %d, currentSize: %d", Integer.valueOf(snapshot().size()), Integer.valueOf(size()));
                }
            };
        }
    }

    public static Bitmap getImage(String cacheKey) {
        if (TextUtils.isEmpty(cacheKey)) {
            return null;
        }
        return sCache.get(cacheKey);
    }

    public static boolean cacheImage(String cacheKey, Bitmap bmp) {
        if (TextUtils.isEmpty(cacheKey) || bmp == null || bmp.isRecycled()) {
            return false;
        }
        synchronized (sLock) {
            if (sCache.get(cacheKey) == null) {
                Logger.d(LOG_TAG, "cache image, key:%s", cacheKey);
                sCache.put(cacheKey, bmp);
            }
        }
        return true;
    }

    public static void clear() {
        synchronized (sLock) {
            sCache.evictAll();
            Logger.i(LOG_TAG, "ContactImageCache cleared.");
        }
    }

    public static void resize(int cacheSize) {
        if (cacheSize > 0) {
            Logger.i(LOG_TAG, "ContactImageCache resized to: %dMb.", Integer.valueOf(cacheSize));
            createCache(cacheSize * 1024 * 1024);
        } else {
            Logger.w(LOG_TAG, "invalid cache size:%d", Integer.valueOf(cacheSize));
        }
    }
}

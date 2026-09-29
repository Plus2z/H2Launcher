package net.oneplus.h2launcher.customizations.wallpaper.providers;

import android.app.WallpaperInfo;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.util.Log;
import java.io.IOException;
import java.text.Collator;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import net.oneplus.h2launcher.customizations.wallpaper.tileInfo.LiveWallpaperTileInfo;
import net.oneplus.h2launcher.util.WallpaperUtils;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class LiveWallpaperProvider extends WallpaperTileInfoProvider {
    private static final String TAG = LiveWallpaperProvider.class.getSimpleName();
    private Context mContext;

    public LiveWallpaperProvider(Context context) {
        this.mContext = context;
    }

    @Override // net.oneplus.h2launcher.customizations.wallpaper.providers.WallpaperTileInfoProvider
    public void loadTiles() {
        final PackageManager packageManager = this.mContext.getPackageManager();
        Intent intent = new Intent("android.service.wallpaper.WallpaperService");
        List<ResolveInfo> list = packageManager.queryIntentServices(intent, 128);
        Iterator<ResolveInfo> iterator = list.iterator();
        while (iterator.hasNext()) {
            String packageName = iterator.next().serviceInfo.packageName;
            if (WallpaperUtils.LEGACY_ONEPLUS_BLUR_WALLPAPER.getPackageName().equals(packageName) || WallpaperUtils.ONEPLUS_BLUR_WALLPAPER.getPackageName().equals(packageName) || WallpaperUtils.ONEPLUS_BLUR_WALLPAPER2.getPackageName().equals(packageName) || WallpaperUtils.ONEPLUS_LIVE_WALLPAPER.getPackageName().equals(packageName)) {
                iterator.remove();
            }
        }
        Collections.sort(list, new Comparator<ResolveInfo>() { // from class: net.oneplus.h2launcher.customizations.wallpaper.providers.LiveWallpaperProvider.1
            final Collator mCollator = Collator.getInstance();

            @Override // java.util.Comparator
            public int compare(ResolveInfo info1, ResolveInfo info2) {
                return this.mCollator.compare(info1.loadLabel(packageManager), info2.loadLabel(packageManager));
            }
        });
        for (ResolveInfo resolveInfo : list) {
            try {
                WallpaperInfo info = new WallpaperInfo(this.mContext, resolveInfo);
                Drawable thumb = info.loadThumbnail(packageManager);
                if (thumb == null) {
                    thumb = info.loadIcon(packageManager);
                }
                String label = info.loadLabel(packageManager).toString();
                Intent launchIntent = new Intent("android.service.wallpaper.WallpaperService");
                launchIntent.setClassName(info.getPackageName(), info.getServiceName());
                addTile(new LiveWallpaperTileInfo(thumb, label, info));
            } catch (IOException e) {
                Log.w(TAG, "Skipping wallpaper " + resolveInfo.serviceInfo, e);
            } catch (XmlPullParserException e2) {
                Log.w(TAG, "Skipping wallpaper " + resolveInfo.serviceInfo, e2);
            }
        }
    }
}

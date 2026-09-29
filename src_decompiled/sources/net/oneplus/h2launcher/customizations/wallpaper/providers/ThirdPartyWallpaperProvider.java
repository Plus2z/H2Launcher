package net.oneplus.h2launcher.customizations.wallpaper.providers;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import java.util.Iterator;
import java.util.List;
import net.oneplus.h2launcher.customizations.wallpaper.tileInfo.ThirdPartyWallpaperTile;

/* loaded from: classes.dex */
public class ThirdPartyWallpaperProvider extends WallpaperTileInfoProvider {
    private Context mContext;

    public ThirdPartyWallpaperProvider(Context context) {
        this.mContext = context;
    }

    @Override // net.oneplus.h2launcher.customizations.wallpaper.providers.WallpaperTileInfoProvider
    public void loadTiles() {
        PackageManager pm = this.mContext.getPackageManager();
        Intent pickWallpaperIntent = new Intent("android.intent.action.SET_WALLPAPER");
        List<ResolveInfo> apps = pm.queryIntentActivities(pickWallpaperIntent, 0);
        Intent pickImageIntent = new Intent("android.intent.action.GET_CONTENT");
        pickImageIntent.setType("image/*");
        List<ResolveInfo> imagePickerActivities = pm.queryIntentActivities(pickImageIntent, 0);
        for (ResolveInfo info : apps) {
            ComponentName itemComponentName = new ComponentName(info.activityInfo.packageName, info.activityInfo.name);
            String itemPackageName = itemComponentName.getPackageName();
            if (!itemPackageName.equals(this.mContext.getPackageName()) && !itemPackageName.equals("net.oneplus.launcher") && !itemPackageName.equals("com.android.launcher") && !itemPackageName.equals("com.android.wallpaperpicker") && !itemPackageName.equals("com.android.wallpaper.livepicker")) {
                Iterator<ResolveInfo> it = imagePickerActivities.iterator();
                while (true) {
                    if (it.hasNext()) {
                        ResolveInfo imagePickerActivityInfo = it.next();
                        if (itemPackageName.equals(imagePickerActivityInfo.activityInfo.packageName)) {
                            break;
                        }
                    } else {
                        Drawable icon = info.loadIcon(pm);
                        String label = info.loadLabel(pm).toString();
                        addTile(new ThirdPartyWallpaperTile(icon, label, info));
                        break;
                    }
                }
            }
        }
    }
}

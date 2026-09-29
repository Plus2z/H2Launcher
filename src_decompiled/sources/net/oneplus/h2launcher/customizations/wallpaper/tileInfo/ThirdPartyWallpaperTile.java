package net.oneplus.h2launcher.customizations.wallpaper.tileInfo;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import net.oneplus.h2launcher.customizations.WallpaperCard;

/* loaded from: classes.dex */
public class ThirdPartyWallpaperTile extends ExternalWallpaperTileInfo {
    ResolveInfo mResolveInfo;

    public ThirdPartyWallpaperTile(Drawable thumb, String label, ResolveInfo info) {
        this.mThumb = thumb;
        this.mLabel = label;
        this.mResolveInfo = info;
        this.mIsThirdParty = true;
    }

    @Override // net.oneplus.h2launcher.customizations.wallpaper.tileInfo.WallpaperTileInfo
    public void onClick(WallpaperCard card, int screen, boolean changed) {
        ComponentName itemComponentName = new ComponentName(this.mResolveInfo.activityInfo.packageName, this.mResolveInfo.activityInfo.name);
        Intent launchIntent = new Intent("android.intent.action.SET_WALLPAPER");
        launchIntent.setComponent(itemComponentName);
        card.startActivityForResult(launchIntent, 26);
    }

    public ResolveInfo getResolveInfo() {
        return this.mResolveInfo;
    }
}

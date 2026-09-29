package net.oneplus.h2launcher.util;

import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.text.TextUtils;
import net.oneplus.h2launcher.IconCache;
import net.oneplus.h2launcher.LauncherSettings;
import net.oneplus.h2launcher.ShortcutInfo;
import net.oneplus.h2launcher.Utilities;

/* loaded from: classes.dex */
public class CursorIconInfo {
    public final int iconIndex;
    public final int iconPackageIndex;
    public final int iconResourceIndex;
    public final int iconTypeIndex;

    public CursorIconInfo(Cursor c) {
        this.iconTypeIndex = c.getColumnIndexOrThrow("iconType");
        this.iconIndex = c.getColumnIndexOrThrow("icon");
        this.iconPackageIndex = c.getColumnIndexOrThrow(LauncherSettings.BaseLauncherColumns.ICON_PACKAGE);
        this.iconResourceIndex = c.getColumnIndexOrThrow(LauncherSettings.BaseLauncherColumns.ICON_RESOURCE);
    }

    public Bitmap loadIcon(Cursor c, ShortcutInfo info, Context context) {
        Bitmap icon = null;
        int iconType = c.getInt(this.iconTypeIndex);
        switch (iconType) {
            case 0:
                String packageName = c.getString(this.iconPackageIndex);
                String resourceName = c.getString(this.iconResourceIndex);
                if (!TextUtils.isEmpty(packageName) || !TextUtils.isEmpty(resourceName)) {
                    info.iconResource = new Intent.ShortcutIconResource();
                    info.iconResource.packageName = packageName;
                    info.iconResource.resourceName = resourceName;
                    icon = Utilities.createIconBitmap(packageName, resourceName, context);
                }
                if (icon == null) {
                    icon = Utilities.createIconBitmap(c, this.iconIndex, context);
                    break;
                }
                break;
            case 1:
                icon = Utilities.createIconBitmap(c, this.iconIndex, context);
                info.customIcon = icon != null;
                break;
        }
        Bitmap resizedIcon = IconCache.checkAndResizeIcon(icon);
        return resizedIcon != null ? resizedIcon : icon;
    }
}

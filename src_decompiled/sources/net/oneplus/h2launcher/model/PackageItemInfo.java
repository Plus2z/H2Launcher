package net.oneplus.h2launcher.model;

import android.graphics.Bitmap;
import java.util.Arrays;
import net.oneplus.h2launcher.ItemInfo;

/* loaded from: classes.dex */
public class PackageItemInfo extends ItemInfo {
    int flags = 0;
    public Bitmap iconBitmap;
    public String packageName;
    public String titleSectionName;
    public boolean usingLowResIcon;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PackageItemInfo(String packageName) {
        this.packageName = packageName;
    }

    @Override // net.oneplus.h2launcher.ItemInfo
    public String toString() {
        return "PackageItemInfo(title=" + ((Object) this.title) + " id=" + this.id + " type=" + this.itemType + " container=" + this.container + " screen=" + this.screenId + " cellX=" + this.cellX + " cellY=" + this.cellY + " spanX=" + this.spanX + " spanY=" + this.spanY + " dropPos=" + Arrays.toString(this.dropPos) + " user=" + this.user + ")";
    }

    public Bitmap getIcon() {
        return this.iconBitmap;
    }
}

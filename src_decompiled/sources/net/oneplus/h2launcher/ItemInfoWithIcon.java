package net.oneplus.h2launcher;

import android.graphics.Bitmap;

/* loaded from: classes.dex */
public abstract class ItemInfoWithIcon extends ItemInfo {
    public Bitmap iconBitmap;
    public boolean usingLowResIcon;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemInfoWithIcon() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemInfoWithIcon(ItemInfoWithIcon info) {
        super(info);
        this.iconBitmap = info.iconBitmap;
        this.usingLowResIcon = info.usingLowResIcon;
    }
}

package net.oneplus.gallery3d.glrenderer;

import android.graphics.Bitmap;
import net.oneplus.gallery3d.common.Utils;

/* loaded from: classes.dex */
public class BitmapTexture extends UploadedTexture {
    protected Bitmap mContentBitmap;

    public BitmapTexture(Bitmap bitmap) {
        this(bitmap, false);
    }

    public BitmapTexture(Bitmap bitmap, boolean hasBorder) {
        super(hasBorder);
        Utils.assertTrue((bitmap == null || bitmap.isRecycled()) ? false : true);
        this.mContentBitmap = bitmap;
    }

    @Override // net.oneplus.gallery3d.glrenderer.UploadedTexture
    protected void onFreeBitmap(Bitmap bitmap) {
    }

    @Override // net.oneplus.gallery3d.glrenderer.UploadedTexture
    protected Bitmap onGetBitmap() {
        return this.mContentBitmap;
    }

    public Bitmap getBitmap() {
        return this.mContentBitmap;
    }
}

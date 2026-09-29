package net.oneplus.gallery3d.glrenderer;

import android.graphics.Bitmap;
import android.opengl.GLUtils;
import java.util.HashMap;
import net.oneplus.gallery3d.common.Utils;

/* loaded from: classes.dex */
public abstract class UploadedTexture extends BasicTexture {
    private static final String TAG = "Texture";
    private static final int UPLOAD_LIMIT = 100;
    private static int sUploadedCount;
    protected Bitmap mBitmap;
    private int mBorder;
    private boolean mContentValid;
    private boolean mIsUploading;
    private boolean mOpaque;
    private boolean mThrottled;
    private static HashMap<BorderKey, Bitmap> sBorderLines = new HashMap<>();
    private static BorderKey sBorderKey = new BorderKey();

    protected abstract void onFreeBitmap(Bitmap bitmap);

    protected abstract Bitmap onGetBitmap();

    protected UploadedTexture() {
        this(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public UploadedTexture(boolean hasBorder) {
        super(null, 0, 0);
        this.mContentValid = true;
        this.mIsUploading = false;
        this.mOpaque = true;
        this.mThrottled = false;
        if (hasBorder) {
            setBorder(true);
            this.mBorder = 1;
        }
    }

    protected void setIsUploading(boolean uploading) {
        this.mIsUploading = uploading;
    }

    public boolean isUploading() {
        return this.mIsUploading;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class BorderKey implements Cloneable {
        public Bitmap.Config config;
        public int length;
        public boolean vertical;

        BorderKey() {
        }

        public int hashCode() {
            int x = this.config.hashCode() ^ this.length;
            return this.vertical ? x : -x;
        }

        public boolean equals(Object object) {
            if (!(object instanceof BorderKey)) {
                return false;
            }
            BorderKey o = (BorderKey) object;
            return this.vertical == o.vertical && this.config == o.config && this.length == o.length;
        }

        public BorderKey clone() {
            try {
                return (BorderKey) super.clone();
            } catch (CloneNotSupportedException e) {
                throw new AssertionError(e);
            }
        }
    }

    protected void setThrottled(boolean throttled) {
        this.mThrottled = throttled;
    }

    private static Bitmap getBorderLine(boolean vertical, Bitmap.Config config, int length) {
        BorderKey key = sBorderKey;
        key.vertical = vertical;
        key.config = config;
        key.length = length;
        Bitmap bitmap = sBorderLines.get(key);
        if (bitmap == null) {
            if (vertical) {
                bitmap = Bitmap.createBitmap(1, length, config);
            } else {
                bitmap = Bitmap.createBitmap(length, 1, config);
            }
            sBorderLines.put(key.clone(), bitmap);
        }
        return bitmap;
    }

    private Bitmap getBitmap() {
        if (this.mBitmap == null) {
            this.mBitmap = onGetBitmap();
            int w = this.mBitmap.getWidth() + (this.mBorder * 2);
            int h = this.mBitmap.getHeight() + (this.mBorder * 2);
            if (this.mWidth == -1) {
                setSize(w, h);
            }
        }
        return this.mBitmap;
    }

    private void freeBitmap() {
        Utils.assertTrue(this.mBitmap != null);
        onFreeBitmap(this.mBitmap);
        this.mBitmap = null;
    }

    @Override // net.oneplus.gallery3d.glrenderer.BasicTexture, net.oneplus.gallery3d.glrenderer.Texture
    public int getWidth() {
        if (this.mWidth == -1) {
            getBitmap();
        }
        return this.mWidth;
    }

    @Override // net.oneplus.gallery3d.glrenderer.BasicTexture, net.oneplus.gallery3d.glrenderer.Texture
    public int getHeight() {
        if (this.mWidth == -1) {
            getBitmap();
        }
        return this.mHeight;
    }

    protected void invalidateContent() {
        if (this.mBitmap != null) {
            freeBitmap();
        }
        this.mContentValid = false;
        this.mWidth = -1;
        this.mHeight = -1;
    }

    public boolean isContentValid() {
        return isLoaded() && this.mContentValid;
    }

    public void updateContent(GLCanvas canvas) {
        if (!isLoaded()) {
            if (this.mThrottled) {
                int i = sUploadedCount + 1;
                sUploadedCount = i;
                if (i > 100) {
                    return;
                }
            }
            uploadToCanvas(canvas);
            return;
        }
        if (!this.mContentValid) {
            Bitmap bitmap = getBitmap();
            int format = GLUtils.getInternalFormat(bitmap);
            int type = GLUtils.getType(bitmap);
            canvas.texSubImage2D(this, this.mBorder, this.mBorder, bitmap, format, type);
            freeBitmap();
            this.mContentValid = true;
        }
    }

    public static void resetUploadLimit() {
        sUploadedCount = 0;
    }

    public static boolean uploadLimitReached() {
        return sUploadedCount > 100;
    }

    private void uploadToCanvas(GLCanvas canvas) {
        Bitmap bitmap = getBitmap();
        if (bitmap != null) {
            try {
                int bWidth = bitmap.getWidth();
                int bHeight = bitmap.getHeight();
                int i = bWidth + (this.mBorder * 2);
                int i2 = bHeight + (this.mBorder * 2);
                int texWidth = getTextureWidth();
                int texHeight = getTextureHeight();
                Utils.assertTrue(bWidth <= texWidth && bHeight <= texHeight);
                this.mId = canvas.getGLId().generateTexture();
                canvas.setTextureParameters(this);
                if (bWidth == texWidth && bHeight == texHeight) {
                    canvas.initializeTexture(this, bitmap);
                } else {
                    int format = GLUtils.getInternalFormat(bitmap);
                    int type = GLUtils.getType(bitmap);
                    Bitmap.Config config = bitmap.getConfig();
                    canvas.initializeTextureSize(this, format, type);
                    canvas.texSubImage2D(this, this.mBorder, this.mBorder, bitmap, format, type);
                    if (this.mBorder > 0) {
                        Bitmap line = getBorderLine(true, config, texHeight);
                        canvas.texSubImage2D(this, 0, 0, line, format, type);
                        Bitmap line2 = getBorderLine(false, config, texWidth);
                        canvas.texSubImage2D(this, 0, 0, line2, format, type);
                    }
                    if (this.mBorder + bWidth < texWidth) {
                        Bitmap line3 = getBorderLine(true, config, texHeight);
                        canvas.texSubImage2D(this, this.mBorder + bWidth, 0, line3, format, type);
                    }
                    if (this.mBorder + bHeight < texHeight) {
                        Bitmap line4 = getBorderLine(false, config, texWidth);
                        canvas.texSubImage2D(this, 0, this.mBorder + bHeight, line4, format, type);
                    }
                }
                freeBitmap();
                setAssociatedCanvas(canvas);
                this.mState = 1;
                this.mContentValid = true;
                return;
            } catch (Throwable th) {
                freeBitmap();
                throw th;
            }
        }
        this.mState = -1;
        throw new RuntimeException("Texture load fail, no bitmap");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.gallery3d.glrenderer.BasicTexture
    public boolean onBind(GLCanvas canvas) {
        updateContent(canvas);
        return isContentValid();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.gallery3d.glrenderer.BasicTexture
    public int getTarget() {
        return 3553;
    }

    public void setOpaque(boolean isOpaque) {
        this.mOpaque = isOpaque;
    }

    @Override // net.oneplus.gallery3d.glrenderer.Texture
    public boolean isOpaque() {
        return this.mOpaque;
    }

    @Override // net.oneplus.gallery3d.glrenderer.BasicTexture
    public void recycle() {
        super.recycle();
        if (this.mBitmap != null) {
            freeBitmap();
        }
    }
}

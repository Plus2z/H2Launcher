package net.oneplus.gallery3d.glrenderer;

import android.util.Log;
import java.util.WeakHashMap;
import net.oneplus.gallery3d.common.Utils;

/* loaded from: classes.dex */
public abstract class BasicTexture implements Texture {
    private static final int MAX_TEXTURE_SIZE = 4096;
    protected static final int STATE_ERROR = -1;
    protected static final int STATE_LOADED = 1;
    protected static final int STATE_UNLOADED = 0;
    private static final String TAG = "BasicTexture";
    protected static final int UNSPECIFIED = -1;
    private static WeakHashMap<BasicTexture, Object> sAllTextures = new WeakHashMap<>();
    private static ThreadLocal sInFinalizer = new ThreadLocal();
    protected GLCanvas mCanvasRef;
    private boolean mHasBorder;
    protected int mHeight;
    protected int mId;
    protected int mState;
    protected int mTextureHeight;
    protected int mTextureWidth;
    protected int mWidth;

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int getTarget();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract boolean onBind(GLCanvas gLCanvas);

    /* JADX INFO: Access modifiers changed from: protected */
    public BasicTexture(GLCanvas canvas, int id, int state) {
        this.mId = -1;
        this.mWidth = -1;
        this.mHeight = -1;
        this.mCanvasRef = null;
        setAssociatedCanvas(canvas);
        this.mId = id;
        this.mState = state;
        synchronized (sAllTextures) {
            sAllTextures.put(this, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BasicTexture() {
        this(null, 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setAssociatedCanvas(GLCanvas canvas) {
        this.mCanvasRef = canvas;
    }

    public void setSize(int width, int height) {
        this.mWidth = width;
        this.mHeight = height;
        this.mTextureWidth = width > 0 ? Utils.nextPowerOf2(width) : 0;
        this.mTextureHeight = height > 0 ? Utils.nextPowerOf2(height) : 0;
        if (this.mTextureWidth > 4096 || this.mTextureHeight > 4096) {
            Log.w(TAG, String.format("texture is too large: %d x %d", Integer.valueOf(this.mTextureWidth), Integer.valueOf(this.mTextureHeight)), new Exception());
        }
    }

    public boolean isFlippedVertically() {
        return false;
    }

    public int getId() {
        return this.mId;
    }

    @Override // net.oneplus.gallery3d.glrenderer.Texture
    public int getWidth() {
        return this.mWidth;
    }

    @Override // net.oneplus.gallery3d.glrenderer.Texture
    public int getHeight() {
        return this.mHeight;
    }

    public int getTextureWidth() {
        return this.mTextureWidth;
    }

    public int getTextureHeight() {
        return this.mTextureHeight;
    }

    public boolean hasBorder() {
        return this.mHasBorder;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setBorder(boolean hasBorder) {
        this.mHasBorder = hasBorder;
    }

    @Override // net.oneplus.gallery3d.glrenderer.Texture
    public void draw(GLCanvas canvas, int x, int y) {
        canvas.drawTexture(this, x, y, getWidth(), getHeight());
    }

    @Override // net.oneplus.gallery3d.glrenderer.Texture
    public void draw(GLCanvas canvas, int x, int y, int w, int h) {
        canvas.drawTexture(this, x, y, w, h);
    }

    public boolean isLoaded() {
        return this.mState == 1;
    }

    public void recycle() {
        freeResource();
    }

    public void yield() {
        freeResource();
    }

    private void freeResource() {
        GLCanvas canvas = this.mCanvasRef;
        if (canvas != null && this.mId != -1) {
            canvas.unloadTexture(this);
            this.mId = -1;
        }
        this.mState = 0;
        setAssociatedCanvas(null);
    }

    protected void finalize() {
        sInFinalizer.set(BasicTexture.class);
        recycle();
        sInFinalizer.set(null);
    }

    public static boolean inFinalizer() {
        return sInFinalizer.get() != null;
    }

    public static void yieldAllTextures() {
        synchronized (sAllTextures) {
            for (BasicTexture t : sAllTextures.keySet()) {
                t.yield();
            }
        }
    }

    public static void invalidateAllTextures() {
        synchronized (sAllTextures) {
            for (BasicTexture t : sAllTextures.keySet()) {
                t.mState = 0;
                t.setAssociatedCanvas(null);
            }
        }
    }
}

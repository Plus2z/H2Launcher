package net.oneplus.gallery3d.glrenderer;

import android.util.Log;

/* loaded from: classes.dex */
public class RawTexture extends BasicTexture {
    private static final String TAG = "RawTexture";
    private boolean mIsFlipped;
    private final boolean mOpaque;

    public RawTexture(int width, int height, boolean opaque) {
        this.mOpaque = opaque;
        setSize(width, height);
    }

    @Override // net.oneplus.gallery3d.glrenderer.Texture
    public boolean isOpaque() {
        return this.mOpaque;
    }

    @Override // net.oneplus.gallery3d.glrenderer.BasicTexture
    public boolean isFlippedVertically() {
        return this.mIsFlipped;
    }

    public void setIsFlippedVertically(boolean isFlipped) {
        this.mIsFlipped = isFlipped;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void prepare(GLCanvas canvas) {
        GLId glId = canvas.getGLId();
        this.mId = glId.generateTexture();
        canvas.initializeTextureSize(this, 6408, 5121);
        canvas.setTextureParameters(this);
        this.mState = 1;
        setAssociatedCanvas(canvas);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.gallery3d.glrenderer.BasicTexture
    public boolean onBind(GLCanvas canvas) {
        if (isLoaded()) {
            return true;
        }
        Log.w(TAG, "lost the content due to context change");
        return false;
    }

    @Override // net.oneplus.gallery3d.glrenderer.BasicTexture
    public void yield() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.gallery3d.glrenderer.BasicTexture
    public int getTarget() {
        return 3553;
    }
}

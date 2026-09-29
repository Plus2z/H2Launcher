package net.oneplus.gallery3d.glrenderer;

import android.opengl.GLES20;
import javax.microedition.khronos.opengles.GL11;
import javax.microedition.khronos.opengles.GL11ExtensionPack;

/* loaded from: classes.dex */
public class GLES20IdImpl implements GLId {
    private final int[] mTempIntArray = new int[1];

    @Override // net.oneplus.gallery3d.glrenderer.GLId
    public int generateTexture() {
        GLES20.glGenTextures(1, this.mTempIntArray, 0);
        GLES20Canvas.checkError();
        return this.mTempIntArray[0];
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLId
    public void glGenBuffers(int n, int[] buffers, int offset) {
        GLES20.glGenBuffers(n, buffers, offset);
        GLES20Canvas.checkError();
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLId
    public void glDeleteTextures(GL11 gl, int n, int[] textures, int offset) {
        GLES20.glDeleteTextures(n, textures, offset);
        GLES20Canvas.checkError();
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLId
    public void glDeleteBuffers(GL11 gl, int n, int[] buffers, int offset) {
        GLES20.glDeleteBuffers(n, buffers, offset);
        GLES20Canvas.checkError();
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLId
    public void glDeleteFramebuffers(GL11ExtensionPack gl11ep, int n, int[] buffers, int offset) {
        GLES20.glDeleteFramebuffers(n, buffers, offset);
        GLES20Canvas.checkError();
    }
}

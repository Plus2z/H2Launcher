package net.oneplus.gallery3d.glrenderer;

/* loaded from: classes.dex */
public interface Texture {
    void draw(GLCanvas gLCanvas, int i, int i2);

    void draw(GLCanvas gLCanvas, int i, int i2, int i3, int i4);

    int getHeight();

    int getWidth();

    boolean isOpaque();
}

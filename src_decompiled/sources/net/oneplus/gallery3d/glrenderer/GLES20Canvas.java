package net.oneplus.gallery3d.glrenderer;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.RectF;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.opengl.Matrix;
import android.util.Log;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
import net.oneplus.h2launcher.config.CustomInfoLegacyHelper;

/* loaded from: classes.dex */
public class GLES20Canvas implements GLCanvas {
    private static final String ALPHA_UNIFORM = "uAlpha";
    private static final String COLOR_UNIFORM = "uColor";
    private static final int COORDS_PER_VERTEX = 2;
    private static final int COUNT_FILL_VERTEX = 4;
    private static final int COUNT_LINE_VERTEX = 2;
    private static final int COUNT_RECT_VERTEX = 4;
    private static final String DRAW_FRAGMENT_SHADER = "precision mediump float;\nuniform vec4 uColor;\nvoid main() {\n  gl_FragColor = uColor;\n}\n";
    private static final String DRAW_VERTEX_SHADER = "uniform mat4 uMatrix;\nattribute vec2 aPosition;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n}\n";
    private static final int FLOAT_SIZE = 4;
    private static final int INDEX_ALPHA = 4;
    private static final int INDEX_COLOR = 2;
    private static final int INDEX_MATRIX = 1;
    private static final int INDEX_POSITION = 0;
    private static final int INDEX_TEXTURE_COORD = 2;
    private static final int INDEX_TEXTURE_MATRIX = 2;
    private static final int INDEX_TEXTURE_SAMPLER = 3;
    private static final int INITIAL_RESTORE_STATE_SIZE = 8;
    private static final int MATRIX_SIZE = 16;
    private static final String MATRIX_UNIFORM = "uMatrix";
    private static final String MESH_VERTEX_SHADER = "uniform mat4 uMatrix;\nattribute vec2 aPosition;\nattribute vec2 aTextureCoordinate;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n  vTextureCoord = aTextureCoordinate;\n}\n";
    private static final String OES_TEXTURE_FRAGMENT_SHADER = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform float uAlpha;\nuniform samplerExternalOES uTextureSampler;\nvoid main() {\n  gl_FragColor = texture2D(uTextureSampler, vTextureCoord);\n  gl_FragColor *= uAlpha;\n}\n";
    private static final int OFFSET_DRAW_LINE = 4;
    private static final int OFFSET_DRAW_RECT = 6;
    private static final int OFFSET_FILL_RECT = 0;
    private static final float OPAQUE_ALPHA = 0.95f;
    private static final String POSITION_ATTRIBUTE = "aPosition";
    private static final String TEXTURE_COORD_ATTRIBUTE = "aTextureCoordinate";
    private static final String TEXTURE_FRAGMENT_SHADER = "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform float uAlpha;\nuniform sampler2D uTextureSampler;\nvoid main() {\n  gl_FragColor = texture2D(uTextureSampler, vTextureCoord);\n  gl_FragColor *= uAlpha;\n}\n";
    private static final String TEXTURE_MATRIX_UNIFORM = "uTextureMatrix";
    private static final String TEXTURE_SAMPLER_UNIFORM = "uTextureSampler";
    private static final String TEXTURE_VERTEX_SHADER = "uniform mat4 uMatrix;\nuniform mat4 uTextureMatrix;\nattribute vec2 aPosition;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n  vTextureCoord = (uTextureMatrix * pos).xy;\n}\n";
    private static final int VERTEX_STRIDE = 8;
    private int mBoxCoordinates;
    private int mDrawProgram;
    private int mHeight;
    private int mMeshProgram;
    private int mOesTextureProgram;
    private int mScreenHeight;
    private int mScreenWidth;
    private int mTextureProgram;
    private int mWidth;
    private static final String TAG = GLES20Canvas.class.getSimpleName();
    private static final float[] BOX_COORDINATES = {0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f};
    private static final float[] BOUNDS_COORDINATES = {0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f};
    private static final GLId mGLId = new GLES20IdImpl();
    private float[] mMatrices = new float[128];
    private float[] mAlphas = new float[8];
    private IntArray mSaveFlags = new IntArray();
    private int mCurrentAlphaIndex = 0;
    private int mCurrentMatrixIndex = 0;
    private float[] mProjectionMatrix = new float[16];
    ShaderParameter[] mDrawParameters = {new AttributeShaderParameter(POSITION_ATTRIBUTE), new UniformShaderParameter(MATRIX_UNIFORM), new UniformShaderParameter(COLOR_UNIFORM)};
    ShaderParameter[] mTextureParameters = {new AttributeShaderParameter(POSITION_ATTRIBUTE), new UniformShaderParameter(MATRIX_UNIFORM), new UniformShaderParameter(TEXTURE_MATRIX_UNIFORM), new UniformShaderParameter(TEXTURE_SAMPLER_UNIFORM), new UniformShaderParameter(ALPHA_UNIFORM)};
    ShaderParameter[] mOesTextureParameters = {new AttributeShaderParameter(POSITION_ATTRIBUTE), new UniformShaderParameter(MATRIX_UNIFORM), new UniformShaderParameter(TEXTURE_MATRIX_UNIFORM), new UniformShaderParameter(TEXTURE_SAMPLER_UNIFORM), new UniformShaderParameter(ALPHA_UNIFORM)};
    ShaderParameter[] mMeshParameters = {new AttributeShaderParameter(POSITION_ATTRIBUTE), new UniformShaderParameter(MATRIX_UNIFORM), new AttributeShaderParameter(TEXTURE_COORD_ATTRIBUTE), new UniformShaderParameter(TEXTURE_SAMPLER_UNIFORM), new UniformShaderParameter(ALPHA_UNIFORM)};
    private final IntArray mUnboundTextures = new IntArray();
    private final IntArray mDeleteBuffers = new IntArray();
    private int mCountDrawMesh = 0;
    private int mCountTextureRect = 0;
    private int mCountFillRect = 0;
    private int mCountDrawLine = 0;
    private int[] mFrameBuffer = new int[1];
    private ArrayList<RawTexture> mTargetTextures = new ArrayList<>();
    private final float[] mTempMatrix = new float[32];
    private final float[] mTempColor = new float[4];
    private final RectF mTempSourceRect = new RectF();
    private final RectF mTempTargetRect = new RectF();
    private final float[] mTempTextureMatrix = new float[16];
    private final int[] mTempIntArray = new int[1];

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static abstract class ShaderParameter {
        public int handle;
        protected final String mName;

        public abstract void loadHandle(int i);

        public ShaderParameter(String name) {
            this.mName = name;
        }
    }

    /* loaded from: classes.dex */
    private static class UniformShaderParameter extends ShaderParameter {
        public UniformShaderParameter(String name) {
            super(name);
        }

        @Override // net.oneplus.gallery3d.glrenderer.GLES20Canvas.ShaderParameter
        public void loadHandle(int program) {
            this.handle = GLES20.glGetUniformLocation(program, this.mName);
            GLES20Canvas.checkError();
        }
    }

    /* loaded from: classes.dex */
    private static class AttributeShaderParameter extends ShaderParameter {
        public AttributeShaderParameter(String name) {
            super(name);
        }

        @Override // net.oneplus.gallery3d.glrenderer.GLES20Canvas.ShaderParameter
        public void loadHandle(int program) {
            this.handle = GLES20.glGetAttribLocation(program, this.mName);
            GLES20Canvas.checkError();
        }
    }

    public GLES20Canvas() {
        Matrix.setIdentityM(this.mTempTextureMatrix, 0);
        Matrix.setIdentityM(this.mMatrices, this.mCurrentMatrixIndex);
        this.mAlphas[this.mCurrentAlphaIndex] = 1.0f;
        this.mTargetTextures.add(null);
        FloatBuffer boxBuffer = createBuffer(BOX_COORDINATES);
        this.mBoxCoordinates = uploadBuffer(boxBuffer);
        int drawVertexShader = loadShader(35633, DRAW_VERTEX_SHADER);
        int textureVertexShader = loadShader(35633, TEXTURE_VERTEX_SHADER);
        int meshVertexShader = loadShader(35633, MESH_VERTEX_SHADER);
        int drawFragmentShader = loadShader(35632, DRAW_FRAGMENT_SHADER);
        int textureFragmentShader = loadShader(35632, TEXTURE_FRAGMENT_SHADER);
        int oesTextureFragmentShader = loadShader(35632, OES_TEXTURE_FRAGMENT_SHADER);
        this.mDrawProgram = assembleProgram(drawVertexShader, drawFragmentShader, this.mDrawParameters);
        this.mTextureProgram = assembleProgram(textureVertexShader, textureFragmentShader, this.mTextureParameters);
        this.mOesTextureProgram = assembleProgram(textureVertexShader, oesTextureFragmentShader, this.mOesTextureParameters);
        this.mMeshProgram = assembleProgram(meshVertexShader, textureFragmentShader, this.mMeshParameters);
        GLES20.glBlendFunc(1, 771);
        checkError();
    }

    private static FloatBuffer createBuffer(float[] values) {
        int size = values.length * 4;
        FloatBuffer buffer = ByteBuffer.allocateDirect(size).order(ByteOrder.nativeOrder()).asFloatBuffer();
        buffer.put(values, 0, values.length).position(0);
        return buffer;
    }

    private int assembleProgram(int vertexShader, int fragmentShader, ShaderParameter[] params) {
        int program = GLES20.glCreateProgram();
        checkError();
        if (program == 0) {
            throw new RuntimeException("Cannot create GL program: " + GLES20.glGetError());
        }
        GLES20.glAttachShader(program, vertexShader);
        checkError();
        GLES20.glAttachShader(program, fragmentShader);
        checkError();
        GLES20.glLinkProgram(program);
        checkError();
        int[] mLinkStatus = this.mTempIntArray;
        GLES20.glGetProgramiv(program, 35714, mLinkStatus, 0);
        if (mLinkStatus[0] != 1) {
            Log.e(TAG, "Could not link program: ");
            Log.e(TAG, GLES20.glGetProgramInfoLog(program));
            GLES20.glDeleteProgram(program);
            program = 0;
        }
        for (ShaderParameter shaderParameter : params) {
            shaderParameter.loadHandle(program);
        }
        return program;
    }

    private static int loadShader(int type, String shaderCode) {
        int shader = GLES20.glCreateShader(type);
        GLES20.glShaderSource(shader, shaderCode);
        checkError();
        GLES20.glCompileShader(shader);
        checkError();
        return shader;
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLCanvas
    public void setSize(int width, int height) {
        this.mWidth = width;
        this.mHeight = height;
        GLES20.glViewport(0, 0, this.mWidth, this.mHeight);
        checkError();
        Matrix.setIdentityM(this.mMatrices, this.mCurrentMatrixIndex);
        Matrix.orthoM(this.mProjectionMatrix, 0, 0.0f, width, 0.0f, height, -1.0f, 1.0f);
        if (getTargetTexture() == null) {
            this.mScreenWidth = width;
            this.mScreenHeight = height;
            Matrix.translateM(this.mMatrices, this.mCurrentMatrixIndex, 0.0f, height, 0.0f);
            Matrix.scaleM(this.mMatrices, this.mCurrentMatrixIndex, 1.0f, -1.0f, 1.0f);
        }
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLCanvas
    public void clearBuffer() {
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
        checkError();
        GLES20.glClear(16384);
        checkError();
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLCanvas
    public void clearBuffer(float[] argb) {
        GLES20.glClearColor(argb[1], argb[2], argb[3], argb[0]);
        checkError();
        GLES20.glClear(16384);
        checkError();
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLCanvas
    public float getAlpha() {
        return this.mAlphas[this.mCurrentAlphaIndex];
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLCanvas
    public void setAlpha(float alpha) {
        this.mAlphas[this.mCurrentAlphaIndex] = alpha;
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLCanvas
    public void multiplyAlpha(float alpha) {
        setAlpha(getAlpha() * alpha);
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLCanvas
    public void translate(float x, float y, float z) {
        Matrix.translateM(this.mMatrices, this.mCurrentMatrixIndex, x, y, z);
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLCanvas
    public void translate(float x, float y) {
        int index = this.mCurrentMatrixIndex;
        float[] m = this.mMatrices;
        int i = index + 12;
        m[i] = m[i] + (m[index + 0] * x) + (m[index + 4] * y);
        int i2 = index + 13;
        m[i2] = m[i2] + (m[index + 1] * x) + (m[index + 5] * y);
        int i3 = index + 14;
        m[i3] = m[i3] + (m[index + 2] * x) + (m[index + 6] * y);
        int i4 = index + 15;
        m[i4] = m[i4] + (m[index + 3] * x) + (m[index + 7] * y);
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLCanvas
    public void scale(float sx, float sy, float sz) {
        Matrix.scaleM(this.mMatrices, this.mCurrentMatrixIndex, sx, sy, sz);
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLCanvas
    public void rotate(float angle, float x, float y, float z) {
        if (angle != 0.0f) {
            float[] temp = this.mTempMatrix;
            Matrix.setRotateM(temp, 0, angle, x, y, z);
            float[] matrix = this.mMatrices;
            int index = this.mCurrentMatrixIndex;
            Matrix.multiplyMM(temp, 16, matrix, index, temp, 0);
            System.arraycopy(temp, 16, matrix, index, 16);
        }
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLCanvas
    public void multiplyMatrix(float[] matrix, int offset) {
        float[] temp = this.mTempMatrix;
        float[] currentMatrix = this.mMatrices;
        int index = this.mCurrentMatrixIndex;
        Matrix.multiplyMM(temp, 0, currentMatrix, index, matrix, offset);
        System.arraycopy(temp, 0, currentMatrix, index, 16);
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLCanvas
    public void save() {
        save(-1);
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLCanvas
    public void save(int saveFlags) {
        boolean saveAlpha = (saveFlags & 1) == 1;
        if (saveAlpha) {
            float currentAlpha = getAlpha();
            this.mCurrentAlphaIndex++;
            if (this.mAlphas.length <= this.mCurrentAlphaIndex) {
                this.mAlphas = Arrays.copyOf(this.mAlphas, this.mAlphas.length * 2);
            }
            this.mAlphas[this.mCurrentAlphaIndex] = currentAlpha;
        }
        boolean saveMatrix = (saveFlags & 2) == 2;
        if (saveMatrix) {
            int currentIndex = this.mCurrentMatrixIndex;
            this.mCurrentMatrixIndex += 16;
            if (this.mMatrices.length <= this.mCurrentMatrixIndex) {
                this.mMatrices = Arrays.copyOf(this.mMatrices, this.mMatrices.length * 2);
            }
            System.arraycopy(this.mMatrices, currentIndex, this.mMatrices, this.mCurrentMatrixIndex, 16);
        }
        this.mSaveFlags.add(saveFlags);
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLCanvas
    public void restore() {
        int restoreFlags = this.mSaveFlags.removeLast();
        boolean restoreAlpha = (restoreFlags & 1) == 1;
        if (restoreAlpha) {
            this.mCurrentAlphaIndex--;
        }
        boolean restoreMatrix = (restoreFlags & 2) == 2;
        if (restoreMatrix) {
            this.mCurrentMatrixIndex -= 16;
        }
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLCanvas
    public void drawLine(float x1, float y1, float x2, float y2, GLPaint paint) {
        draw(3, 4, 2, x1, y1, x2 - x1, y2 - y1, paint);
        this.mCountDrawLine++;
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLCanvas
    public void drawRect(float x, float y, float width, float height, GLPaint paint) {
        draw(2, 6, 4, x, y, width, height, paint);
        this.mCountDrawLine++;
    }

    private void draw(int type, int offset, int count, float x, float y, float width, float height, GLPaint paint) {
        draw(type, offset, count, x, y, width, height, paint.getColor(), paint.getLineWidth());
    }

    private void draw(int type, int offset, int count, float x, float y, float width, float height, int color, float lineWidth) {
        prepareDraw(offset, color, lineWidth);
        draw(this.mDrawParameters, type, count, x, y, width, height);
    }

    private void prepareDraw(int offset, int color, float lineWidth) {
        GLES20.glUseProgram(this.mDrawProgram);
        checkError();
        if (lineWidth > 0.0f) {
            GLES20.glLineWidth(lineWidth);
            checkError();
        }
        float[] colorArray = getColor(color);
        boolean blendingEnabled = colorArray[3] < 1.0f;
        enableBlending(blendingEnabled);
        if (blendingEnabled) {
            GLES20.glBlendColor(colorArray[0], colorArray[1], colorArray[2], colorArray[3]);
            checkError();
        }
        GLES20.glUniform4fv(this.mDrawParameters[2].handle, 1, colorArray, 0);
        setPosition(this.mDrawParameters, offset);
        checkError();
    }

    private float[] getColor(int color) {
        float alpha = (((color >>> 24) & 255) / 255.0f) * getAlpha();
        float red = (((color >>> 16) & 255) / 255.0f) * alpha;
        float green = (((color >>> 8) & 255) / 255.0f) * alpha;
        float blue = ((color & 255) / 255.0f) * alpha;
        this.mTempColor[0] = red;
        this.mTempColor[1] = green;
        this.mTempColor[2] = blue;
        this.mTempColor[3] = alpha;
        return this.mTempColor;
    }

    private void enableBlending(boolean enableBlending) {
        if (enableBlending) {
            GLES20.glEnable(3042);
            checkError();
        } else {
            GLES20.glDisable(3042);
            checkError();
        }
    }

    private void setPosition(ShaderParameter[] params, int offset) {
        GLES20.glBindBuffer(34962, this.mBoxCoordinates);
        checkError();
        GLES20.glVertexAttribPointer(params[0].handle, 2, 5126, false, 8, offset * 8);
        checkError();
        GLES20.glBindBuffer(34962, 0);
        checkError();
    }

    private void draw(ShaderParameter[] params, int type, int count, float x, float y, float width, float height) {
        setMatrix(params, x, y, width, height);
        int positionHandle = params[0].handle;
        GLES20.glEnableVertexAttribArray(positionHandle);
        checkError();
        GLES20.glDrawArrays(type, 0, count);
        checkError();
        GLES20.glDisableVertexAttribArray(positionHandle);
        checkError();
    }

    private void setMatrix(ShaderParameter[] params, float x, float y, float width, float height) {
        Matrix.translateM(this.mTempMatrix, 0, this.mMatrices, this.mCurrentMatrixIndex, x, y, 0.0f);
        Matrix.scaleM(this.mTempMatrix, 0, width, height, 1.0f);
        Matrix.multiplyMM(this.mTempMatrix, 16, this.mProjectionMatrix, 0, this.mTempMatrix, 0);
        GLES20.glUniformMatrix4fv(params[1].handle, 1, false, this.mTempMatrix, 16);
        checkError();
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLCanvas
    public void fillRect(float x, float y, float width, float height, int color) {
        draw(5, 0, 4, x, y, width, height, color, 0.0f);
        this.mCountFillRect++;
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLCanvas
    public void drawTexture(BasicTexture texture, int x, int y, int width, int height) {
        if (width > 0 && height > 0) {
            copyTextureCoordinates(texture, this.mTempSourceRect);
            this.mTempTargetRect.set(x, y, x + width, y + height);
            convertCoordinate(this.mTempSourceRect, this.mTempTargetRect, texture);
            drawTextureRect(texture, this.mTempSourceRect, this.mTempTargetRect);
        }
    }

    private static void copyTextureCoordinates(BasicTexture texture, RectF outRect) {
        int left = 0;
        int top = 0;
        int right = texture.getWidth();
        int bottom = texture.getHeight();
        if (texture.hasBorder()) {
            left = 1;
            top = 1;
            right--;
            bottom--;
        }
        outRect.set(left, top, right, bottom);
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLCanvas
    public void drawTexture(BasicTexture texture, RectF source, RectF target) {
        if (target.width() > 0.0f && target.height() > 0.0f) {
            this.mTempSourceRect.set(source);
            this.mTempTargetRect.set(target);
            convertCoordinate(this.mTempSourceRect, this.mTempTargetRect, texture);
            drawTextureRect(texture, this.mTempSourceRect, this.mTempTargetRect);
        }
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLCanvas
    public void drawTexture(BasicTexture texture, float[] textureTransform, int x, int y, int w, int h) {
        if (w > 0 && h > 0) {
            this.mTempTargetRect.set(x, y, x + w, y + h);
            drawTextureRect(texture, textureTransform, this.mTempTargetRect);
        }
    }

    private void drawTextureRect(BasicTexture texture, RectF source, RectF target) {
        setTextureMatrix(source);
        drawTextureRect(texture, this.mTempTextureMatrix, target);
    }

    private void setTextureMatrix(RectF source) {
        this.mTempTextureMatrix[0] = source.width();
        this.mTempTextureMatrix[5] = source.height();
        this.mTempTextureMatrix[12] = source.left;
        this.mTempTextureMatrix[13] = source.top;
    }

    private static void convertCoordinate(RectF source, RectF target, BasicTexture texture) {
        int width = texture.getWidth();
        int height = texture.getHeight();
        int texWidth = texture.getTextureWidth();
        int texHeight = texture.getTextureHeight();
        source.left /= texWidth;
        source.right /= texWidth;
        source.top /= texHeight;
        source.bottom /= texHeight;
        float xBound = width / texWidth;
        if (source.right > xBound) {
            target.right = target.left + ((target.width() * (xBound - source.left)) / source.width());
            source.right = xBound;
        }
        float yBound = height / texHeight;
        if (source.bottom > yBound) {
            target.bottom = target.top + ((target.height() * (yBound - source.top)) / source.height());
            source.bottom = yBound;
        }
    }

    private void drawTextureRect(BasicTexture texture, float[] textureMatrix, RectF target) {
        ShaderParameter[] params = prepareTexture(texture);
        setPosition(params, 0);
        GLES20.glUniformMatrix4fv(params[2].handle, 1, false, textureMatrix, 0);
        checkError();
        if (texture.isFlippedVertically()) {
            save(2);
            translate(0.0f, target.centerY());
            scale(1.0f, -1.0f, 1.0f);
            translate(0.0f, -target.centerY());
        }
        draw(params, 5, 4, target.left, target.top, target.width(), target.height());
        if (texture.isFlippedVertically()) {
            restore();
        }
        this.mCountTextureRect++;
    }

    private ShaderParameter[] prepareTexture(BasicTexture texture) {
        ShaderParameter[] params;
        int program;
        if (texture.getTarget() == 3553) {
            params = this.mTextureParameters;
            program = this.mTextureProgram;
        } else {
            params = this.mOesTextureParameters;
            program = this.mOesTextureProgram;
        }
        prepareTexture(texture, program, params);
        return params;
    }

    private void prepareTexture(BasicTexture texture, int program, ShaderParameter[] params) {
        deleteRecycledResources();
        GLES20.glUseProgram(program);
        checkError();
        enableBlending(!texture.isOpaque() || getAlpha() < OPAQUE_ALPHA);
        GLES20.glActiveTexture(33984);
        checkError();
        texture.onBind(this);
        GLES20.glBindTexture(texture.getTarget(), texture.getId());
        checkError();
        GLES20.glUniform1i(params[3].handle, 0);
        checkError();
        GLES20.glUniform1f(params[4].handle, getAlpha());
        checkError();
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLCanvas
    public void drawMesh(BasicTexture texture, int x, int y, int xyBuffer, int uvBuffer, int indexBuffer, int indexCount) {
        prepareTexture(texture, this.mMeshProgram, this.mMeshParameters);
        GLES20.glBindBuffer(34963, indexBuffer);
        checkError();
        GLES20.glBindBuffer(34962, xyBuffer);
        checkError();
        int positionHandle = this.mMeshParameters[0].handle;
        GLES20.glVertexAttribPointer(positionHandle, 2, 5126, false, 8, 0);
        checkError();
        GLES20.glBindBuffer(34962, uvBuffer);
        checkError();
        int texCoordHandle = this.mMeshParameters[2].handle;
        GLES20.glVertexAttribPointer(texCoordHandle, 2, 5126, false, 8, 0);
        checkError();
        GLES20.glBindBuffer(34962, 0);
        checkError();
        GLES20.glEnableVertexAttribArray(positionHandle);
        checkError();
        GLES20.glEnableVertexAttribArray(texCoordHandle);
        checkError();
        setMatrix(this.mMeshParameters, x, y, 1.0f, 1.0f);
        GLES20.glDrawElements(5, indexCount, 5121, 0);
        checkError();
        GLES20.glDisableVertexAttribArray(positionHandle);
        checkError();
        GLES20.glDisableVertexAttribArray(texCoordHandle);
        checkError();
        GLES20.glBindBuffer(34963, 0);
        checkError();
        this.mCountDrawMesh++;
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLCanvas
    public void drawMixed(BasicTexture texture, int toColor, float ratio, int x, int y, int w, int h) {
        copyTextureCoordinates(texture, this.mTempSourceRect);
        this.mTempTargetRect.set(x, y, x + w, y + h);
        drawMixed(texture, toColor, ratio, this.mTempSourceRect, this.mTempTargetRect);
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLCanvas
    public void drawMixed(BasicTexture texture, int toColor, float ratio, RectF source, RectF target) {
        if (target.width() > 0.0f && target.height() > 0.0f) {
            save(1);
            float currentAlpha = getAlpha();
            float cappedRatio = Math.min(1.0f, Math.max(0.0f, ratio));
            float textureAlpha = (1.0f - cappedRatio) * currentAlpha;
            setAlpha(textureAlpha);
            drawTexture(texture, source, target);
            float colorAlpha = cappedRatio * currentAlpha;
            setAlpha(colorAlpha);
            fillRect(target.left, target.top, target.width(), target.height(), toColor);
            restore();
        }
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLCanvas
    public boolean unloadTexture(BasicTexture texture) {
        boolean unload = texture.isLoaded();
        if (unload) {
            synchronized (this.mUnboundTextures) {
                this.mUnboundTextures.add(texture.getId());
            }
        }
        return unload;
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLCanvas
    public void deleteBuffer(int bufferId) {
        synchronized (this.mUnboundTextures) {
            this.mDeleteBuffers.add(bufferId);
        }
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLCanvas
    public void deleteRecycledResources() {
        synchronized (this.mUnboundTextures) {
            IntArray ids = this.mUnboundTextures;
            if (this.mUnboundTextures.size() > 0) {
                mGLId.glDeleteTextures(null, ids.size(), ids.getInternalArray(), 0);
                ids.clear();
            }
            IntArray ids2 = this.mDeleteBuffers;
            if (ids2.size() > 0) {
                mGLId.glDeleteBuffers(null, ids2.size(), ids2.getInternalArray(), 0);
                ids2.clear();
            }
        }
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLCanvas
    public void dumpStatisticsAndClear() {
        String line = String.format(Locale.getDefault(), "MESH:%d, TEX_RECT:%d, FILL_RECT:%d, LINE:%d", Integer.valueOf(this.mCountDrawMesh), Integer.valueOf(this.mCountTextureRect), Integer.valueOf(this.mCountFillRect), Integer.valueOf(this.mCountDrawLine));
        this.mCountDrawMesh = 0;
        this.mCountTextureRect = 0;
        this.mCountFillRect = 0;
        this.mCountDrawLine = 0;
        Log.d(TAG, line);
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLCanvas
    public void endRenderTarget() {
        RawTexture oldTexture = this.mTargetTextures.remove(this.mTargetTextures.size() - 1);
        RawTexture texture = getTargetTexture();
        setRenderTarget(oldTexture, texture);
        restore();
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLCanvas
    public void beginRenderTarget(RawTexture texture) {
        save();
        RawTexture oldTexture = getTargetTexture();
        this.mTargetTextures.add(texture);
        setRenderTarget(oldTexture, texture);
    }

    private RawTexture getTargetTexture() {
        return this.mTargetTextures.get(this.mTargetTextures.size() - 1);
    }

    private void setRenderTarget(BasicTexture oldTexture, RawTexture texture) {
        if (oldTexture == null && texture != null) {
            GLES20.glGenFramebuffers(1, this.mFrameBuffer, 0);
            checkError();
            GLES20.glBindFramebuffer(36160, this.mFrameBuffer[0]);
            checkError();
        } else if (oldTexture != null && texture == null) {
            GLES20.glBindFramebuffer(36160, 0);
            checkError();
            GLES20.glDeleteFramebuffers(1, this.mFrameBuffer, 0);
            checkError();
        }
        if (texture == null) {
            setSize(this.mScreenWidth, this.mScreenHeight);
            return;
        }
        setSize(texture.getWidth(), texture.getHeight());
        if (!texture.isLoaded()) {
            texture.prepare(this);
        }
        GLES20.glFramebufferTexture2D(36160, 36064, texture.getTarget(), texture.getId(), 0);
        checkError();
        checkFramebufferStatus();
    }

    private static void checkFramebufferStatus() {
        int status = GLES20.glCheckFramebufferStatus(36160);
        if (status != 36053) {
            String msg = "";
            switch (status) {
                case 36054:
                    msg = "GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT";
                    break;
                case 36055:
                    msg = "GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT";
                    break;
                case 36057:
                    msg = "GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS";
                    break;
                case 36061:
                    msg = "GL_FRAMEBUFFER_UNSUPPORTED";
                    break;
            }
            throw new RuntimeException(msg + CustomInfoLegacyHelper.RESOURCE_PATH_DIVIDER + Integer.toHexString(status));
        }
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLCanvas
    public void setTextureParameters(BasicTexture texture) {
        int target = texture.getTarget();
        GLES20.glBindTexture(target, texture.getId());
        checkError();
        GLES20.glTexParameteri(target, 10242, 33071);
        GLES20.glTexParameteri(target, 10243, 33071);
        GLES20.glTexParameterf(target, 10241, 9729.0f);
        GLES20.glTexParameterf(target, 10240, 9729.0f);
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLCanvas
    public void initializeTextureSize(BasicTexture texture, int format, int type) {
        int target = texture.getTarget();
        GLES20.glBindTexture(target, texture.getId());
        checkError();
        int width = texture.getTextureWidth();
        int height = texture.getTextureHeight();
        GLES20.glTexImage2D(target, 0, format, width, height, 0, format, type, null);
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLCanvas
    public void initializeTexture(BasicTexture texture, Bitmap bitmap) {
        int target = texture.getTarget();
        GLES20.glBindTexture(target, texture.getId());
        checkError();
        GLUtils.texImage2D(target, 0, bitmap, 0);
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLCanvas
    public void texSubImage2D(BasicTexture texture, int xOffset, int yOffset, Bitmap bitmap, int format, int type) {
        int target = texture.getTarget();
        GLES20.glBindTexture(target, texture.getId());
        checkError();
        GLUtils.texSubImage2D(target, 0, xOffset, yOffset, bitmap, format, type);
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLCanvas
    public int uploadBuffer(FloatBuffer buf) {
        return uploadBuffer(buf, 4);
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLCanvas
    public int uploadBuffer(ByteBuffer buf) {
        return uploadBuffer(buf, 1);
    }

    private int uploadBuffer(Buffer buffer, int elementSize) {
        mGLId.glGenBuffers(1, this.mTempIntArray, 0);
        checkError();
        int bufferId = this.mTempIntArray[0];
        GLES20.glBindBuffer(34962, bufferId);
        checkError();
        GLES20.glBufferData(34962, buffer.capacity() * elementSize, buffer, 35044);
        checkError();
        return bufferId;
    }

    public static void checkError() {
        int error = GLES20.glGetError();
        if (error != 0) {
            Throwable t = new Throwable();
            Log.e(TAG, "GL error: " + error, t);
        }
    }

    private static void printMatrix(String message, float[] m, int offset) {
        StringBuilder b = new StringBuilder(message);
        for (int i = 0; i < 16; i++) {
            b.append(' ');
            if (i % 4 == 0) {
                b.append('\n');
            }
            b.append(m[offset + i]);
        }
        Log.v(TAG, b.toString());
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLCanvas
    public void recoverFromLightCycle() {
        GLES20.glViewport(0, 0, this.mWidth, this.mHeight);
        GLES20.glDisable(2929);
        GLES20.glBlendFunc(1, 771);
        checkError();
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLCanvas
    public void getBounds(Rect bounds, int x, int y, int width, int height) {
        Matrix.translateM(this.mTempMatrix, 0, this.mMatrices, this.mCurrentMatrixIndex, x, y, 0.0f);
        Matrix.scaleM(this.mTempMatrix, 0, width, height, 1.0f);
        Matrix.multiplyMV(this.mTempMatrix, 16, this.mTempMatrix, 0, BOUNDS_COORDINATES, 0);
        Matrix.multiplyMV(this.mTempMatrix, 20, this.mTempMatrix, 0, BOUNDS_COORDINATES, 4);
        bounds.left = Math.round(this.mTempMatrix[16]);
        bounds.right = Math.round(this.mTempMatrix[20]);
        bounds.top = Math.round(this.mTempMatrix[17]);
        bounds.bottom = Math.round(this.mTempMatrix[21]);
        bounds.sort();
    }

    @Override // net.oneplus.gallery3d.glrenderer.GLCanvas
    public GLId getGLId() {
        return mGLId;
    }
}

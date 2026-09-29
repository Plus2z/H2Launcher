package net.oneplus.h2launcher.dynamicicon;

import android.graphics.Color;
import android.graphics.Typeface;
import android.support.v4.view.ViewCompat;
import java.io.IOException;
import net.oneplus.h2launcher.util.Logger;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class DynamicIconTextConfig extends DynamicIconItemBaseConfig {
    public static final int ALIGN_BOTTOM = 4;
    public static final int ALIGN_CENTER = 0;
    public static final int ALIGN_LEFT = 1;
    public static final int ALIGN_RIGHT = 2;
    public static final int ALIGN_TOP = 3;
    public static final int DEFAULT_SHADOW_COLOR = -16777216;
    public static final int DEFAULT_TEXT_COLOR = -1;
    public static final String KEY_ALIGN_BOTTOM = "bottom";
    public static final String KEY_ALIGN_CENTER = "center";
    public static final String KEY_ALIGN_LEFT = "left";
    public static final String KEY_ALIGN_RIGHT = "right";
    public static final String KEY_ALIGN_TOP = "top";
    public static final String KEY_ALIGN_X = "alignX";
    public static final String KEY_ALIGN_Y = "alignY";
    public static final String KEY_COLOR = "color";
    public static final String KEY_DP = "dp";
    public static final String KEY_ENABLE = "enable";
    public static final String KEY_FALSE = "false";
    public static final String KEY_FONT = "font";
    public static final String KEY_FONT_TYPE_FACE = "font_typeface";
    public static final String KEY_OFFSET_X = "offsetX";
    public static final String KEY_OFFSET_Y = "offsetY";
    public static final String KEY_PX = "px";
    public static final String KEY_SHADOW_LAYER_ALPHA = "shadowLayerAlpha";
    public static final String KEY_SHADOW_LAYER_COLOR = "shadowLayerColor";
    public static final String KEY_SHADOW_LAYER_RADIUS = "shadowLayerRadius";
    public static final String KEY_SHADOW_LAYER_X = "shadowLayerX";
    public static final String KEY_SHADOW_LAYER_Y = "shadowLayerY";
    public static final String KEY_SP = "sp";
    public static final String KEY_TEXT_SIZE = "textSize";
    public static final String KEY_TRUE = "true";
    public static final String KEY_TYPEFACE_BOLD = "BOLD";
    public static final String KEY_TYPEFACE_BOLD_ITALIC = "BOLD_ITALIC";
    public static final String KEY_TYPEFACE_ITALIC = "ITALIC";
    public static final String KEY_TYPEFACE_NORMAL = "NORMAL";
    public static final String TAG = DynamicIconTextConfig.class.getSimpleName();
    public static final String TYPE = "text";
    protected int mAlignX;
    protected int mAlignY;
    protected boolean mEnable;
    protected String mFont;
    protected String mFontTypeFace;
    protected float mOffsetX;
    protected float mOffsetY;
    protected float mShadowLayerAlpha;
    protected int mShadowLayerColor;
    protected float mShadowLayerRadius;
    protected float mShadowLayerX;
    protected float mShadowLayerY;
    protected int mTextColor;
    protected float mTextSize;
    protected Typeface mTypeFace;

    public DynamicIconTextConfig(String assetPackName) {
        super(assetPackName);
    }

    public boolean isEnable() {
        return this.mEnable;
    }

    public int getAlignX() {
        return this.mAlignX;
    }

    public int getAlignY() {
        return this.mAlignY;
    }

    public float getOffsetX() {
        return this.mOffsetX;
    }

    public float getOffsetY() {
        return this.mOffsetY;
    }

    public float getTextSize() {
        return this.mTextSize;
    }

    public int getTextColor() {
        return this.mTextColor;
    }

    public float getShadowLayerX() {
        return this.mShadowLayerX;
    }

    public float getShadowLayerY() {
        return this.mShadowLayerY;
    }

    public float getShadowLayerRadius() {
        return this.mShadowLayerRadius;
    }

    public int getShadowLayerColor() {
        return this.mShadowLayerColor;
    }

    public Typeface getTypeFace() {
        return this.mTypeFace;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.dynamicicon.DynamicIconItemBaseConfig
    public boolean parseConfig(XmlPullParser parser) {
        try {
            parser.getEventType();
            String key = parser.getAttributeValue(null, DynamicIconItemBaseConfig.KEY_KEY);
            setKey(key);
            parseEnable(parser.getAttributeValue(null, KEY_ENABLE));
            parseAlignX(parser.getAttributeValue(null, KEY_ALIGN_X));
            parseAlignY(parser.getAttributeValue(null, KEY_ALIGN_Y));
            parseOffsetX(parser.getAttributeValue(null, KEY_OFFSET_X));
            parseOffsetY(parser.getAttributeValue(null, KEY_OFFSET_Y));
            parseTextSize(parser.getAttributeValue(null, KEY_TEXT_SIZE));
            parseTypeFace(parser.getAttributeValue(null, KEY_FONT), parser.getAttributeValue(null, KEY_FONT_TYPE_FACE));
            parseTextColor(parser.getAttributeValue(null, KEY_COLOR));
            parseShadowLayerX(parser.getAttributeValue(null, KEY_SHADOW_LAYER_X));
            parseShadowLayerY(parser.getAttributeValue(null, KEY_SHADOW_LAYER_Y));
            parseShadowLayerRadius(parser.getAttributeValue(null, KEY_SHADOW_LAYER_RADIUS));
            parseShadowLayerColor(parser.getAttributeValue(null, KEY_SHADOW_LAYER_COLOR), parser.getAttributeValue(null, KEY_SHADOW_LAYER_ALPHA));
            parser.next();
            return true;
        } catch (IOException e) {
            Logger.w(TAG, "parse DynamicIcon drawable config io error, message: " + e.getMessage());
            return true;
        } catch (XmlPullParserException e2) {
            Logger.w(TAG, "parse DynamicIcon drawable config xml error, message: " + e2.getMessage());
            return true;
        }
    }

    private void parseEnable(String enable) {
        this.mEnable = true;
        if (KEY_FALSE.equals(enable)) {
            this.mEnable = false;
        }
    }

    private void parseAlignX(String alignX) {
        this.mAlignX = 1;
        if (alignX != null) {
            if (KEY_ALIGN_CENTER.equalsIgnoreCase(alignX)) {
                this.mAlignX = 0;
            } else if (KEY_ALIGN_RIGHT.equalsIgnoreCase(alignX)) {
                this.mAlignX = 2;
            }
        }
    }

    private void parseAlignY(String alignY) {
        this.mAlignY = 3;
        if (alignY != null) {
            if (KEY_ALIGN_CENTER.equalsIgnoreCase(alignY)) {
                this.mAlignY = 0;
            } else if (KEY_ALIGN_BOTTOM.equalsIgnoreCase(alignY)) {
                this.mAlignY = 4;
            }
        }
    }

    private void parseOffsetX(String offestX) {
        try {
            this.mOffsetX = parseDimen(offestX);
        } catch (Exception e) {
            Logger.e(TAG, "parse OffsetX error exception = " + e.getMessage());
        }
    }

    private void parseOffsetY(String offestY) {
        try {
            this.mOffsetY = parseDimen(offestY);
        } catch (Exception e) {
            Logger.e(TAG, "parse OffsetY error exception = " + e.getMessage());
        }
    }

    private void parseTextSize(String textSize) {
        try {
            this.mTextSize = parseDimen(textSize);
            if (this.mTextSize == 0.0f) {
                this.mTextSize = DynamicIconUtil.sTextSizeDefault;
            }
        } catch (Exception e) {
            Logger.e(TAG, "parse textSize error exception = " + e.getMessage());
        }
    }

    private float parseDimen(String value) throws Exception {
        if (value == null || value.length() <= 2) {
            return 0.0f;
        }
        String number = value.substring(0, value.length() - 2);
        String unit = value.substring(value.length() - 2, value.length());
        float result = Integer.parseInt(number);
        if (unit.equalsIgnoreCase(KEY_DP)) {
            return result * DynamicIconUtil.sDpPixel;
        }
        if (unit.equalsIgnoreCase(KEY_SP)) {
            return result * DynamicIconUtil.sSpPixel;
        }
        return result;
    }

    private void parseTypeFace(String font, String typeface) {
        try {
            this.mTypeFace = Typeface.DEFAULT;
            if (font != null) {
                int type = 0;
                if (typeface != null) {
                    if (KEY_TYPEFACE_BOLD.equalsIgnoreCase(typeface)) {
                        type = 1;
                    } else if (KEY_TYPEFACE_BOLD_ITALIC.equalsIgnoreCase(typeface)) {
                        type = 3;
                    } else if (KEY_TYPEFACE_ITALIC.equalsIgnoreCase(typeface)) {
                        type = 2;
                    }
                }
                this.mTypeFace = Typeface.create(font, type);
            }
        } catch (Exception e) {
            Logger.e(TAG, "parse parseTypeFace error, font = " + font + ", typeFace = " + typeface + ", exception = " + e.getMessage());
        }
    }

    private void parseTextColor(String color) {
        try {
            this.mTextColor = -1;
            if (color != null) {
                this.mTextColor = Color.parseColor(color);
            }
        } catch (Exception e) {
            Logger.e(TAG, "parse parseTextColor error, color = " + color + ", exception = " + e.getMessage());
        }
    }

    private void parseShadowLayerX(String shadowLayerX) {
        try {
            this.mShadowLayerX = 0.0f;
            this.mShadowLayerX = parseDimen(shadowLayerX);
        } catch (Exception e) {
            Logger.e(TAG, "parse parseShadowLayerX error, shadowLayerX = " + shadowLayerX + ", exception = " + e.getMessage());
        }
    }

    private void parseShadowLayerY(String shadowLayerY) {
        try {
            this.mShadowLayerY = 0.0f;
            this.mShadowLayerY = parseDimen(shadowLayerY);
        } catch (Exception e) {
            Logger.e(TAG, "parse parseShadowLayerY error, shadowLayerY = " + shadowLayerY + ", exception = " + e.getMessage());
        }
    }

    private void parseShadowLayerRadius(String shadowLayerRadius) {
        try {
            this.mShadowLayerRadius = 0.0f;
            this.mShadowLayerRadius = parseDimen(shadowLayerRadius);
        } catch (Exception e) {
            Logger.e(TAG, "parse parseShadowLayerRadius error, shadowLayerRadius = " + shadowLayerRadius + ", exception = " + e.getMessage());
        }
    }

    private void parseShadowLayerColor(String color, String alpha) {
        try {
            if (color != null) {
                this.mShadowLayerColor = Color.parseColor(color);
            } else {
                this.mShadowLayerColor = -16777216;
            }
            if (alpha != null) {
                float f = Float.parseFloat(alpha);
                if (f <= 1.0f && f >= 0.0f) {
                    int number = (int) (255.0f * f);
                    this.mShadowLayerColor &= ViewCompat.MEASURED_SIZE_MASK;
                    this.mShadowLayerColor += number << 24;
                }
            }
        } catch (Exception e) {
            Logger.e(TAG, "parse parseShadowLayerColor error, color =" + color + ", alpha = " + alpha + ", exception = " + e.getMessage());
            this.mShadowLayerColor = -16777216;
        }
    }
}

package net.oneplus.h2launcher.dynamicicon;

import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.HashSet;
import net.oneplus.h2launcher.util.Logger;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* loaded from: classes.dex */
public class DynamicIconConfig {
    public static final String KEY_DEFAULT_DRAWABLE_BACKGROUND = "background";
    public static final String KEY_DEFAULT_TEXT = "text";
    public static final int MAX_FILE_SIZE = 409600;
    private static final String TAG = DynamicIconConfig.class.getSimpleName();
    private String mAssetPackName;
    private HashMap<String, DynamicIconDrawableConfig> mDrawableConfigMap = new HashMap<>();
    private HashMap<String, DynamicIconTextConfig> mTextConfigMap = new HashMap<>();
    private byte[] mData = null;
    private boolean mValid = false;

    public DynamicIconConfig(String assetPackName) {
        this.mAssetPackName = assetPackName;
    }

    public DynamicIconDrawableConfig getBackgroundDrawableConfig() {
        return this.mDrawableConfigMap.get(KEY_DEFAULT_DRAWABLE_BACKGROUND);
    }

    public DynamicIconDrawableConfig getDrawableConfig(String key) {
        return this.mDrawableConfigMap.get(key);
    }

    public DynamicIconTextConfig getTextConfig(String key) {
        return this.mTextConfigMap.get(key);
    }

    public boolean parseConfig(InputStream inputStream) {
        byte[] data = new byte[MAX_FILE_SIZE];
        try {
            inputStream.read(data);
            inputStream.reset();
            return parseConfigFromStream(inputStream);
        } catch (IOException e) {
            Logger.w(TAG, "parseConfig fail");
            this.mValid = false;
            return this.mValid;
        }
    }

    public boolean parseConfig(byte[] data) {
        if (data == null) {
            return false;
        }
        ByteArrayInputStream inputStream = new ByteArrayInputStream(data);
        return parseConfigFromStream(inputStream);
    }

    public boolean parseConfig(XmlPullParser parser) {
        this.mValid = parseXmlConfig(parser);
        return this.mValid;
    }

    private boolean parseConfigFromStream(InputStream inputStream) {
        try {
            XmlPullParserFactory factory = XmlPullParserFactory.newInstance();
            XmlPullParser parser = factory.newPullParser();
            parser.setInput(inputStream, HttpRequest.CHARSET_UTF8);
            this.mValid = parseXmlConfig(parser);
            return this.mValid;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean isValid() {
        return this.mValid;
    }

    private boolean parseXmlConfig(XmlPullParser parser) {
        DynamicIconItemBaseConfig config;
        try {
            this.mValid = true;
        } catch (IOException e) {
            Logger.w(TAG, "parse DynamicIcon config IOException, message: " + e.getMessage());
        } catch (XmlPullParserException e2) {
            Logger.w(TAG, "parse DynamicIcon config xml XmlPullParserException, message: " + e2.getMessage());
        }
        if (parser == null) {
            return false;
        }
        int eventType = parser.getEventType();
        do {
            boolean isNext = false;
            if (eventType == 2) {
                if (DynamicIconItemBaseConfig.KEY_ITEM.equalsIgnoreCase(parser.getName())) {
                    String type = parser.getAttributeValue(null, "type");
                    String key = parser.getAttributeValue(null, DynamicIconItemBaseConfig.KEY_KEY);
                    if (DynamicIconDrawableConfig.TYPE.equalsIgnoreCase(type)) {
                        DynamicIconDrawableConfig drawableConfig = new DynamicIconDrawableConfig(this.mAssetPackName);
                        this.mDrawableConfigMap.put(key, drawableConfig);
                        config = drawableConfig;
                    } else if ("text".equalsIgnoreCase(type)) {
                        DynamicIconTextConfig textConfig = new DynamicIconTextConfig(this.mAssetPackName);
                        this.mTextConfigMap.put(key, textConfig);
                        config = textConfig;
                    } else {
                        eventType = parser.next();
                    }
                    if (config == null || !config.parseConfig(parser)) {
                        return false;
                    }
                    isNext = true;
                }
            }
            if (!isNext) {
                eventType = parser.next();
            }
        } while (eventType != 1);
        return true;
    }

    public HashSet<String> getAllDrawableResource() {
        HashSet<String> resources = new HashSet<>();
        for (DynamicIconDrawableConfig config : this.mDrawableConfigMap.values()) {
            resources.addAll(config.getResources());
        }
        return resources;
    }

    public void setValid(boolean valid) {
        this.mValid = valid;
    }

    public String getAssetPackName() {
        return this.mAssetPackName;
    }
}

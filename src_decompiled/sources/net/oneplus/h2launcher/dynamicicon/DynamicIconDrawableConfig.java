package net.oneplus.h2launcher.dynamicicon;

import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;
import net.oneplus.h2launcher.util.Logger;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class DynamicIconDrawableConfig extends DynamicIconItemBaseConfig {
    public static final String RES = "res";
    public static final String TAG = DynamicIconDrawableConfig.class.getSimpleName();
    public static final String TYPE = "drawable";
    public static final String VALUE = "value";
    private HashMap<String, String> mDrawableMap;

    public DynamicIconDrawableConfig(String assetPackName) {
        super(assetPackName);
        this.mDrawableMap = new HashMap<>();
    }

    public void addDrawableResource(String value, String res) {
        this.mDrawableMap.put(value, res);
    }

    public String getDrawableResource(String value) {
        return this.mDrawableMap.containsKey(value) ? this.mDrawableMap.get(value) : getDefaultDrawableResource();
    }

    public String getDefaultDrawableResource() {
        return this.mDrawableMap.get("");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.dynamicicon.DynamicIconItemBaseConfig
    public boolean parseConfig(XmlPullParser parser) {
        try {
            parser.getEventType();
            String key = parser.getAttributeValue(null, DynamicIconItemBaseConfig.KEY_KEY);
            setKey(key);
            int eventType = parser.next();
            while (true) {
                if (eventType == 2) {
                    if (TYPE.equalsIgnoreCase(parser.getName())) {
                        String value = parser.getAttributeValue(null, "value");
                        String res = parser.getAttributeValue(null, RES);
                        if (value != null && res != null) {
                            this.mDrawableMap.put(value, res);
                        }
                    }
                }
                eventType = parser.next();
                if (eventType == 3 && parser.getName().equalsIgnoreCase(DynamicIconItemBaseConfig.KEY_ITEM)) {
                    return true;
                }
            }
        } catch (IOException e) {
            Logger.w(TAG, "parse DynamicIcon drawable config io error, message: " + e.getMessage());
            return true;
        } catch (XmlPullParserException e2) {
            Logger.w(TAG, "parse DynamicIcon drawable config xml error, message: " + e2.getMessage());
            return true;
        }
    }

    public HashSet<String> getResources() {
        HashSet<String> resources = new HashSet<>();
        for (String resource : this.mDrawableMap.values()) {
            resources.add(resource);
        }
        return resources;
    }
}

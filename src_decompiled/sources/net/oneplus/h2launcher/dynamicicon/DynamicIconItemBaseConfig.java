package net.oneplus.h2launcher.dynamicicon;

import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes.dex */
public abstract class DynamicIconItemBaseConfig {
    public static final String DEFAULT_VALUE = "";
    public static final String KEY_ITEM = "item";
    public static final String KEY_KEY = "key";
    public static final String KEY_TYPE = "type";
    protected final String mAssetPackName;
    private String mKey;

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract boolean parseConfig(XmlPullParser xmlPullParser);

    public DynamicIconItemBaseConfig(String assetPackName) {
        this.mAssetPackName = assetPackName;
    }

    public String getKey() {
        return this.mKey;
    }

    public void setKey(String key) {
        this.mKey = key;
    }

    public String getAssetPackName() {
        return this.mAssetPackName;
    }
}

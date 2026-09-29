package net.oneplus.h2launcher;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.text.TextUtils;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import net.oneplus.h2launcher.dynamicicon.DynamicIconConfig;
import net.oneplus.h2launcher.dynamicicon.DynamicIconDrawableConfig;
import net.oneplus.h2launcher.dynamicicon.DynamicIconItemBaseConfig;
import net.oneplus.h2launcher.oos.StyleConfigurationLoader;
import net.oneplus.h2launcher.oos.StyleManager;
import net.oneplus.h2launcher.util.AnalyticHelper;
import net.oneplus.h2launcher.util.Logger;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* loaded from: classes.dex */
public class IconPackHelper {
    public static final String CURRENT_ICON_PACK_PACKAGE_NAME = "current_icon_pack";
    public static final String CURRENT_ICON_SIZE = "current_icon_size";
    public static final String CUSTOM_SYSTEM_DEFAULT_ICONS = StyleManager.getInstance().getSystemDefaultIcons();
    private static final CharSequence[] DEFAULT_ORDER_ICON_PACK_LIST = {"com.oneplus.iconpack.oneplus", "com.oneplus.iconpack.o2default", "com.oneplus.iconpack.circle", "com.oneplus.iconpack.square", StyleConfigurationLoader.H2_SYSTEM_DEFAULT_ICONS, "com.oneplus.iconpack.h2light", "com.oneplus.iconpack.h2folio", "com.oneplus.iconpack.dives", "com.oneplus.iconpack.rifon"};
    private static final String ICONPACK_METADATA_KEY_LAUNCHER = "launcher";
    private static final String ICON_BACK_TAG = "iconback";
    private static final String ICON_MASK_TAG = "iconmask";
    public static final String ICON_PACK_PACKAGE_NAME_SAVED = "icon_pack_saved";
    private static final String ICON_SCALE_TAG = "scale";
    private static final String ICON_UPON_TAG = "iconupon";
    private static final String IGNORE_ICONPACK_LAUNCHER_VERSION = "OPLauncher2";
    public static final String SHARED_PREFERENCES = "icon_pack_shared_preferences";
    public static final String SYSTEM_DEFAULT_ICONS = "SYSTEM_DEFAULT_ICONS";
    static final String TAG = "IconPackHelper";
    private final Context mContext;
    private String mLoadedIconPackName;
    private Resources mLoadedIconPackResource;
    private ArrayList<String> mIconMaskLayers = new ArrayList<>();
    private ArrayList<String> mIconBackLayers = new ArrayList<>();
    private ArrayList<String> mIconUponLayers = new ArrayList<>();
    private boolean mIconMaskLayerDrawableReady = false;
    private boolean mIconBackLayerDrawableReady = false;
    private boolean mIconUponLayerDrawableReady = false;
    private LayerDrawable mIconMaskLayerDrawable = null;
    private LayerDrawable mIconBackLayerDrawable = null;
    private LayerDrawable mIconUponLayerDrawable = null;
    private float mIconScale = 1.0f;
    private Map<String, String> mIconPackResourceMap = new HashMap();
    private Map<String, String> mDynamicIconPackResourceMap = new HashMap();

    public IconPackHelper(Context context) {
        this.mContext = context;
    }

    public static CharSequence[][] getIconPackList(Context context, boolean includeDefault) {
        List<ResolveInfo> infos = new ArrayList<>();
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent();
        IntentCategory[] categories = {new IntentCategory(R.array.action_type1, "android.intent.category.DEFAULT"), new IntentCategory(R.array.action_type2, "com.anddoes.launcher.THEME"), new IntentCategory(R.array.action_type2, "com.teslacoilsw.launcher.THEME")};
        int length = categories.length;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= length) {
                break;
            }
            IntentCategory category = categories[i2];
            intent.addCategory(category.categoryString);
            String[] actionList = context.getResources().getStringArray(category.actionId);
            for (String action : actionList) {
                intent.setAction(action);
                infos.addAll(packageManager.queryIntentActivities(intent, 192));
            }
            i = i2 + 1;
        }
        HashMap<CharSequence, CharSequence> iconPacksMap = new HashMap<>();
        for (ResolveInfo info : infos) {
            boolean ignore = false;
            if (info.activityInfo.metaData != null && IGNORE_ICONPACK_LAUNCHER_VERSION.equals(info.activityInfo.metaData.get(ICONPACK_METADATA_KEY_LAUNCHER))) {
                ignore = true;
            }
            if (!ignore) {
                iconPacksMap.put(info.activityInfo.packageName, info.loadLabel(packageManager));
            }
        }
        ArrayList<CharSequence> entriesList = new ArrayList<>();
        ArrayList<CharSequence> entryValuesList = new ArrayList<>();
        if (includeDefault) {
            CharSequence label = iconPacksMap.get(StyleManager.getInstance().getSystemDefaultIcons());
            if (label != null) {
                entriesList.add(label);
            } else {
                entriesList.add(context.getResources().getString(R.string.icon_pack_system_default));
            }
            entryValuesList.add(StyleManager.getInstance().getSystemDefaultIcons());
        }
        for (CharSequence key : DEFAULT_ORDER_ICON_PACK_LIST) {
            if (iconPacksMap.containsKey(key)) {
                entryValuesList.add(key);
                entriesList.add(iconPacksMap.get(key));
                iconPacksMap.remove(key);
            }
        }
        for (CharSequence key2 : iconPacksMap.keySet()) {
            entryValuesList.add(key2);
            entriesList.add(iconPacksMap.get(key2));
        }
        return new CharSequence[][]{(CharSequence[]) entriesList.toArray(new CharSequence[entriesList.size()]), (CharSequence[]) entryValuesList.toArray(new CharSequence[entryValuesList.size()])};
    }

    private void loadResourcesFromXmlParser(XmlPullParser parser, Map<String, String> iconPackResources) throws XmlPullParserException, IOException {
        int eventType = parser.getEventType();
        do {
            if (eventType == 2 && parser.getName().equalsIgnoreCase(DynamicIconItemBaseConfig.KEY_ITEM)) {
                String component = parser.getAttributeValue(null, "component");
                String drawable = parser.getAttributeValue(null, DynamicIconDrawableConfig.TYPE);
                if (!TextUtils.isEmpty(component) && !TextUtils.isEmpty(drawable) && component.startsWith("ComponentInfo{") && component.endsWith("}") && component.length() >= 16 && drawable.length() != 0) {
                    iconPackResources.put(component, drawable);
                }
            }
            eventType = parser.next();
        } while (eventType != 1);
    }

    private void loadDynamicIconResourcesFromXmlParser(XmlPullParser parser, Map<String, String> iconPackResources) throws XmlPullParserException, IOException {
        int eventType = parser.getEventType();
        do {
            if (eventType == 2 && parser.getName().equalsIgnoreCase(DynamicIconItemBaseConfig.KEY_ITEM)) {
                String component = parser.getAttributeValue(null, "component");
                String xml = parser.getAttributeValue(null, "xml");
                if (!TextUtils.isEmpty(component) && !TextUtils.isEmpty(xml) && component.startsWith("ComponentInfo{") && component.endsWith("}") && component.length() >= 16 && xml.length() != 0) {
                    iconPackResources.put(component, xml);
                }
            }
            eventType = parser.next();
        } while (eventType != 1);
    }

    private void extractIconMaskLayers(XmlPullParser parser) throws XmlPullParserException, IOException {
        int eventType = parser.getEventType();
        do {
            if (eventType == 2 && parser.getName().equalsIgnoreCase(ICON_MASK_TAG)) {
                int attributeCount = parser.getAttributeCount();
                for (int i = 0; i < attributeCount; i++) {
                    this.mIconMaskLayers.add(parser.getAttributeValue(i));
                }
            }
            eventType = parser.next();
        } while (eventType != 1);
    }

    private void extractIconBackLayers(XmlPullParser parser) throws XmlPullParserException, IOException {
        int eventType = parser.getEventType();
        do {
            if (eventType == 2 && parser.getName().equalsIgnoreCase(ICON_BACK_TAG)) {
                int attributeCount = parser.getAttributeCount();
                for (int i = 0; i < attributeCount; i++) {
                    this.mIconBackLayers.add(parser.getAttributeValue(i));
                }
            }
            eventType = parser.next();
        } while (eventType != 1);
    }

    private void extractIconUponLayers(XmlPullParser parser) throws XmlPullParserException, IOException {
        int eventType = parser.getEventType();
        do {
            if (eventType == 2 && parser.getName().equalsIgnoreCase(ICON_UPON_TAG)) {
                int attributeCount = parser.getAttributeCount();
                for (int i = 0; i < attributeCount; i++) {
                    this.mIconUponLayers.add(parser.getAttributeValue(i));
                }
            }
            eventType = parser.next();
        } while (eventType != 1);
    }

    private void extractIconScale(XmlPullParser parser) throws XmlPullParserException, IOException {
        int eventType = parser.getEventType();
        do {
            if (eventType == 2 && parser.getName().equalsIgnoreCase(ICON_SCALE_TAG)) {
                int attributeCount = parser.getAttributeCount();
                if (attributeCount > 0) {
                    this.mIconScale = Float.valueOf(parser.getAttributeValue(0)).floatValue();
                }
            }
            eventType = parser.next();
        } while (eventType != 1);
    }

    public void loadIconPack(String packageName) throws PackageManager.NameNotFoundException {
        this.mIconBackLayers.clear();
        this.mIconMaskLayers.clear();
        this.mIconUponLayers.clear();
        this.mIconMaskLayerDrawableReady = false;
        this.mIconBackLayerDrawableReady = false;
        this.mIconUponLayerDrawableReady = false;
        this.mIconMaskLayerDrawable = null;
        this.mIconBackLayerDrawable = null;
        this.mIconUponLayerDrawable = null;
        Resources res = this.mContext.createPackageContext(packageName, 2).getResources();
        this.mIconPackResourceMap = getIconResMapFromXml(res, packageName);
        this.mDynamicIconPackResourceMap = getDynamicIconResMapFromXml(res, packageName);
        this.mLoadedIconPackResource = res;
        this.mLoadedIconPackName = packageName;
        Logger.d(TAG, "IconPack " + packageName + " was loaded !");
    }

    public boolean isIconPackLoaded() {
        return (this.mLoadedIconPackResource == null || this.mLoadedIconPackName == null || this.mIconPackResourceMap == null) ? false : true;
    }

    public String getIconPackPkg() {
        return this.mLoadedIconPackName;
    }

    public float getIconScale() {
        return this.mIconScale;
    }

    public LayerDrawable getIconMaskLayerDrawable(int iconDpi) {
        if (!this.mIconMaskLayerDrawableReady) {
            ArrayList<Drawable> iconMaskDrawablesList = new ArrayList<>();
            Iterator<String> it = this.mIconMaskLayers.iterator();
            while (it.hasNext()) {
                String iconMaskLayer = it.next();
                Drawable drawable = getDrawable(iconMaskLayer, iconDpi);
                if (drawable != null) {
                    iconMaskDrawablesList.add(drawable);
                }
            }
            Drawable[] iconMaskDrawables = new Drawable[iconMaskDrawablesList.size()];
            for (int i = 0; i < iconMaskDrawables.length; i++) {
                iconMaskDrawables[i] = iconMaskDrawablesList.get(i);
            }
            this.mIconMaskLayerDrawable = null;
            if (iconMaskDrawables.length > 0) {
                this.mIconMaskLayerDrawable = new LayerDrawable(iconMaskDrawables);
            }
            this.mIconMaskLayerDrawableReady = true;
        }
        return this.mIconMaskLayerDrawable;
    }

    public LayerDrawable getIconBackLayerDrawable(int iconDpi) {
        if (!this.mIconBackLayerDrawableReady) {
            ArrayList<Drawable> iconBackDrawablesList = new ArrayList<>();
            Iterator<String> it = this.mIconBackLayers.iterator();
            while (it.hasNext()) {
                String iconBackLayer = it.next();
                Drawable drawable = getDrawable(iconBackLayer, iconDpi);
                if (drawable != null) {
                    iconBackDrawablesList.add(drawable);
                }
            }
            Drawable[] iconBackDrawables = new Drawable[iconBackDrawablesList.size()];
            for (int i = 0; i < iconBackDrawables.length; i++) {
                iconBackDrawables[i] = iconBackDrawablesList.get(i);
            }
            this.mIconBackLayerDrawable = null;
            if (iconBackDrawables.length > 0) {
                this.mIconBackLayerDrawable = new LayerDrawable(iconBackDrawables);
            }
            this.mIconBackLayerDrawableReady = true;
        }
        return this.mIconBackLayerDrawable;
    }

    public LayerDrawable getIconUponLayerDrawable(int iconDpi) {
        if (!this.mIconUponLayerDrawableReady) {
            ArrayList<Drawable> iconUponDrawablesList = new ArrayList<>();
            Iterator<String> it = this.mIconUponLayers.iterator();
            while (it.hasNext()) {
                String iconUponLayer = it.next();
                Drawable drawable = getDrawable(iconUponLayer, iconDpi);
                if (drawable != null) {
                    iconUponDrawablesList.add(drawable);
                }
            }
            Drawable[] iconUponDrawables = new Drawable[iconUponDrawablesList.size()];
            for (int i = 0; i < iconUponDrawables.length; i++) {
                iconUponDrawables[i] = iconUponDrawablesList.get(i);
            }
            this.mIconUponLayerDrawable = null;
            if (iconUponDrawables.length > 0) {
                this.mIconUponLayerDrawable = new LayerDrawable(iconUponDrawables);
            }
            this.mIconUponLayerDrawableReady = true;
        }
        return this.mIconUponLayerDrawable;
    }

    private Map<String, String> getIconResMapFromXml(Resources res, String packageName) {
        Map<String, String> iconPackResources = new HashMap<>();
        int resId = res.getIdentifier("appfilter", "xml", packageName);
        XmlPullParser parser = resetParser(res, resId);
        try {
            if (parser != null) {
                try {
                    loadResourcesFromXmlParser(parser, iconPackResources);
                    extractIconBackLayers(resetParser(res, resId));
                    extractIconMaskLayers(resetParser(res, resId));
                    extractIconUponLayers(resetParser(res, resId));
                    parser = resetParser(res, resId);
                    extractIconScale(parser);
                } catch (IOException e) {
                    e.printStackTrace();
                    if (parser instanceof XmlResourceParser) {
                        ((XmlResourceParser) parser).close();
                    }
                } catch (XmlPullParserException e2) {
                    e2.printStackTrace();
                    if (parser instanceof XmlResourceParser) {
                        ((XmlResourceParser) parser).close();
                    }
                }
                return iconPackResources;
            }
            int arrayId = res.getIdentifier("theme_iconpack", "array", packageName);
            if (arrayId == 0) {
                arrayId = res.getIdentifier(AnalyticHelper.Label.MDM_OPTIONS_GESTURE_ICON_PACK, "array", packageName);
            }
            if (arrayId != 0) {
                String[] iconPack = res.getStringArray(arrayId);
                for (String entry : iconPack) {
                    if (!TextUtils.isEmpty(entry)) {
                        String entry2 = entry.replaceAll(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR, AssetCache.EMPTY_CLASS_NAME);
                        ComponentName compName = new ComponentName(entry2.toLowerCase(), "");
                        iconPackResources.put(compName.flattenToString(), entry);
                        int activityIndex = entry2.lastIndexOf(AssetCache.EMPTY_CLASS_NAME);
                        if (activityIndex > 0 && activityIndex != entry2.length() - 1) {
                            String iconPackage = entry2.substring(0, activityIndex);
                            if (!TextUtils.isEmpty(iconPackage)) {
                                String iconActivity = entry2.substring(activityIndex + 1);
                                if (!TextUtils.isEmpty(iconActivity)) {
                                    String iconPackage2 = iconPackage.toLowerCase();
                                    ComponentName compName2 = new ComponentName(iconPackage2, iconPackage2 + AssetCache.EMPTY_CLASS_NAME + iconActivity.toLowerCase());
                                    iconPackResources.put(compName2.flattenToString(), entry);
                                }
                            }
                        }
                    }
                }
            }
            return iconPackResources;
        } finally {
            if (parser instanceof XmlResourceParser) {
                ((XmlResourceParser) parser).close();
            }
        }
    }

    private Map<String, String> getDynamicIconResMapFromXml(Resources resources, String str) {
        HashMap hashMap = new HashMap();
        XmlPullParser resetParser = resetParser(resources, resources.getIdentifier("appfilter", "xml", str));
        try {
            if (resetParser != null) {
                try {
                    loadDynamicIconResourcesFromXmlParser(resetParser, hashMap);
                    boolean z = resetParser instanceof XmlResourceParser;
                    resetParser = resetParser;
                    if (z) {
                        XmlResourceParser xmlResourceParser = (XmlResourceParser) resetParser;
                        xmlResourceParser.close();
                        resetParser = xmlResourceParser;
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                    boolean z2 = resetParser instanceof XmlResourceParser;
                    resetParser = resetParser;
                    if (z2) {
                        XmlResourceParser xmlResourceParser2 = (XmlResourceParser) resetParser;
                        xmlResourceParser2.close();
                        resetParser = xmlResourceParser2;
                    }
                } catch (XmlPullParserException e2) {
                    e2.printStackTrace();
                    boolean z3 = resetParser instanceof XmlResourceParser;
                    resetParser = resetParser;
                    if (z3) {
                        XmlResourceParser xmlResourceParser3 = (XmlResourceParser) resetParser;
                        xmlResourceParser3.close();
                        resetParser = xmlResourceParser3;
                    }
                }
            }
            return hashMap;
        } catch (Throwable th) {
            if (resetParser instanceof XmlResourceParser) {
                ((XmlResourceParser) resetParser).close();
            }
            throw th;
        }
    }

    private XmlPullParser resetParser(Resources res, int resId) {
        XmlPullParser parser = null;
        if (resId != 0) {
            XmlPullParser parser2 = res.getXml(resId);
            return parser2;
        }
        try {
            InputStream inputStream = res.getAssets().open("icons/res/xml/appfilter.xml");
            XmlPullParserFactory factory = XmlPullParserFactory.newInstance();
            parser = factory.newPullParser();
            parser.setInput(inputStream, HttpRequest.CHARSET_UTF8);
            return parser;
        } catch (Exception e) {
            e.printStackTrace();
            return parser;
        }
    }

    public int getResourceIdForDrawable(String resource) {
        return this.mLoadedIconPackResource.getIdentifier(resource, DynamicIconDrawableConfig.TYPE, this.mLoadedIconPackName);
    }

    public int getResourceIdForComponentNameIcon(ComponentName compName) {
        if (!isIconPackLoaded()) {
            return 0;
        }
        String drawable = this.mIconPackResourceMap.get(compName.toString());
        if (drawable == null) {
            drawable = this.mIconPackResourceMap.get(new ComponentName(compName.getPackageName().toLowerCase(), "").flattenToString());
            if (drawable == null) {
                return 0;
            }
        }
        return getResourceIdForDrawable(drawable);
    }

    public Drawable getDrawableForComponentNameWithDensity(ComponentName componentName, int density) {
        int id = getResourceIdForComponentNameIcon(componentName);
        if (id == 0) {
            return null;
        }
        return this.mLoadedIconPackResource.getDrawableForDensity(id, density);
    }

    public Drawable getDrawable(String s, int density) {
        int id;
        if (!isIconPackLoaded() || (id = getResourceIdForDrawable(s)) == 0) {
            return null;
        }
        return this.mLoadedIconPackResource.getDrawableForDensity(id, density);
    }

    private int getResourceIdForDynamicIcon(String resource) {
        return this.mLoadedIconPackResource.getIdentifier(resource, "raw", this.mLoadedIconPackName);
    }

    public int getResourceIdForComponentNameDynamicIcon(ComponentName compName) {
        if (!isIconPackLoaded()) {
            return 0;
        }
        String dynamicIcon = this.mDynamicIconPackResourceMap.get(compName.toString());
        if (dynamicIcon == null) {
            dynamicIcon = this.mDynamicIconPackResourceMap.get(new ComponentName(compName.getPackageName().toLowerCase(), "").flattenToString());
            if (dynamicIcon == null) {
                return 0;
            }
        }
        return getResourceIdForDynamicIcon(dynamicIcon);
    }

    public String getResourceForComponentNameDynamicIcon(ComponentName compName) {
        if (!isIconPackLoaded()) {
            return null;
        }
        String dynamicIcon = this.mDynamicIconPackResourceMap.get(compName.toString());
        if (dynamicIcon == null) {
            String dynamicIcon2 = this.mDynamicIconPackResourceMap.get(new ComponentName(compName.getPackageName().toLowerCase(), "").flattenToString());
            if (dynamicIcon2 == null) {
                return null;
            }
            return dynamicIcon2;
        }
        return dynamicIcon;
    }

    public XmlPullParser getDynamicIconForComponentName(ComponentName componentName) {
        int id = getResourceIdForComponentNameDynamicIcon(componentName);
        if (id == 0) {
            return null;
        }
        return getDynamicIcon(id);
    }

    public XmlPullParser getDynamicIcon(String s) {
        int id;
        if (!isIconPackLoaded() || (id = getResourceIdForDynamicIcon(s)) == 0) {
            return null;
        }
        return getDynamicIcon(id);
    }

    private XmlPullParser getDynamicIcon(int id) {
        byte[] data = new byte[DynamicIconConfig.MAX_FILE_SIZE];
        if (id == 0) {
            return null;
        }
        try {
            InputStream stream = this.mLoadedIconPackResource.openRawResource(id);
            stream.read(data);
            stream.close();
            ByteArrayInputStream inputStream = new ByteArrayInputStream(data);
            XmlPullParserFactory factory = XmlPullParserFactory.newInstance();
            XmlPullParser parser = factory.newPullParser();
            parser.setInput(inputStream, HttpRequest.CHARSET_UTF8);
            return parser;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public byte[] getDynamicIconByte(int id) {
        byte[] result = new byte[DynamicIconConfig.MAX_FILE_SIZE];
        try {
            InputStream inputStream = this.mLoadedIconPackResource.openRawResource(id);
            inputStream.read(result);
            inputStream.close();
            return result;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class IntentCategory {
        int actionId;
        String categoryString;

        public IntentCategory(int id, String str) {
            this.actionId = id;
            this.categoryString = str;
        }
    }
}

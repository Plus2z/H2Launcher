package net.oneplus.h2launcher.dynamicicon.weather;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.HashMap;
import java.util.Map;
import net.oneplus.h2launcher.AppInfo;
import net.oneplus.h2launcher.AssetCache;
import net.oneplus.h2launcher.BubbleTextView;
import net.oneplus.h2launcher.FastBitmapDrawable;
import net.oneplus.h2launcher.Launcher;
import net.oneplus.h2launcher.LauncherAppState;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.ShortcutInfo;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.WeatherProvider;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.dynamicicon.DynamicIconConfig;
import net.oneplus.h2launcher.dynamicicon.DynamicIconDrawableConfig;
import net.oneplus.h2launcher.dynamicicon.DynamicIconManager;
import net.oneplus.h2launcher.dynamicicon.DynamicIconUtil;
import net.oneplus.h2launcher.dynamicicon.IDynamicShortcut;
import net.oneplus.h2launcher.dynamicicon.UpdateRunnable;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.TaskWorker;

/* loaded from: classes.dex */
public class WeatherShortcutInfo extends ShortcutInfo implements IDynamicShortcut {
    private static final boolean DEBUG = false;
    private static final String KEY_NEW_TEMP = "new_temp";
    private static final String KEY_NEW_TEMP_STRING = "new_temp_string";
    private static final String KEY_NEW_WEATHER_ID = "new_weather_id";
    private static final String KEY_NEW_WEATHER_IMAGE_ID = "new_weather_image_id";
    private static final String KEY_OLD_TEMP = "old_temp";
    private static final String KEY_OLD_TEMP_STRING = "old_temp_string";
    private static final String KEY_OLD_WEATHER_ID = "old_weather_id";
    private static final String KEY_OLD_WEATHER_IMAGE_ID = "old_weather_image_id";
    private static final int MAX_ACCEPT_TEMP = 99;
    private static final int MIN_ACCEPT_TEMP = -99;
    private static final String NONE_TEMP_STRING = "--˚";
    private static final String TAG = WeatherShortcutInfo.class.getSimpleName();
    private DynamicIconConfig mAssetPackConfig;
    private HashMap<String, WeatherFastBitmapDrawable> mBaseDrawable;
    private final Object mCheckAnimatingObject;
    private Context mContext;
    private HashMap<String, WeatherFastBitmapDrawable> mCurrentDrawable;
    private HashMap<String, Object> mDataMap;
    private DynamicIconManager.NeedAnimateIconCallback mNeedAnimateIconCallback;
    private HashMap<String, WeatherFastBitmapDrawable> mNewDrawable;
    private DynamicIconConfig mOriginalConfig;
    private WeatherProvider.IWeatherCallback mRegisterWeatherCallback;
    private boolean mRunningAnimation;
    private UpdateRunnable mUpdateRunnable;

    public WeatherShortcutInfo(Context context, DynamicIconManager.NeedAnimateIconCallback needAnimateIconCallback) {
        this.mDataMap = new HashMap<>();
        this.mOriginalConfig = null;
        this.mAssetPackConfig = null;
        this.mCheckAnimatingObject = new Object();
        init(context, needAnimateIconCallback);
    }

    public WeatherShortcutInfo(Context context, AppInfo info, DynamicIconManager.NeedAnimateIconCallback needAnimateIconCallback) {
        super(info);
        this.mDataMap = new HashMap<>();
        this.mOriginalConfig = null;
        this.mAssetPackConfig = null;
        this.mCheckAnimatingObject = new Object();
        init(context, needAnimateIconCallback);
    }

    public WeatherShortcutInfo(Context context, Intent intent, CharSequence title, CharSequence contentDescription, Bitmap icon, UserHandleCompat user, DynamicIconManager.NeedAnimateIconCallback needAnimateIconCallback) {
        super(intent, title, contentDescription, icon, user);
        this.mDataMap = new HashMap<>();
        this.mOriginalConfig = null;
        this.mAssetPackConfig = null;
        this.mCheckAnimatingObject = new Object();
        init(context, needAnimateIconCallback);
    }

    public void init(Context context, DynamicIconManager.NeedAnimateIconCallback needAnimateIconCallback) {
        this.mContext = context;
        this.mIsDynamicIcon = true;
        this.mCurrentDrawable = new HashMap<>();
        this.mNewDrawable = new HashMap<>();
        this.mBaseDrawable = new HashMap<>();
        refreshConfig();
        this.mNeedAnimateIconCallback = needAnimateIconCallback;
        WeatherProvider.WeatherData data = ((Launcher) this.mContext).getWeatherProvider().getOfflineWeatherInformation();
        if (data != null) {
            putOldData(data);
        } else {
            initEmptyData();
        }
        TaskWorker.get().postUI(new Runnable() { // from class: net.oneplus.h2launcher.dynamicicon.weather.WeatherShortcutInfo.1
            @Override // java.lang.Runnable
            public void run() {
                WeatherShortcutInfo.this.registerDataProvider();
            }
        });
    }

    @Override // net.oneplus.h2launcher.dynamicicon.IDynamicShortcut
    public boolean needRegisterDataProvider() {
        boolean result;
        synchronized (this) {
            result = this.mRegisterWeatherCallback == null;
        }
        return result;
    }

    @Override // net.oneplus.h2launcher.dynamicicon.IDynamicShortcut
    public void registerDataProvider() {
        synchronized (this) {
            if (this.mRegisterWeatherCallback == null) {
                this.mRegisterWeatherCallback = new WeatherProvider.IWeatherCallback() { // from class: net.oneplus.h2launcher.dynamicicon.weather.WeatherShortcutInfo.2
                    @Override // net.oneplus.h2launcher.WeatherProvider.IWeatherCallback
                    public void onWeatherUpdated(@NonNull WeatherProvider.WeatherData data) {
                        WeatherShortcutInfo.this.update(data);
                    }
                };
                ((Launcher) this.mContext).getWeatherProvider().subscribeCallback(this.mRegisterWeatherCallback);
            }
        }
    }

    @Override // net.oneplus.h2launcher.dynamicicon.IDynamicShortcut
    public void unregisterDataProvider() {
        synchronized (this) {
            if (this.mRegisterWeatherCallback != null) {
                ((Launcher) this.mContext).getWeatherProvider().unsubscribeCallback(this.mRegisterWeatherCallback);
                this.mRegisterWeatherCallback = null;
            }
        }
    }

    @Override // net.oneplus.h2launcher.dynamicicon.IDynamicShortcut
    public boolean requestData() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void update(final WeatherProvider.WeatherData data) {
        UpdateRunnable r = new UpdateRunnable() { // from class: net.oneplus.h2launcher.dynamicicon.weather.WeatherShortcutInfo.3
            @Override // net.oneplus.h2launcher.dynamicicon.UpdateRunnable, java.lang.Runnable
            public void run() {
                if (WeatherShortcutInfo.this.isRunningAnimation()) {
                    if (WeatherShortcutInfo.this.mUpdateRunnable == null) {
                        WeatherShortcutInfo.this.mUpdateRunnable = this;
                        return;
                    } else {
                        if (WeatherShortcutInfo.this.mUpdateRunnable.createTime < this.createTime) {
                            WeatherShortcutInfo.this.mUpdateRunnable = this;
                            return;
                        }
                        return;
                    }
                }
                if (WeatherShortcutInfo.this.mUpdateRunnable != null) {
                    if (WeatherShortcutInfo.this.mUpdateRunnable.createTime <= this.createTime) {
                        WeatherShortcutInfo.this.mUpdateRunnable = null;
                    } else {
                        return;
                    }
                }
                WeatherShortcutInfo.this.putNewData(data);
                if (WeatherShortcutInfo.this.needInvalidate()) {
                    WeatherShortcutInfo.this.onDataChanged();
                }
            }
        };
        TaskWorker.get().post(r);
    }

    @Override // net.oneplus.h2launcher.dynamicicon.IDynamicShortcut
    public void onDataChanged() {
        this.mNeedAnimateIconCallback.onNeedAnimateIcon();
    }

    @Override // net.oneplus.h2launcher.dynamicicon.IDynamicShortcut
    public boolean needInvalidate() {
        Integer oldTemp = (Integer) this.mDataMap.get(KEY_OLD_TEMP);
        Integer newTemp = (Integer) this.mDataMap.get(KEY_NEW_TEMP);
        String old_weather_image_id = (String) this.mDataMap.get(KEY_OLD_WEATHER_IMAGE_ID);
        String new_weather_image_id = (String) this.mDataMap.get(KEY_NEW_WEATHER_IMAGE_ID);
        if (old_weather_image_id == null) {
            old_weather_image_id = getDefaultImageId();
            Logger.d(TAG, "DynamicIcon check old_weather_image_id == null, put empty value");
        }
        if (oldTemp == null) {
            oldTemp = -99;
            Logger.d(TAG, "DynamicIcon check oldTemp == null, put empty value");
        }
        if (old_weather_image_id.equals(new_weather_image_id) && oldTemp.equals(newTemp)) {
            Logger.d(TAG, "DynamicIcon check needInvalidate false because weather image and temp no change");
            return false;
        }
        if ((new_weather_image_id == null || old_weather_image_id.equals(new_weather_image_id)) && newTemp == null) {
            Logger.d(TAG, "DynamicIcon check needInvalidate false because no new weather image or temp");
            return false;
        }
        Logger.d(TAG, "DynamicIcon check needInvalidate true");
        return true;
    }

    @Override // net.oneplus.h2launcher.dynamicicon.IDynamicShortcut
    public boolean isRunningAnimation() {
        boolean z;
        synchronized (this.mCheckAnimatingObject) {
            z = this.mRunningAnimation;
        }
        return z;
    }

    @Override // net.oneplus.h2launcher.dynamicicon.IDynamicShortcut
    public void onAnimationStart() {
        synchronized (this.mCheckAnimatingObject) {
            this.mRunningAnimation = true;
        }
        Logger.d(TAG, "DynamicIcon WeatherShortcutInfo onAnimationStart");
    }

    @Override // net.oneplus.h2launcher.dynamicicon.IDynamicShortcut
    public void onAnimationEnd() {
        if (this.mDataMap.get(KEY_NEW_TEMP) == null) {
            Logger.d(TAG, "new value temp = null");
        }
        if (this.mDataMap.get(KEY_NEW_WEATHER_ID) == null) {
            Logger.d(TAG, "new weather Id = null");
        }
        if (this.mDataMap.get(KEY_NEW_WEATHER_IMAGE_ID) == null) {
            Logger.d(TAG, "new weather image Id = null");
        }
        this.mDataMap.put(KEY_OLD_TEMP, this.mDataMap.get(KEY_NEW_TEMP));
        this.mDataMap.put(KEY_OLD_TEMP_STRING, this.mDataMap.get(KEY_NEW_TEMP_STRING));
        this.mDataMap.put(KEY_OLD_WEATHER_ID, this.mDataMap.get(KEY_NEW_WEATHER_ID));
        this.mDataMap.put(KEY_OLD_WEATHER_IMAGE_ID, this.mDataMap.get(KEY_NEW_WEATHER_IMAGE_ID));
        Logger.d(TAG, "DynamicIcon WeatherShortcutInfo onAnimationEnd put oldWeatherId = " + this.mDataMap.get(KEY_NEW_WEATHER_ID) + ", imageId = " + this.mDataMap.get(KEY_NEW_WEATHER_IMAGE_ID) + ", temp = " + this.mDataMap.get(KEY_NEW_TEMP_STRING));
        this.mRunningAnimation = false;
        updateIconCache();
        if (this.mUpdateRunnable != null) {
            TaskWorker.get().post(new Runnable() { // from class: net.oneplus.h2launcher.dynamicicon.weather.WeatherShortcutInfo.4
                @Override // java.lang.Runnable
                public void run() {
                    if (WeatherShortcutInfo.this.mUpdateRunnable != null) {
                        WeatherShortcutInfo.this.mUpdateRunnable.run();
                    }
                }
            });
        }
    }

    @Override // net.oneplus.h2launcher.dynamicicon.IDynamicShortcut
    public void updateIconCache() {
        TaskWorker.get().post(new Runnable() { // from class: net.oneplus.h2launcher.dynamicicon.weather.WeatherShortcutInfo.5
            @Override // java.lang.Runnable
            public void run() {
                Bitmap bitmap;
                ComponentName componentName;
                LauncherAppState appState;
                AssetCache assetCache;
                FastBitmapDrawable drawable = WeatherShortcutInfo.this.getStaticDrawable(false);
                if (drawable != null && (bitmap = DynamicIconUtil.getCompleteBitmap(drawable)) != null && (componentName = WeatherShortcutInfo.this.getTargetComponent()) != null && (appState = LauncherAppState.getInstance()) != null && (assetCache = appState.getAssetCache()) != null) {
                    assetCache.updateDynamicIconCache(componentName, bitmap);
                    DynamicIconManager.getInstance().notifyUpdateIconCacheCallback(componentName, WeatherShortcutInfo.this.user);
                }
            }
        });
    }

    @Override // net.oneplus.h2launcher.dynamicicon.IDynamicShortcut
    public Map<String, Object> getCurrentData() {
        return this.mDataMap;
    }

    @Override // net.oneplus.h2launcher.dynamicicon.IDynamicShortcut
    public BubbleTextView createShortcutView(Context context, ViewGroup parent, boolean attachToRoot, int style) {
        int layout;
        if (context != this.mContext) {
            unregisterDataProvider();
            this.mContext = context;
        }
        if (needRegisterDataProvider()) {
            registerDataProvider();
        }
        if (style == R.style.Icon) {
            layout = R.layout.app_icon_weather;
        } else {
            layout = R.layout.folder_application_weather;
        }
        return (BubbleTextView) LayoutInflater.from(context).inflate(layout, parent, attachToRoot);
    }

    @Override // net.oneplus.h2launcher.dynamicicon.IDynamicShortcut
    public FastBitmapDrawable getStaticDrawable() {
        return getStaticDrawable(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public FastBitmapDrawable getStaticDrawable(boolean resize) {
        Drawable d;
        Launcher launcher;
        if (this.mRunningAnimation) {
            d = getOriginalIconDrawable(getNewWeatherImageId());
        } else {
            d = getOriginalIconDrawable(getOldWeatherImageId());
        }
        Bitmap b = Utilities.createIconBitmap(d, this.mContext);
        WeatherFastBitmapDrawable fastBitmapDrawable = new WeatherFastBitmapDrawable(this.mContext, b);
        fastBitmapDrawable.setFilterBitmap(true);
        fastBitmapDrawable.updateConfig(this.mOriginalConfig, this.mAssetPackConfig);
        if (this.mRunningAnimation) {
            fastBitmapDrawable.setText(getNewTempString());
        } else {
            fastBitmapDrawable.setText(getOldTempString());
        }
        if (resize && (launcher = LauncherAppState.getInstance().getLauncher()) != null) {
            launcher.resizeIconDrawable(fastBitmapDrawable);
        }
        return fastBitmapDrawable;
    }

    @Override // net.oneplus.h2launcher.dynamicicon.IDynamicShortcut
    public void initFlags() {
        if ((this.flags & 8) != 0) {
            this.flags ^= 8;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void putNewData(WeatherProvider.WeatherData data) {
        String tempString = NONE_TEMP_STRING;
        int temp = data.temperature;
        if (temp > 99 || temp < -99) {
            temp = -99;
        }
        if (temp != -99) {
            tempString = String.valueOf(data.temperature) + WeatherProvider.TEMP_UNIT_DEGREE;
        }
        String resId = getImageId(String.valueOf(data.weatherCode));
        this.mDataMap.put(KEY_NEW_TEMP, Integer.valueOf(temp));
        this.mDataMap.put(KEY_NEW_WEATHER_ID, Integer.valueOf(data.weatherCode));
        this.mDataMap.put(KEY_NEW_WEATHER_IMAGE_ID, resId);
        this.mDataMap.put(KEY_NEW_TEMP_STRING, tempString);
        Logger.d(TAG, "DynamicIcon putNewData weatherId = " + data.weatherCode + ", weatherImageId = " + resId + ", tempString = " + tempString);
    }

    private void putOldData(WeatherProvider.WeatherData data) {
        String tempString = NONE_TEMP_STRING;
        int temp = data.temperature;
        if (temp > 99 || temp < -99) {
            temp = -99;
        }
        if (temp != -99) {
            tempString = String.valueOf(data.temperature) + WeatherProvider.TEMP_UNIT_DEGREE;
        }
        String resId = getImageId(String.valueOf(data.weatherCode));
        this.mDataMap.put(KEY_OLD_TEMP, Integer.valueOf(temp));
        this.mDataMap.put(KEY_OLD_WEATHER_ID, Integer.valueOf(data.weatherCode));
        this.mDataMap.put(KEY_OLD_WEATHER_IMAGE_ID, resId);
        this.mDataMap.put(KEY_OLD_TEMP_STRING, tempString);
    }

    private void initEmptyData() {
        this.mDataMap.put(KEY_OLD_TEMP, -99);
        this.mDataMap.put(KEY_OLD_WEATHER_ID, Integer.valueOf(WeatherProvider.WEATHER_CODE_NONE));
        this.mDataMap.put(KEY_OLD_WEATHER_IMAGE_ID, getDefaultImageId());
        this.mDataMap.put(KEY_OLD_TEMP_STRING, NONE_TEMP_STRING);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getNewWeatherImageId() {
        String resId = getDefaultImageId();
        String weatherImageId = (String) this.mDataMap.get(KEY_NEW_WEATHER_IMAGE_ID);
        if (weatherImageId != null) {
            return weatherImageId;
        }
        return resId;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getOldWeatherImageId() {
        String resId = getDefaultImageId();
        String weatherImageId = (String) this.mDataMap.get(KEY_OLD_WEATHER_IMAGE_ID);
        if (weatherImageId != null) {
            return weatherImageId;
        }
        return resId;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FastBitmapDrawable getCurrentIconDrawable() {
        WeatherFastBitmapDrawable fastBitmapDrawable;
        String resId = getOldWeatherImageId();
        if (this.mCurrentDrawable.containsKey(resId)) {
            fastBitmapDrawable = this.mCurrentDrawable.get(resId);
        } else {
            Drawable d = getOriginalIconDrawable(resId);
            Bitmap b = Utilities.createIconBitmap(d, this.mContext);
            fastBitmapDrawable = new WeatherFastBitmapDrawable(this.mContext, b);
            fastBitmapDrawable.setFilterBitmap(true);
            fastBitmapDrawable.updateConfig(this.mOriginalConfig, this.mAssetPackConfig);
            this.mCurrentDrawable.put(resId, fastBitmapDrawable);
        }
        fastBitmapDrawable.setText(getOldTempString());
        Launcher launcher = LauncherAppState.getInstance().getLauncher();
        if (launcher != null) {
            launcher.resizeIconDrawable(fastBitmapDrawable);
        }
        return fastBitmapDrawable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FastBitmapDrawable getNewIconDrawable() {
        WeatherFastBitmapDrawable fastBitmapDrawable;
        String resId = getNewWeatherImageId();
        if (this.mNewDrawable.containsKey(resId)) {
            fastBitmapDrawable = this.mNewDrawable.get(resId);
        } else {
            Drawable d = getOriginalIconDrawable(resId);
            Bitmap b = Utilities.createIconBitmap(d, this.mContext);
            fastBitmapDrawable = new WeatherFastBitmapDrawable(this.mContext, b);
            fastBitmapDrawable.setFilterBitmap(true);
            fastBitmapDrawable.updateConfig(this.mOriginalConfig, this.mAssetPackConfig);
            this.mNewDrawable.put(resId, fastBitmapDrawable);
        }
        fastBitmapDrawable.setText(getNewTempString());
        Launcher launcher = LauncherAppState.getInstance().getLauncher();
        if (launcher != null) {
            launcher.resizeIconDrawable(fastBitmapDrawable);
        }
        return fastBitmapDrawable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FastBitmapDrawable getOriginalIconDrawable(String resId) {
        if (this.mBaseDrawable.containsKey(resId)) {
            return this.mBaseDrawable.get(resId);
        }
        Drawable d = null;
        DynamicIconDrawableConfig config = null;
        if (this.mAssetPackConfig != null) {
            config = this.mAssetPackConfig.getBackgroundDrawableConfig();
        } else if (this.mOriginalConfig != null) {
            config = this.mOriginalConfig.getBackgroundDrawableConfig();
        }
        if (config == null) {
            return null;
        }
        LauncherAppState app = LauncherAppState.getInstance();
        if (app != null) {
            AssetCache assetCache = app.getAssetCache();
            d = assetCache.getDynamicIconDrawable(resId, config.getAssetPackName());
            if (d == null) {
                d = assetCache.getDynamicIconDrawable(resId, this.mOriginalConfig.getAssetPackName());
            }
            if (d == null) {
                d = assetCache.getDynamicIconDrawable(config.getDefaultDrawableResource(), config.getAssetPackName());
            }
            if (d == null) {
                d = assetCache.getDynamicIconDrawable(this.mOriginalConfig.getBackgroundDrawableConfig().getDefaultDrawableResource(), this.mOriginalConfig.getAssetPackName());
            }
        }
        Bitmap b = Utilities.createIconBitmap(d, this.mContext);
        WeatherFastBitmapDrawable fastBitmapDrawable = new WeatherFastBitmapDrawable(this.mContext, b);
        fastBitmapDrawable.setFilterBitmap(true);
        fastBitmapDrawable.updateConfig(this.mOriginalConfig, this.mAssetPackConfig);
        this.mBaseDrawable.put(resId, fastBitmapDrawable);
        return fastBitmapDrawable;
    }

    private String getDefaultImageId() {
        return getImageId("");
    }

    private String getImageId(String weatherId) {
        DynamicIconDrawableConfig config = null;
        if (this.mAssetPackConfig != null) {
            config = this.mAssetPackConfig.getBackgroundDrawableConfig();
        } else if (this.mOriginalConfig != null) {
            config = this.mOriginalConfig.getBackgroundDrawableConfig();
        }
        if (config != null) {
            return config.getDrawableResource(weatherId);
        }
        return null;
    }

    private String getOldTempString() {
        String tempString = (String) this.mDataMap.get(KEY_OLD_TEMP_STRING);
        if (tempString == null) {
            return NONE_TEMP_STRING;
        }
        return tempString;
    }

    private String getNewTempString() {
        String tempString = (String) this.mDataMap.get(KEY_NEW_TEMP_STRING);
        if (tempString == null) {
            return NONE_TEMP_STRING;
        }
        return tempString;
    }

    @Override // net.oneplus.h2launcher.dynamicicon.IDynamicShortcut
    public void refreshConfig() {
        LauncherAppState app = LauncherAppState.getInstance();
        if (app != null) {
            AssetCache assetCache = app.getAssetCache();
            DynamicIconConfig originalConfig = assetCache.getDynamicIconConfig(DynamicIconManager.COMPONENT_NAME_WEATHER, 1);
            DynamicIconConfig assetPackConfig = assetCache.getDynamicIconConfig(DynamicIconManager.COMPONENT_NAME_WEATHER, 2);
            if (originalConfig != this.mOriginalConfig || assetPackConfig != this.mAssetPackConfig) {
                this.mOriginalConfig = originalConfig;
                this.mAssetPackConfig = assetPackConfig;
                this.mBaseDrawable.clear();
                this.mNewDrawable.clear();
                this.mCurrentDrawable.clear();
            }
        }
    }

    public static boolean verifyConfig(DynamicIconConfig config) {
        try {
            DynamicIconDrawableConfig drawableConfig = config.getBackgroundDrawableConfig();
            if (drawableConfig == null) {
                return false;
            }
            String resource = drawableConfig.getDefaultDrawableResource();
            LauncherAppState app = LauncherAppState.getInstance();
            if (app == null) {
                return false;
            }
            AssetCache assetCache = app.getAssetCache();
            return assetCache.checkResourceExist(drawableConfig.getAssetPackName(), resource);
        } catch (Exception e) {
            Logger.w(TAG, "parse DynamicIconConfig error, message = " + e.getMessage());
            return false;
        }
    }
}

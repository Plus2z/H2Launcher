package net.oneplus.h2launcher;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.preference.PreferenceManager;
import android.support.annotation.DrawableRes;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.v4.view.PointerIconCompat;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import net.oneplus.h2launcher.test.TestWeatherProvider;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.TaskWorker;

/* loaded from: classes.dex */
public class WeatherProvider {
    public static final int TEMPERATURE_NONE = -99;
    public static final String TEMP_UNIT_CELSIUS = "˚C";
    public static final String TEMP_UNIT_DEGREE = "˚";
    public static final String TEMP_UNIT_FAHRENHEIT = "˚F";
    public static final int WEATHER_CODE_NONE = 9999;
    public static final String WEATHER_LAUNCH_ACTIVITY = "net.oneplus.weather.app.MainActivity";
    public static final String WEATHER_NAME_NONE = "N/A";
    public static final String WEATHER_PACKAGE_NAME = "net.oneplus.weather";
    private static Handler sWorkerHandler;
    private Context mContext;
    private static final String TAG = WeatherProvider.class.getSimpleName();
    private static final HandlerThread sWorkerThread = new HandlerThread(TAG);
    private final Uri WEATHER_CONTENT_URI = Uri.parse("content://com.oneplus.weather.ContentProvider/data");
    private final String KEY_TIMESTAMP = "weather_timestamp";
    private final String KEY_CITY_NAME = "weather_city";
    private final String KEY_WEATHER_CODE = "weather_code";
    private final String KEY_TEMPERATURE = "weather_temp";
    private final String KEY_TEMPERATURE_HIGH = "weather_temp_high";
    private final String KEY_TEMPERATURE_LOW = "weather_temp_low";
    private final String KEY_TEMPERATURE_UNIT = "weather_temp_unit";
    private final String KEY_WEATHER_NAME = "weather_description";
    private WeatherObserver mObserver = new WeatherObserver();
    private TestWeatherObserver mTestObserver = new TestWeatherObserver();
    private ArrayList<IWeatherCallback> mCallbacks = new ArrayList<>();

    /* loaded from: classes.dex */
    public interface IWeatherCallback {
        void onWeatherUpdated(@NonNull WeatherData weatherData);
    }

    static {
        sWorkerThread.start();
        sWorkerHandler = new Handler(sWorkerThread.getLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum WEATHER_COLUMNS {
        TIMESTAMP(0),
        CITY_NAME(1),
        WEATHER_CODE(2),
        WEATHER_NAME(6),
        TEMP(3),
        TEMP_HIGH(4),
        TEMP_LOW(5),
        TEMP_UNIT(7);

        private int index;

        WEATHER_COLUMNS(int column_index) {
            this.index = column_index;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum WEATHER_TYPE {
        SUNNY(PointerIconCompat.TYPE_CONTEXT_MENU, R.mipmap.ic_weather_app_sunny, R.mipmap.ic_weather_sunny),
        SUNNY_INTERVALS(PointerIconCompat.TYPE_HAND, R.mipmap.ic_weather_app_sunny, R.mipmap.ic_weather_sunny),
        CLOUDY(PointerIconCompat.TYPE_HELP, R.mipmap.ic_weather_app_cloudy, R.mipmap.ic_weather_cloudy),
        OVERCAST(PointerIconCompat.TYPE_WAIT, R.mipmap.ic_weather_app_overcast, R.mipmap.ic_weather_overcast),
        DRIZZLE(1005, R.mipmap.ic_weather_app_rain, R.mipmap.ic_weather_rain),
        RAIN(PointerIconCompat.TYPE_CELL, R.mipmap.ic_weather_app_rain, R.mipmap.ic_weather_rain),
        SHOWER(PointerIconCompat.TYPE_CROSSHAIR, R.mipmap.ic_weather_app_rain, R.mipmap.ic_weather_rain),
        DOWNPOUR(PointerIconCompat.TYPE_TEXT, R.mipmap.ic_weather_app_rain, R.mipmap.ic_weather_rain),
        RAINSTORM(PointerIconCompat.TYPE_VERTICAL_TEXT, R.mipmap.ic_weather_app_rain, R.mipmap.ic_weather_rain),
        SLEET(PointerIconCompat.TYPE_ALIAS, R.mipmap.ic_weather_app_rain, R.mipmap.ic_weather_sleet),
        FLURRY(PointerIconCompat.TYPE_COPY, R.mipmap.ic_weather_app_snow, R.mipmap.ic_weather_snow),
        SNOW(PointerIconCompat.TYPE_NO_DROP, R.mipmap.ic_weather_app_snow, R.mipmap.ic_weather_snow),
        SNOWSTORM(PointerIconCompat.TYPE_ALL_SCROLL, R.mipmap.ic_weather_app_snow, R.mipmap.ic_weather_snow),
        HAIL(PointerIconCompat.TYPE_HORIZONTAL_DOUBLE_ARROW, R.mipmap.ic_weather_app_hail, R.mipmap.ic_weather_hail),
        THUNDERSHOWER(PointerIconCompat.TYPE_VERTICAL_DOUBLE_ARROW, R.mipmap.ic_weather_app_rain, R.mipmap.ic_weather_rain),
        SANDSTORM(PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW, R.mipmap.ic_weather_app_sandstorm, R.mipmap.ic_weather_sandstorm),
        FOG(PointerIconCompat.TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW, R.mipmap.ic_weather_app_overcast, R.mipmap.ic_weather_fog),
        HURRICANE(PointerIconCompat.TYPE_ZOOM_IN, R.mipmap.ic_weather_app_typhoon, R.mipmap.ic_weather_typhoon),
        HAZE(PointerIconCompat.TYPE_ZOOM_OUT, R.mipmap.ic_weather_app_sandstorm, R.mipmap.ic_weather_haze),
        NONE(WeatherProvider.WEATHER_CODE_NONE, R.mipmap.ic_weather_app_unknown, R.mipmap.ic_weather_unknown);

        int appIconId;
        int iconId;
        int weatherCode;

        WEATHER_TYPE(@IntRange(from = 1000, to = 9999) int weatherId, @DrawableRes int resAppIconId, @DrawableRes int resIconId) {
            this.weatherCode = weatherId;
            this.appIconId = resAppIconId;
            this.iconId = resIconId;
        }

        public static WEATHER_TYPE getWeather(int weatherCode) {
            for (WEATHER_TYPE code : values()) {
                if (code.weatherCode == weatherCode) {
                    Logger.d(WeatherProvider.TAG, "get weather: " + code);
                    return code;
                }
            }
            Logger.d(WeatherProvider.TAG, "get weather: " + NONE);
            return NONE;
        }

        @Override // java.lang.Enum
        public String toString() {
            return String.valueOf(this.weatherCode);
        }
    }

    /* loaded from: classes.dex */
    public class WeatherData {
        public long timestamp = 0;
        public String cityName = "";
        public int weatherCode = WeatherProvider.WEATHER_CODE_NONE;
        public String weatherName = WeatherProvider.WEATHER_NAME_NONE;
        public int temperature = -99;
        public int temperatureHigh = -99;
        public int temperatureLow = -99;
        public String temperatureUnit = WeatherProvider.TEMP_UNIT_CELSIUS;

        public WeatherData() {
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("[timestamp] ").append(this.timestamp).append("; ");
            sb.append("[cityName] ").append(this.cityName).append("; ");
            sb.append("[weatherCode] ").append(this.weatherCode).append("; ");
            sb.append("[weatherName] ").append(this.weatherName).append("; ");
            sb.append("[temperature] ").append(this.temperature).append("; ");
            sb.append("[temperatureHigh] ").append(this.temperatureHigh).append("; ");
            sb.append("[temperatureLow] ").append(this.temperatureLow).append("; ");
            sb.append("[temperatureUnit] ").append(this.temperatureUnit).append("; ");
            return sb.toString();
        }
    }

    public WeatherProvider(Context context) {
        this.mContext = context;
    }

    public WeatherData getOfflineWeatherInformation() {
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(this.mContext);
        if (!prefs.contains("weather_timestamp")) {
            queryWeatherInformation();
            Logger.d(TAG, "never get the weather information, querying... ");
            return null;
        }
        WeatherData data = new WeatherData();
        data.timestamp = prefs.getLong("weather_timestamp", 0L);
        data.cityName = prefs.getString("weather_city", "");
        data.weatherCode = prefs.getInt("weather_code", WEATHER_CODE_NONE);
        data.weatherName = prefs.getString("weather_description", WEATHER_NAME_NONE);
        data.temperature = prefs.getInt("weather_temp", -99);
        data.temperatureHigh = prefs.getInt("weather_temp_high", -99);
        data.temperatureLow = prefs.getInt("weather_temp_low", -99);
        data.temperatureUnit = prefs.getString("weather_temp_unit", TEMP_UNIT_CELSIUS);
        return data;
    }

    public void getCurrentWeatherInformation() {
        getCurrentWeatherInformation(null);
    }

    public void getCurrentWeatherInformation(IWeatherCallback cb) {
        WeatherData data = getOfflineWeatherInformation();
        if (data != null) {
            updateWeatherCallbacks(data, cb);
        }
    }

    public void subscribeCallback(@NonNull IWeatherCallback cb) {
        Logger.i(TAG, "subscribe new weather callback: " + cb.getClass().getSimpleName());
        if (!Utilities.isPackageInstalled(this.mContext, "net.oneplus.weather")) {
            Logger.w(TAG, "the weather application is not installed, may not receive the updates");
        }
        if (this.mCallbacks.contains(cb)) {
            Logger.d(TAG, "the callback is existed, remove the old one");
            this.mCallbacks.remove(cb);
        }
        this.mCallbacks.add(cb);
        getCurrentWeatherInformation(cb);
    }

    public void unsubscribeCallback(@NonNull IWeatherCallback cb) {
        if (this.mCallbacks.contains(cb)) {
            Logger.i(TAG, "un-subscribe the weather callback: " + cb.getClass().getSimpleName());
            this.mCallbacks.remove(cb);
        } else {
            Logger.d(TAG, "the target callback is not found in the callback list");
        }
    }

    @DrawableRes
    public static int getWeatherIconResourceId(int weatherCode) {
        return WEATHER_TYPE.getWeather(weatherCode).iconId;
    }

    @DrawableRes
    public static int getWeatherAppIconResourceId(int weatherCode) {
        return WEATHER_TYPE.getWeather(weatherCode).appIconId;
    }

    @DrawableRes
    public static int getDefaultWeatherIconResourceId() {
        return WEATHER_TYPE.NONE.iconId;
    }

    @DrawableRes
    public static int getDefaultWeatherAppIconResourceId() {
        return WEATHER_TYPE.NONE.appIconId;
    }

    public void registerContentObserver(ContentResolver resolver) {
        if (!Utilities.isPackageInstalled(this.mContext, "net.oneplus.weather")) {
            Logger.w(TAG, "the weather application is not installed");
            return;
        }
        if (this.mObserver == null) {
            this.mObserver = new WeatherObserver();
        }
        if (this.mTestObserver == null) {
            this.mTestObserver = new TestWeatherObserver();
        }
        Logger.showCallStack(TAG, 10);
        Logger.d(TAG, "registerContentObserver receiver = " + this.mObserver);
        Logger.d(TAG, "registerContentObserver mContext = " + this.mContext);
        Logger.d(TAG, "registerContentObserver obj = " + this);
        try {
            resolver.registerContentObserver(this.WEATHER_CONTENT_URI, true, this.mObserver);
            resolver.registerContentObserver(TestWeatherProvider.CONTENT_URI, true, this.mTestObserver);
            queryWeatherInformation();
        } catch (SecurityException e) {
            Logger.e(TAG, "register with weather provider failed: %s", e);
        }
    }

    public void unregisterContentObserver(ContentResolver resolver) {
        this.mCallbacks.clear();
        if (this.mObserver != null && this.mTestObserver != null) {
            Logger.showCallStack(TAG, 10);
            Logger.d(TAG, "unregisterContentObserver mContext = " + this.mContext);
            Logger.d(TAG, "unregisterContentObserver receiver = " + this.mObserver);
            Logger.d(TAG, "unregisterContentObserver obj = " + this);
            resolver.unregisterContentObserver(this.mObserver);
            this.mObserver = null;
            resolver.unregisterContentObserver(this.mTestObserver);
            this.mTestObserver = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void queryWeatherInformation() {
        if (!Utilities.isPackageInstalled(this.mContext, "net.oneplus.weather")) {
            Logger.w(TAG, "the weather application is not installed, stop querying...");
        } else {
            sWorkerHandler.post(new Runnable() { // from class: net.oneplus.h2launcher.WeatherProvider.1
                @Override // java.lang.Runnable
                public void run() {
                    Logger.d(WeatherProvider.TAG, "begin querying weather info");
                    Cursor cursor = WeatherProvider.this.mContext.getContentResolver().query(WeatherProvider.this.WEATHER_CONTENT_URI, null, null, null, null);
                    WeatherProvider.this.processWeatherInformation(cursor);
                    Logger.d(WeatherProvider.TAG, "finish querying weather info");
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void queryTestWeatherInformation() {
        if (!Utilities.isPackageInstalled(this.mContext, "net.oneplus.weather")) {
            Logger.w(TAG, "the weather application is not installed, stop querying...");
        } else {
            sWorkerHandler.post(new Runnable() { // from class: net.oneplus.h2launcher.WeatherProvider.2
                @Override // java.lang.Runnable
                public void run() {
                    Logger.d(WeatherProvider.TAG, "begin querying test weather info");
                    Cursor cursor = WeatherProvider.this.mContext.getContentResolver().query(TestWeatherProvider.CONTENT_URI, null, null, null, null);
                    WeatherProvider.this.processWeatherInformation(cursor);
                    Logger.d(WeatherProvider.TAG, "finish querying test weather info");
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processWeatherInformation(Cursor cursor) {
        Exception e;
        if (cursor == null) {
            Logger.e(TAG, "cannot get weather information by querying content resolver");
            return;
        }
        if (!cursor.moveToFirst()) {
            Logger.e(TAG, "cannot move the cursor point to the first row, is the cursor empty?");
            cursor.close();
            return;
        }
        if (cursor.getColumnCount() < WEATHER_COLUMNS.values().length) {
            Logger.e(TAG, "the column count is not met the spec, contact OPWeather owner.");
            Logger.e(TAG, "expected columns: " + WEATHER_COLUMNS.values().length + ", actual columns: " + cursor.getColumnCount());
        }
        WeatherData data = new WeatherData();
        try {
            try {
                String timestamp = cursor.getString(WEATHER_COLUMNS.TIMESTAMP.index);
                String city = cursor.getString(WEATHER_COLUMNS.CITY_NAME.index);
                String weatherCode = cursor.getString(WEATHER_COLUMNS.WEATHER_CODE.index);
                String weatherName = cursor.getString(WEATHER_COLUMNS.WEATHER_NAME.index);
                String temp = cursor.getString(WEATHER_COLUMNS.TEMP.index);
                String tempHigh = cursor.getString(WEATHER_COLUMNS.TEMP_HIGH.index);
                String tempLow = cursor.getString(WEATHER_COLUMNS.TEMP_LOW.index);
                String tempUnit = cursor.getString(WEATHER_COLUMNS.TEMP_UNIT.index);
                Logger.d(TAG, "[Raw Weather Data] timestamp: " + timestamp + ", city: " + city + ", code: " + weatherCode + ", name: " + weatherName + ", temp: " + temp + ", high: " + tempHigh + ", low: " + tempLow + ", unit: " + tempUnit);
                DateFormat df = new SimpleDateFormat("yyyyMMddkkmm", Locale.getDefault());
                data.timestamp = df.parse(timestamp).getTime() / 1000;
                data.cityName = city;
                data.weatherCode = WEATHER_TYPE.getWeather(Integer.parseInt(weatherCode)).weatherCode;
                data.weatherName = weatherName;
                data.temperature = Integer.parseInt(temp);
                data.temperatureHigh = Integer.parseInt(tempHigh);
                data.temperatureLow = Integer.parseInt(tempLow);
                data.temperatureUnit = tempUnit;
                cursor.close();
                Logger.d(TAG, data.toString());
            } catch (IllegalStateException e2) {
                Logger.e(TAG, "invalid Cursor data: " + e2);
                cursor.close();
                Logger.d(TAG, data.toString());
            } catch (NullPointerException e3) {
                e = e3;
                Logger.e(TAG, "got unexpected weather data: " + e);
                cursor.close();
                Logger.d(TAG, data.toString());
            } catch (NumberFormatException e4) {
                e = e4;
                Logger.e(TAG, "got unexpected weather data: " + e);
                cursor.close();
                Logger.d(TAG, data.toString());
            } catch (ParseException e5) {
                e = e5;
                Logger.e(TAG, "got unexpected weather data: " + e);
                cursor.close();
                Logger.d(TAG, data.toString());
            }
            updateWeatherCallbacks(data, null);
            writePreferences(data);
        } catch (Throwable th) {
            cursor.close();
            Logger.d(TAG, data.toString());
            throw th;
        }
    }

    private void updateWeatherCallbacks(WeatherData data, IWeatherCallback cb) {
        if (cb == null) {
            Logger.d(TAG, "push the weather information to the callbacks");
            Iterator<IWeatherCallback> it = this.mCallbacks.iterator();
            while (it.hasNext()) {
                IWeatherCallback callback = it.next();
                callback.onWeatherUpdated(data);
            }
            return;
        }
        Logger.d(TAG, "push the weather information to: " + cb.getClass().getSimpleName());
        cb.onWeatherUpdated(data);
    }

    private void writePreferences(WeatherData data) {
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(this.mContext);
        prefs.edit().putLong("weather_timestamp", data.timestamp).putString("weather_city", data.cityName).putInt("weather_code", data.weatherCode).putString("weather_description", data.weatherName).putInt("weather_temp", data.temperature).putInt("weather_temp_high", data.temperatureHigh).putInt("weather_temp_low", data.temperatureLow).putString("weather_temp_unit", data.temperatureUnit).apply();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class WeatherObserver extends ContentObserver {
        public WeatherObserver() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange) {
            super.onChange(selfChange);
            WeatherProvider.this.queryWeatherInformation();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class TestWeatherObserver extends ContentObserver {
        public TestWeatherObserver() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange) {
            super.onChange(selfChange);
            TaskWorker.get().post(new Runnable() { // from class: net.oneplus.h2launcher.WeatherProvider.TestWeatherObserver.1
                @Override // java.lang.Runnable
                public void run() {
                    WeatherProvider.this.queryTestWeatherInformation();
                }
            });
        }
    }
}

package net.oneplus.h2launcher.test;

import android.content.BroadcastReceiver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class TestWeatherInfoReceiver extends BroadcastReceiver {
    public static final String ACTION_RECEIVE_WEATHER = "net.oneplus.weather.RECEIVE_LOCATION_WEATHER";
    public static final String ACTION_REQUEST_WEATHER = "net.oneplus.weather.GET_LOCATION_WEATHER";
    private static final int CURRENT_TEMP_NONE = -9999;
    public static final boolean DEBUG = true;
    public static final String KEY_CITY_NAME = "CityName";
    public static final String KEY_CURRENT_TEMP = "CurrentTemp";
    public static final String KEY_CURRENT_TEMP_HIGH = "CurrentTempHigh";
    public static final String KEY_CURRENT_TEMP_LOW = "CurrentTempLow";
    public static final String KEY_CURRENT_TEMP_UNIT = "CurrentTempUnit";
    public static final String KEY_CURRENT_TEMP_WITH_C = "CurrentTempWithC";
    public static final String KEY_CURRENT_WEATHER_NAME = "CurrentWeatherName";
    public static final String KEY_TIMESTAMP = "TimeStamp";
    private static final String KEY_WEATHER_BUNDLE = "OpWeatherInfo";
    public static final String KEY_WEATHER_ID = "CurrentWeatherTypeId";
    public static final String TAG = TestWeatherInfoReceiver.class.getSimpleName();
    public static final int WEATHER_CODE_NONE = -1;
    public static final String WEATHER_PKG_NAME = "net.oneplus.weather";

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Bundle bundle = intent.getBundleExtra(KEY_WEATHER_BUNDLE);
        if (bundle != null) {
            int weatherCode = bundle.getInt(KEY_WEATHER_ID, -1);
            int temp = bundle.getInt(KEY_CURRENT_TEMP, CURRENT_TEMP_NONE);
            String city = bundle.getString(KEY_CITY_NAME);
            String weather = bundle.getString(KEY_CURRENT_WEATHER_NAME);
            int tempLow = bundle.getInt(KEY_CURRENT_TEMP_LOW, CURRENT_TEMP_NONE);
            int tempHigh = bundle.getInt(KEY_CURRENT_TEMP_HIGH, CURRENT_TEMP_NONE);
            String tempUnit = bundle.getString(KEY_CURRENT_TEMP_UNIT);
            String timeStamp = bundle.getString(KEY_TIMESTAMP);
            ContentValues values = new ContentValues();
            values.put(KEY_TIMESTAMP, timeStamp);
            values.put(KEY_WEATHER_ID, Integer.valueOf(weatherCode));
            values.put(KEY_CURRENT_WEATHER_NAME, weather);
            values.put(KEY_CURRENT_TEMP, Integer.valueOf(temp));
            values.put(KEY_CURRENT_TEMP_LOW, Integer.valueOf(tempLow));
            values.put(KEY_CURRENT_TEMP_HIGH, Integer.valueOf(tempHigh));
            values.put(KEY_CURRENT_TEMP_UNIT, tempUnit);
            values.put(KEY_CITY_NAME, city);
            Logger.d(TAG, "TestWeatherInfoReceiver receive timeStamp = " + timeStamp + ", weatherId = " + weatherCode + ", weatherName = " + weather + ", tempLow = " + tempLow + ", temp = " + temp + ", tempHigh = " + tempHigh + ", tempUnit = " + tempUnit + ", city = " + city);
            context.getContentResolver().insert(TestWeatherProvider.CONTENT_URI, values);
        }
    }
}

package net.oneplus.h2launcher.test;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.support.v4.os.EnvironmentCompat;
import net.oneplus.h2launcher.WeatherProvider;

/* loaded from: classes.dex */
public class TestWeatherProvider extends ContentProvider {
    private static final String CONTENT_TYPE_ALL = "vnd.android.cursor.item/weatehr";
    private static final int WEATHER_ALL = 1;
    public static final String WEATHER_AUTHORIY = "net.oneplus.h2launcher.test.TestWeatherProvider";
    private static final UriMatcher uriMatcher = new UriMatcher(-1);
    public static final Uri CONTENT_URI = Uri.parse("content://net.oneplus.h2launcher.test.TestWeatherProvider/data");
    private static final String[] RESULT_COLUMNS = {TestWeatherInfoReceiver.KEY_TIMESTAMP, TestWeatherInfoReceiver.KEY_CITY_NAME, TestWeatherInfoReceiver.KEY_WEATHER_ID, TestWeatherInfoReceiver.KEY_CURRENT_TEMP, TestWeatherInfoReceiver.KEY_CURRENT_TEMP_HIGH, TestWeatherInfoReceiver.KEY_CURRENT_TEMP_LOW, TestWeatherInfoReceiver.KEY_CURRENT_WEATHER_NAME, TestWeatherInfoReceiver.KEY_CURRENT_TEMP_UNIT};
    private Object mLock = new Object();
    private int mWeatherCode = WeatherProvider.WEATHER_CODE_NONE;
    private String mWeatherName = EnvironmentCompat.MEDIA_UNKNOWN;
    private String mTimeStamp = "201607261721";
    private int mTemp = 30;
    private int mTempLow = 29;
    private int mTempHigh = 31;
    private String mTempUnit = "c";
    private String mCity = "Taipei";

    static {
        uriMatcher.addURI(WEATHER_AUTHORIY, "data", 1);
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        System.out.println("getType");
        switch (uriMatcher.match(uri)) {
            case 1:
                return CONTENT_TYPE_ALL;
            default:
                return null;
        }
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues values) {
        this.mTimeStamp = values.getAsString(TestWeatherInfoReceiver.KEY_TIMESTAMP);
        this.mCity = values.getAsString(TestWeatherInfoReceiver.KEY_CITY_NAME);
        this.mWeatherCode = values.getAsInteger(TestWeatherInfoReceiver.KEY_WEATHER_ID).intValue();
        this.mTemp = values.getAsInteger(TestWeatherInfoReceiver.KEY_CURRENT_TEMP).intValue();
        this.mTempHigh = values.getAsInteger(TestWeatherInfoReceiver.KEY_CURRENT_TEMP_HIGH).intValue();
        this.mTempLow = values.getAsInteger(TestWeatherInfoReceiver.KEY_CURRENT_TEMP_LOW).intValue();
        this.mWeatherName = values.getAsString(TestWeatherInfoReceiver.KEY_CURRENT_WEATHER_NAME);
        this.mTempUnit = values.getAsString(TestWeatherInfoReceiver.KEY_CURRENT_TEMP_UNIT);
        getContext().getContentResolver().notifyChange(CONTENT_URI, null);
        return null;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri arg0, String arg1, String[] arg2) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return false;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] arg1, String arg2, String[] arg3, String arg4) {
        MatrixCursor matrixCursor = new MatrixCursor(RESULT_COLUMNS);
        matrixCursor.addRow(new Object[]{this.mTimeStamp, this.mCity, Integer.valueOf(this.mWeatherCode), Integer.valueOf(this.mTemp), Integer.valueOf(this.mTempHigh), Integer.valueOf(this.mTempLow), this.mWeatherName, this.mTempUnit});
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public int update(Uri arg0, ContentValues arg1, String arg2, String[] arg3) {
        return 0;
    }
}

package net.oneplus.h2launcher.util;

import android.util.Log;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes.dex */
public class Logger {
    private static final String LAUNCH_TIME_TAG = "LauncherPerformance";
    public static final boolean LOG_D = true;
    public static final boolean LOG_P = true;
    static Map<String, Long> mRecords = new HashMap();

    public static void v(String tag, String msg) {
        Log.v(tag, msg);
    }

    public static void v(String tag, String format, Object... args) {
        Log.v(tag, String.format(format, args));
    }

    public static void d(String tag, String msg) {
        Log.d(tag, msg);
    }

    public static void d(String tag, String format, Object... args) {
        Log.d(tag, String.format(format, args));
    }

    public static void d(String tag, String msg, Throwable tr) {
        Log.d(tag, msg, tr);
    }

    public static void i(String tag, String msg) {
        Log.i(tag, msg);
    }

    public static void i(String tag, String format, Object... args) {
        Log.i(tag, String.format(format, args));
    }

    public static void w(String tag, String msg) {
        Log.w(tag, msg);
    }

    public static void w(String tag, String format, Object... args) {
        Log.w(tag, String.format(format, args));
    }

    public static void w(String tag, String msg, Throwable tr) {
        Log.w(tag, msg, tr);
    }

    public static void e(String tag, String msg) {
        Log.e(tag, msg);
    }

    public static void e(String tag, String format, Object... args) {
        Log.e(tag, String.format(format, args));
    }

    public static void e(String tag, String msg, Throwable tr) {
        Log.e(tag, msg, tr);
    }

    public static String showCallStack(String tag, int level) {
        int deep;
        StackTraceElement[] ste = new Throwable().getStackTrace();
        if (ste != null && (deep = ste.length) >= 2) {
            if (deep > level) {
                deep = level;
            }
            for (int i = 2; i < deep; i++) {
                d(tag, "    [%s] %s, %s(), Line:%d", tag, ste[i].getFileName(), ste[i].getMethodName(), Integer.valueOf(ste[i].getLineNumber()));
            }
        }
        return "";
    }

    public static String getCallStack(int level) {
        int deep;
        StackTraceElement[] ste = new Throwable().getStackTrace();
        String result = "";
        if (ste != null && (deep = ste.length) >= 2) {
            if (deep > level) {
                deep = level;
            }
            for (int i = 2; i < deep; i++) {
                result = result + String.format(Locale.getDefault(), "    %s.%s(%s:%d)\n", ste[i].getClassName(), ste[i].getMethodName(), ste[i].getFileName(), Integer.valueOf(ste[i].getLineNumber()));
            }
            return result;
        }
        return "";
    }

    public static void startCounting(String actionTag) {
        i(LAUNCH_TIME_TAG, "[start] -- %s", actionTag);
        mRecords.put(actionTag, Long.valueOf(System.currentTimeMillis()));
    }

    public static void endCounting(String actionTag) {
        long startTime = mRecords.containsKey(actionTag) ? mRecords.get(actionTag).longValue() : 0L;
        if (startTime != 0) {
            i(LAUNCH_TIME_TAG, "[end] -- %s;%s", actionTag, Long.valueOf(System.currentTimeMillis() - startTime));
            mRecords.remove(actionTag);
        } else {
            i(LAUNCH_TIME_TAG, "[end] -- invalid actionTag: %s", actionTag);
        }
    }
}

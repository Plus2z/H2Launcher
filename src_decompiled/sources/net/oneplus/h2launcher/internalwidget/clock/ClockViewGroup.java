package net.oneplus.h2launcher.internalwidget.clock;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.text.format.DateFormat;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import java.lang.reflect.Field;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Locale;
import net.oneplus.h2launcher.DoubleTapSleepGestureListener;
import net.oneplus.h2launcher.Launcher;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.ShadowHelper;
import net.oneplus.h2launcher.widget.WidgetConstant;

/* loaded from: classes.dex */
public class ClockViewGroup extends ViewGroup {
    private static final String TAG = "ClockViewGroup";
    protected boolean mAttached;
    protected Calendar mCalendar;
    protected final Context mContext;
    protected SimpleDateFormat mFormatter;
    private GestureDetector mGestureDetector;
    protected final Handler mHandler;
    private Intent mIntentClock;
    private final BroadcastReceiver mIntentReceiver;
    private Launcher mLauncher;
    private int mMotionDownX;
    private int mMotionDownY;
    protected int mParentPaddingBottom;
    protected int mParentPaddingLeft;
    protected int mParentPaddingRight;
    protected int mParentPaddingTop;
    protected Rect mRect;
    private Bitmap mShadow;
    private ShadowHelper mShadowHelper;
    protected float mSlop;
    private Runnable mTimeChangedTask;
    private int mTimeChangedTaskPostDelayCount;
    protected final Rect mWorkspacePadding;
    protected static final CharSequence DEFAULT_FORMAT_HOUR_12 = "hh";
    protected static final CharSequence DEFAULT_FORMAT_HOUR_24 = "HH";
    protected static final CharSequence DEFAULT_FORMAT_MINUTE = "mm";
    protected static final CharSequence DEFAULT_FORMAT_TIME_12 = "hh:mm";
    protected static final CharSequence DEFAULT_FORMAT_TIME_24 = "HH:mm";
    protected static final CharSequence DEFAULT_FORMAT_DATE = "E, MMMM d";
    protected static final CharSequence FORMAT_MONTH_DAY_zh = "MMMd";
    protected static final CharSequence FORMAT_WEEK_DAY_zh = ", EEEE";

    static /* synthetic */ int access$408(ClockViewGroup x0) {
        int i = x0.mTimeChangedTaskPostDelayCount;
        x0.mTimeChangedTaskPostDelayCount = i + 1;
        return i;
    }

    public ClockViewGroup(Context context) {
        this(context, null);
    }

    public ClockViewGroup(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public ClockViewGroup(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mHandler = new Handler();
        this.mShadow = null;
        this.mParentPaddingTop = 0;
        this.mParentPaddingBottom = 0;
        this.mParentPaddingLeft = 0;
        this.mParentPaddingRight = 0;
        this.mIntentReceiver = new BroadcastReceiver() { // from class: net.oneplus.h2launcher.internalwidget.clock.ClockViewGroup.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                ClockViewGroup.this.mTimeChangedTask.run();
            }
        };
        this.mTimeChangedTaskPostDelayCount = 0;
        this.mTimeChangedTask = new Runnable() { // from class: net.oneplus.h2launcher.internalwidget.clock.ClockViewGroup.3
            @Override // java.lang.Runnable
            public void run() {
                boolean pageMoving = ClockViewGroup.this.mLauncher.getWorkspace().isPageMoving();
                if (!pageMoving || ClockViewGroup.this.mTimeChangedTaskPostDelayCount >= 20) {
                    ClockViewGroup.this.mTimeChangedTaskPostDelayCount = 0;
                    ClockViewGroup.this.onTimeChanged();
                    ClockViewGroup.this.updateShadow();
                    ClockViewGroup.this.invalidate();
                    return;
                }
                ClockViewGroup.access$408(ClockViewGroup.this);
                ClockViewGroup.this.mHandler.postDelayed(this, 300L);
            }
        };
        this.mContext = context;
        this.mFormatter = new SimpleDateFormat("HH:mm", Locale.getDefault());
        Resources resources = getResources();
        boolean isRtl = Utilities.isRtl(resources);
        this.mLauncher = (Launcher) context;
        this.mWorkspacePadding = this.mLauncher.getDeviceProfile().getWorkspacePadding(isRtl);
        this.mShadowHelper = ShadowHelper.obtain(this.mLauncher.getApplicationContext());
        this.mGestureDetector = new GestureDetector(context, new ClockGestureDetector(this.mLauncher));
        this.mIntentClock = new Intent();
        ComponentName cn = new ComponentName(WidgetConstant.COM_ONEPLUS_DESKCLOCK, "com.oneplus.deskclock.DeskClock");
        this.mIntentClock.setComponent(cn);
        this.mIntentClock.setFlags(270532608);
        this.mIntentClock.setAction("android.intent.action.MAIN");
        this.mIntentClock.addCategory("android.intent.category.LAUNCHER");
        this.mIntentClock.setPackage(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onTimeChanged() {
        this.mCalendar = GregorianCalendar.getInstance();
        updateContentDescription(this.mCalendar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateShadow() {
        post(new Runnable() { // from class: net.oneplus.h2launcher.internalwidget.clock.ClockViewGroup.1
            @Override // java.lang.Runnable
            public void run() {
                ClockViewGroup.this.mShadow = ClockViewGroup.this.mShadowHelper.createShadow(ClockViewGroup.this, 0);
                if (ClockViewGroup.this.mShadow != null) {
                    ClockViewGroup.this.setBackground(new BitmapDrawable(ClockViewGroup.this.getContext().getResources(), ClockViewGroup.this.mShadow));
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateShadowImmediately() {
        this.mShadow = this.mShadowHelper.createShadow(this, 0);
        if (this.mShadow != null) {
            setBackground(new BitmapDrawable(getContext().getResources(), this.mShadow));
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int visibility) {
        super.onWindowVisibilityChanged(visibility);
        Logger.d(TAG, "onWindowVisibilityChanged:" + visibility);
        if (visibility == 0) {
            if (!this.mAttached) {
                this.mAttached = true;
                IntentFilter filter = new IntentFilter();
                filter.addAction("android.intent.action.TIME_TICK");
                filter.addAction("android.intent.action.TIME_SET");
                filter.addAction("android.intent.action.TIMEZONE_CHANGED");
                getContext().registerReceiver(this.mIntentReceiver, filter, null, this.mHandler);
            }
            onTimeChanged();
            updateShadow();
            return;
        }
        if (visibility == 8 && this.mAttached) {
            getContext().unregisterReceiver(this.mIntentReceiver);
            this.mAttached = false;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (ClockWidget.getInstance() != null) {
            ClockWidget.getInstance().setClockWidgetRoot((ViewGroup) getParent());
        } else {
            Logger.d(TAG, "ClockWidget instance is null in onAttachedToWindow.");
        }
        if (getParent() != null) {
            this.mParentPaddingTop = ((ViewGroup) getParent()).getPaddingTop();
            this.mParentPaddingBottom = ((ViewGroup) getParent()).getPaddingBottom();
            this.mParentPaddingLeft = ((ViewGroup) getParent()).getPaddingLeft();
            this.mParentPaddingRight = ((ViewGroup) getParent()).getPaddingRight();
        }
        this.mSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mHandler.removeCallbacks(this.mTimeChangedTask);
    }

    private void updateContentDescription(Calendar cal) {
        if (DateFormat.is24HourFormat(this.mContext)) {
            setContentDescription(DateFormat.format(DEFAULT_FORMAT_TIME_24, this.mCalendar));
        } else {
            setContentDescription(DateFormat.format(DEFAULT_FORMAT_TIME_12, this.mCalendar));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
    }

    @Override // android.view.View
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        updateShadow();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        super.onTouchEvent(event);
        switch (event.getAction()) {
            case 0:
                this.mMotionDownX = (int) event.getX();
                this.mMotionDownY = (int) event.getY();
                break;
        }
        this.mGestureDetector.onTouchEvent(event);
        return true;
    }

    /* loaded from: classes.dex */
    class ClockGestureDetector extends DoubleTapSleepGestureListener {
        public ClockGestureDetector(Launcher launcher) {
            super(launcher);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent event) {
            if (!ClockViewGroup.pointInRect(ClockViewGroup.this.mRect, event.getX(), event.getY(), ClockViewGroup.this.mSlop) || Math.abs(event.getX() - ClockViewGroup.this.mMotionDownX) >= ClockViewGroup.this.mSlop || Math.abs(event.getY() - ClockViewGroup.this.mMotionDownY) >= ClockViewGroup.this.mSlop) {
                return false;
            }
            ClockViewGroup.this.startClockActivity();
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent event) {
            ClockViewGroup.this.mLauncher.getWorkspace().performHapticFeedback(0, 1);
            ClockViewGroup.this.mLauncher.showOverviewMode(true);
        }
    }

    public static boolean pointInRect(Rect r, float localX, float localY, float slop) {
        if (r != null) {
            Logger.d(TAG, "pointInRect left:" + r.left + ", top:" + r.top + ", right:" + r.right + ", bottom:" + r.bottom);
            return localX >= ((float) r.left) - slop && localY >= ((float) r.top) - slop && localX < ((float) r.right) + slop && localY < ((float) r.bottom) + slop;
        }
        Logger.d(TAG, "pointInRect is null");
        return false;
    }

    protected void startClockActivity() {
        this.mLauncher.startActivitySafely(this, this.mIntentClock, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getStatusBarHeight(Context context) {
        try {
            Class<?> c = Class.forName("com.android.internal.R$dimen");
            Object obj = c.newInstance();
            Field field = c.getField("status_bar_height");
            int x = Integer.parseInt(field.get(obj).toString());
            int height = context.getResources().getDimensionPixelSize(x);
            return height;
        } catch (Exception e1) {
            e1.printStackTrace();
            return 0;
        }
    }
}

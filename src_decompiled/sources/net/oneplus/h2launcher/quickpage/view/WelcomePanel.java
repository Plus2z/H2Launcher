package net.oneplus.h2launcher.quickpage.view;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import net.oneplus.h2launcher.Launcher;
import net.oneplus.h2launcher.LauncherAppState;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.WeatherProvider;
import net.oneplus.h2launcher.config.PreferencesHelper;
import net.oneplus.h2launcher.quickpage.QuickPageBaseActivity;
import net.oneplus.h2launcher.quickpage.QuickPageDialogFragment;
import net.oneplus.h2launcher.util.AnalyticHelper;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class WelcomePanel extends RelativeLayout implements WeatherProvider.IWeatherCallback {
    private static final String TAG = WelcomePanel.class.getSimpleName();
    private static final int loadingDurationMax = 30000;
    private static final int loadingDurationMin = 800;
    private Runnable mClearLoadingRunnable;
    private ConnectivityManager mConnectivityManager;
    private Context mContext;
    private boolean mHasWeatherData;
    private boolean mIsLoading;
    private Handler mLoadingHandler;
    private BroadcastReceiver mNetworkReceiver;
    private ViewGroup mWeatherContainer;
    private ImageView mWeatherIcon;
    private ViewGroup mWeatherInfoView;
    private TextView mWeatherLocation;
    private TextView mWeatherStat;
    private TextView mWeatherTemp;
    private EllipsizingTextView mWelcomeTitle;

    public WelcomePanel(Context context) {
        super(context);
    }

    public WelcomePanel(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public WelcomePanel(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mContext = getContext().getApplicationContext();
        this.mHasWeatherData = false;
        this.mWeatherContainer = (ViewGroup) findViewById(R.id.weather_container);
        this.mWeatherIcon = (ImageView) this.mWeatherContainer.findViewById(R.id.weather_icon);
        this.mWelcomeTitle = (EllipsizingTextView) this.mWeatherContainer.findViewById(R.id.welcome_title);
        this.mWeatherTemp = (TextView) this.mWeatherContainer.findViewById(R.id.weather_temperature);
        this.mWeatherStat = (TextView) this.mWeatherContainer.findViewById(R.id.weather_status);
        this.mWeatherLocation = (TextView) this.mWeatherContainer.findViewById(R.id.weather_location);
        this.mWeatherInfoView = (ViewGroup) this.mWeatherContainer.findViewById(R.id.weather_info);
        this.mConnectivityManager = (ConnectivityManager) this.mContext.getSystemService("connectivity");
        this.mNetworkReceiver = new BroadcastReceiver() { // from class: net.oneplus.h2launcher.quickpage.view.WelcomePanel.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                String action = intent.getAction();
                if (action.equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                    boolean isNetworkConnected = WelcomePanel.this.isNetworkConnected();
                    Logger.d(WelcomePanel.TAG, "Network has been turned " + (isNetworkConnected ? "on" : "off"));
                    if (isNetworkConnected) {
                        if (!WelcomePanel.this.hasWeatherLoaded()) {
                            WelcomePanel.this.getCurrentWeather();
                            return;
                        }
                        return;
                    }
                    WelcomePanel.this.animateLoading(false);
                }
            }
        };
        this.mWelcomeTitle.setText(PreferencesHelper.getWelcomeTitle(this.mContext));
        addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: net.oneplus.h2launcher.quickpage.view.WelcomePanel.2
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View v) {
                WelcomePanel.this.renewLoadingIfNeed();
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View v) {
            }
        });
        this.mLoadingHandler = new Handler(Looper.getMainLooper());
        this.mClearLoadingRunnable = new Runnable() { // from class: net.oneplus.h2launcher.quickpage.view.WelcomePanel.3
            @Override // java.lang.Runnable
            public void run() {
                if (WelcomePanel.this.mWeatherIcon.getAnimation() != null) {
                    WelcomePanel.this.mWeatherIcon.clearAnimation();
                    WelcomePanel.this.mWeatherIcon.setImageResource(R.drawable.ic_error);
                    WelcomePanel.this.mWeatherStat.setText(R.string.no_data);
                }
            }
        };
    }

    public void configurePanel(final QuickPageBaseActivity parent, final boolean weatherEnabled) {
        if (weatherEnabled) {
            toggleWeatherUpdate(true);
        }
        getWeatherContainer().setOnLongClickListener(new View.OnLongClickListener() { // from class: net.oneplus.h2launcher.quickpage.view.WelcomePanel.4
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View v) {
                parent.showDialog(QuickPageDialogFragment.DIALOG_SETTING);
                v.performHapticFeedback(0);
                return true;
            }
        });
        getWeatherContainer().setOnClickListener(new View.OnClickListener() { // from class: net.oneplus.h2launcher.quickpage.view.WelcomePanel.5
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (weatherEnabled && WelcomePanel.this.launchWeatherAp(parent)) {
                    AnalyticHelper.get().putAnalytics(AnalyticHelper.Tag.MDM_SHELF_TAG, AnalyticHelper.Label.MDM_SHELF_WEATHER_ENTRY, "1");
                }
            }
        });
        setOnLongClickListener(new View.OnLongClickListener() { // from class: net.oneplus.h2launcher.quickpage.view.WelcomePanel.6
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View v) {
                parent.showDialog(QuickPageDialogFragment.DIALOG_SETTING);
                v.performHapticFeedback(0);
                return true;
            }
        });
    }

    public void toggleWeatherUpdate(boolean enabled) {
        Launcher launcher = LauncherAppState.getInstance().getLauncher();
        if (launcher == null) {
            Logger.w(TAG, "cannot get Launcher instance, is it destroyed?");
            return;
        }
        if (enabled) {
            this.mWeatherInfoView.setVisibility(0);
            animateLoading(isNetworkConnected());
            launcher.getWeatherProvider().subscribeCallback(this);
            this.mContext.registerReceiver(this.mNetworkReceiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            return;
        }
        this.mWeatherInfoView.setVisibility(8);
        launcher.getWeatherProvider().unsubscribeCallback(this);
        try {
            this.mContext.unregisterReceiver(this.mNetworkReceiver);
        } catch (IllegalArgumentException e) {
            Logger.e(TAG, "the network receiver had not yet been registered.");
        }
    }

    public void updateTitleTextSize() {
        this.mWelcomeTitle.updateTextSize();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getCurrentWeather() {
        if (isWeatherEnabled()) {
            animateLoading(isNetworkConnected());
            Launcher launcher = LauncherAppState.getInstance().getLauncher();
            if (launcher != null) {
                launcher.getWeatherProvider().getCurrentWeatherInformation(this);
            }
        }
    }

    public boolean launchWeatherAp(Activity activity) {
        if (!isWeatherEnabled()) {
            return false;
        }
        Intent intent = this.mContext.getPackageManager().getLaunchIntentForPackage("net.oneplus.weather");
        if (intent == null) {
            ComponentName weatherComponentName = new ComponentName("net.oneplus.weather", WeatherProvider.WEATHER_LAUNCH_ACTIVITY);
            intent = new Intent();
            intent.setComponent(weatherComponentName);
        }
        Utilities.startActivityForResultSafely(activity, intent, 0);
        return true;
    }

    public TextView getWelcomeTitleView() {
        return this.mWelcomeTitle;
    }

    public ViewGroup getWeatherContainer() {
        return this.mWeatherContainer;
    }

    private boolean isWeatherEnabled() {
        Context context = this.mContext.getApplicationContext();
        boolean isWeatherInstalled = Utilities.isPackageInstalled(context, "net.oneplus.weather");
        return isWeatherInstalled && PreferencesHelper.isWeatherEnabled(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isNetworkConnected() {
        NetworkInfo ni = this.mConnectivityManager.getActiveNetworkInfo();
        if (ni != null) {
            return ni.isConnected();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasWeatherLoaded() {
        return this.mHasWeatherData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void animateLoading(boolean isNetworkConnected) {
        if (!isNetworkConnected) {
            if (!hasWeatherLoaded()) {
                if (this.mWeatherIcon.getAnimation() != null) {
                    this.mWeatherIcon.clearAnimation();
                }
                this.mWeatherIcon.setImageResource(R.drawable.ic_signal_wifi_off);
                this.mWeatherStat.setText(R.string.no_network);
                this.mWeatherLocation.setText("");
                this.mWeatherTemp.setText("");
                return;
            }
            return;
        }
        RotateAnimation rotate = new RotateAnimation(0.0f, 360.0f, 1, 0.5f, 1, 0.5f);
        rotate.setDuration(this.mContext.getResources().getInteger(android.R.integer.config_longAnimTime) * 2);
        rotate.setRepeatCount(-1);
        rotate.setInterpolator(new LinearInterpolator());
        rotate.setAnimationListener(new Animation.AnimationListener() { // from class: net.oneplus.h2launcher.quickpage.view.WelcomePanel.7
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                WelcomePanel.this.mIsLoading = true;
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                WelcomePanel.this.mIsLoading = false;
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }
        });
        if (this.mWeatherIcon.getAnimation() != null) {
            this.mWeatherIcon.clearAnimation();
        } else {
            this.mLoadingHandler.postDelayed(this.mClearLoadingRunnable, 30000L);
        }
        this.mWeatherIcon.setImageResource(R.drawable.ic_autorenew);
        this.mWeatherStat.setText(R.string.state_loading);
        this.mWeatherLocation.setText("");
        this.mWeatherTemp.setText("");
        this.mWeatherIcon.startAnimation(rotate);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void renewLoadingIfNeed() {
        if (this.mWeatherIcon.getVisibility() == 0 && this.mIsLoading) {
            getCurrentWeather();
        }
    }

    @Override // net.oneplus.h2launcher.WeatherProvider.IWeatherCallback
    public void onWeatherUpdated(@NonNull final WeatherProvider.WeatherData data) {
        this.mLoadingHandler.postDelayed(new Runnable() { // from class: net.oneplus.h2launcher.quickpage.view.WelcomePanel.8
            @Override // java.lang.Runnable
            public void run() {
                WelcomePanel.this.mWeatherIcon.clearAnimation();
                WelcomePanel.this.mWeatherIcon.setImageResource(WeatherProvider.getWeatherIconResourceId(data.weatherCode));
                WelcomePanel.this.mWeatherStat.setText(data.weatherName + ",");
                WelcomePanel.this.mWeatherTemp.setText(data.temperature + data.temperatureUnit + ",");
                WelcomePanel.this.mWeatherLocation.setText(data.cityName);
                WelcomePanel.this.mHasWeatherData = true;
            }
        }, 800L);
    }
}

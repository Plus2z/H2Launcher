package net.oneplus.h2launcher;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.app.SearchManager;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.LauncherApps;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Process;
import android.os.StrictMode;
import android.os.SystemClock;
import android.os.UserHandle;
import android.preference.PreferenceManager;
import android.provider.ContactsContract;
import android.provider.Settings;
import android.support.annotation.NonNull;
import android.support.v4.content.LocalBroadcastManager;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.text.Selection;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.TextKeyListener;
import android.util.Log;
import android.util.Pair;
import android.view.Display;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.OvershootInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.Advanceable;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ListPopupWindow;
import android.widget.TextView;
import android.widget.Toast;
import com.oneplus.lib.app.OPAlertDialog;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import net.oneplus.h2launcher.CellLayout;
import net.oneplus.h2launcher.DoubleTapTouchListener;
import net.oneplus.h2launcher.DragLayer;
import net.oneplus.h2launcher.DropTarget;
import net.oneplus.h2launcher.LauncherModel;
import net.oneplus.h2launcher.LauncherSettings;
import net.oneplus.h2launcher.PagedView;
import net.oneplus.h2launcher.SearchDropTargetBar;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.Workspace;
import net.oneplus.h2launcher.allapps.AllAppsContainerView;
import net.oneplus.h2launcher.compat.AppWidgetManagerCompat;
import net.oneplus.h2launcher.compat.LauncherActivityInfoCompat;
import net.oneplus.h2launcher.compat.LauncherAppsCompat;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.compat.UserManagerCompat;
import net.oneplus.h2launcher.config.CustomInfoHelper;
import net.oneplus.h2launcher.config.PreferencesHelper;
import net.oneplus.h2launcher.crop.UCrop;
import net.oneplus.h2launcher.crop.view.CropImageView;
import net.oneplus.h2launcher.customizations.BaseViewPager;
import net.oneplus.h2launcher.customizations.CustomizationsContainerView;
import net.oneplus.h2launcher.customizations.IconCustomizationCard;
import net.oneplus.h2launcher.customizations.WallpaperCard;
import net.oneplus.h2launcher.customizations.WallpaperPager;
import net.oneplus.h2launcher.customizations.WallpaperPreview;
import net.oneplus.h2launcher.customizations.WallpapersContainerView;
import net.oneplus.h2launcher.dynamicicon.DynamicIconManager;
import net.oneplus.h2launcher.dynamicicon.DynamicIconUtil;
import net.oneplus.h2launcher.dynamicicon.IDynamicIcon;
import net.oneplus.h2launcher.dynamicicon.IDynamicShortcut;
import net.oneplus.h2launcher.dynamicui.ExtractedColors;
import net.oneplus.h2launcher.globalsearch.GlobalSearchController;
import net.oneplus.h2launcher.iconrearrangement.IconRearrangementContainerView;
import net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper;
import net.oneplus.h2launcher.inputmethod.T9.HanziToPinyin;
import net.oneplus.h2launcher.internalwidget.clock.ClockWidget;
import net.oneplus.h2launcher.migrate.MigrationManager;
import net.oneplus.h2launcher.model.WidgetsModel;
import net.oneplus.h2launcher.oos.StyleConstant;
import net.oneplus.h2launcher.oos.StyleManager;
import net.oneplus.h2launcher.quickpage.QuickPageBaseActivity;
import net.oneplus.h2launcher.util.AnalyticHelper;
import net.oneplus.h2launcher.util.ComponentKey;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.LongArrayMap;
import net.oneplus.h2launcher.util.PendingRequestArgs;
import net.oneplus.h2launcher.util.PermissionUtils;
import net.oneplus.h2launcher.util.SerializableSparseIntArray;
import net.oneplus.h2launcher.util.TaskWorker;
import net.oneplus.h2launcher.wallpaper.H2BlurWallpaperEventHandler;
import net.oneplus.h2launcher.wallpaper.SetupWallpaperService;
import net.oneplus.h2launcher.widget.PendingAddWidgetInfo;
import net.oneplus.h2launcher.widget.WidgetHostViewLoader;
import net.oneplus.h2launcher.widget.WidgetsContainerView;

/* loaded from: classes.dex */
public class Launcher extends QuickPageBaseActivity implements View.OnClickListener, View.OnLongClickListener, LauncherModel.Callbacks, View.OnTouchListener, PagedView.PageSwitchListener, PagedView.PageReorderListener, LauncherProviderChangeListener {
    public static final String ACTION_BLUR_WALLPAPER_WALLPAPER_CHANGED = "net.oneplus.h2launcher.action.BLUR_WALLPAPER_WALLPAPER_CHANGED";
    private static final int ACTION_CLEAR = 2;
    public static final String ACTION_FIRST_BLUR_WALLPAPER_FRAME_DRAWN = "net.oneplus.h2launcher.action.FIRST_FRAME_DRAWN";
    static final String ACTION_FIRST_LOAD_COMPLETE = "net.oneplus.h2launcher.action.FIRST_LOAD_COMPLETE";
    protected static final String ACTION_KEYGUARD_WALLPAPER_CHANGED = "android.intent.action.KEYGUARD_WALLPAPER_CHANGED";
    private static final int ACTION_NONE = 0;
    private static final int ACTION_SORT = 1;
    protected static final String ACTION_WALLPAPER_CHANGED = "android.intent.action.WALLPAPER_CHANGED";
    private static final int ACTIVITY_START_DELAY = 1000;
    public static final int APPWIDGET_HOST_ID = 1024;
    private static final float BOUNCE_ANIMATION_TENSION = 1.3f;
    private static final int CALL_PHONE_PERMISSION_REQUEST = 201;
    static final boolean DEBUG_DUMP_LOG = false;
    static final boolean DEBUG_RESUME_TIME = false;
    static final boolean DEBUG_STRICT_MODE = false;
    static final boolean DEBUG_WIDGETS = true;
    private static final float DISABLE_ALPHA = 0.3f;
    private static final boolean DISABLE_SYNCHRONOUS_BINDING_CURRENT_PAGE = false;
    static final String DUMP_STATE_PROPERTY = "launcher_dump_state";
    static final boolean ENABLE_DEBUG_INTENTS = false;
    public static final int EXIT_SPRINGLOADED_MODE_SHORT_TIMEOUT = 300;
    static final String FIRST_LOAD_COMPLETE = "launcher.first_load_complete";
    static final String FIRST_RUN_ACTIVITY_DISPLAYED = "launcher.first_run_activity_displayed";
    public static final String INTENT_EXTRA_APP_PACKAGE = "app_package";
    public static final String INTENT_EXTRA_ICON_PACK_PACKAGE = "icon_pack_package";
    static final String INTENT_EXTRA_IGNORE_LAUNCH_ANIMATION = "net.oneplus.h2launcher.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION";
    public static final String INTENT_EXTRA_PREVIEW_ONLY = "preview";
    public static final String INTENT_ICON_PACK_CHANGED = "icon_pack_changed";
    static final String INTRO_SCREEN_DISMISSED = "launcher.intro_screen_dismissed";
    static final boolean LOGD = false;
    private static final int MAX_SHOW_EDIT_ICON_PACKS_LENGTH = 3;
    private static final int ON_ACTIVITY_RESULT_ANIMATION_DELAY = 500;
    public static final String OVERVIEW_ADD_SCREEN = "overview_add_screen";
    public static final boolean OVERVIEW_ADD_SCREEN_DEFAULT = true;
    public static final int PICK_WALLPAPER_THIRD_PARTY_ACTIVITY = 26;
    static final boolean PROFILE_STARTUP = false;
    private static final String QSB_WIDGET_ID = "qsb_widget_id";
    private static final String QSB_WIDGET_PROVIDER = "qsb_widget_provider";
    private static final int READ_CONTACTS_PERMISSIONS_REQUEST = 202;
    private static final int REQUEST_BIND_APPWIDGET = 11;
    private static final int REQUEST_CREATE_APPWIDGET = 5;
    private static final int REQUEST_CREATE_SHORTCUT = 1;
    public static final int REQUEST_CROP_LOCKSCREEN_WALLPAPER = 16;
    public static final int REQUEST_CROP_WALLPAPER = 15;
    private static final int REQUEST_PERMISSION_CALL_PHONE = 13;
    private static final int REQUEST_PICK_APPWIDGET = 9;
    private static final int REQUEST_PICK_CUSTOM_APP_ICON = 14;
    public static final int REQUEST_PICK_LOCKSCREEN_WALLPAPER = 25;
    public static final int REQUEST_PICK_WALLPAPER = 10;
    private static final int REQUEST_RECONFIGURE_APPWIDGET = 12;
    private static final String RUNTIME_STATE = "launcher.state";
    private static final String RUNTIME_STATE_CURRENT_SCREEN = "launcher.current_screen";
    private static final String RUNTIME_STATE_PENDING_ADD_CELL_X = "launcher.add_cell_x";
    private static final String RUNTIME_STATE_PENDING_ADD_CELL_Y = "launcher.add_cell_y";
    private static final String RUNTIME_STATE_PENDING_ADD_CONTAINER = "launcher.add_container";
    private static final String RUNTIME_STATE_PENDING_ADD_SCREEN = "launcher.add_screen";
    private static final String RUNTIME_STATE_PENDING_ADD_SPAN_X = "launcher.add_span_x";
    private static final String RUNTIME_STATE_PENDING_ADD_SPAN_Y = "launcher.add_span_y";
    private static final String RUNTIME_STATE_PENDING_ADD_WIDGET_ID = "launcher.add_widget_id";
    private static final String RUNTIME_STATE_PENDING_ADD_WIDGET_INFO = "launcher.add_widget_info";
    private static final String RUNTIME_STATE_VIEW_IDS = "launcher.view_ids";
    static final int SCREEN_COUNT = 5;
    public static final String SHOW_WEIGHT_WATCHER = "debug.show_mem";
    public static final boolean SHOW_WEIGHT_WATCHER_DEFAULT = false;
    static final String TAG = "Launcher";
    public static final String USER_HAS_MIGRATED = "launcher.user_migrated_from_old_data";
    private static final int WORKSPACE_BACKGROUND_BLACK = 2;
    private static final int WORKSPACE_BACKGROUND_GRADIENT = 0;
    private static final int WORKSPACE_BACKGROUND_TRANSPARENT = 1;
    private static PendingAddArguments sPendingAddItem;
    private View mAllAppsButton;
    AllAppsViewController mAllAppsViewController;
    private String mAppEditComponent;
    private ComponentName mAppEditComponentName;
    private Dialog mAppEditDialog;
    private boolean mAppEditHasReset;
    private ImageView mAppEditIcon;
    private String mAppEditResourceName;
    private String mAppEditResourcePackage;
    private String mAppEditResourceShowListPackage;
    private AppWidgetManagerCompat mAppWidgetManager;
    private AsyncTask mApplyIconPackTask;
    AllAppsContainerView mAppsView;
    private AssetCache mAssetCache;
    private long mAutoAdvanceSentTime;
    private View mClearButton;
    private LauncherClings mClings;
    private CellLayout mCurrentLayout;
    CustomizationsContainerView mCustomizationsView;
    ViewStub mCustomizationsViewStub;
    private Intent mData;
    private DeviceProfile mDeviceProfile;
    private boolean mDoubleTapEnabled;
    private DragController mDragController;
    DragLayer mDragLayer;
    private ExtractedColors mExtractedColors;
    FocusIndicatorView mFocusHandler;
    private Bitmap mFolderIconBitmap;
    private Canvas mFolderIconCanvas;
    ImageView mFolderIconImageView;
    FoldersTransitionController mFoldersController;
    FoldersContainerView mFoldersView;
    private SharedPreferences.OnSharedPreferenceChangeListener mGesturePrefChangeListener;
    private SharedPreferences mGestureSharedPrefs;
    private GlobalSearchController mGlobalSearchController;
    ViewStub mGlobalSearchViewStub;
    private DeviceProfile mGrid;
    private View.OnTouchListener mHapticFeedbackTouchListener;
    Hotseat mHotseat;
    HotseatController mHotseatController;
    IconRearrangementHelper mIconRearrangementHelper;
    IconRearrangementContainerView mIconRearrangementView;
    private LayoutInflater mInflater;
    private boolean mIsLeavingForSelectingIconPack;
    private boolean mIsSafeModeEnabled;
    private LauncherCallbacks mLauncherCallbacks;
    private View mLauncherView;
    private View mLeftUndoButton;
    private LauncherModel mModel;
    private boolean mOnResumeNeedsLoad;
    private ViewGroup mOverviewPanel;
    private View mPageIndicators;
    private LauncherAppWidgetProviderInfo mPendingAddWidgetInfo;
    private PendingRequestArgs mPendingRequestArgs;
    private PreferencesHelper mPreferencesHelper;
    private AppWidgetHostView mQsb;
    private View mQsbOverlay;
    private CellLayout mReorderingLayout;
    private int mRequestCode;
    private boolean mRestoring;
    private int mResultCode;
    private View mRightUndoButton;
    private Bundle mSavedInstanceState;
    private Bundle mSavedState;
    private AsyncTask mScreenshotTask;
    private boolean mSearchBarTransparent;
    private boolean mSearchBarVisible;
    private SearchDropTargetBar mSearchDropTargetBar;
    private AppWidgetProviderInfo mSearchProvider;
    private View mSettingsButton;
    private SharedPreferences mSharedPrefs;
    private boolean mShouldRefreshQsbSearchBarOnLeaveOverviewMode;
    private View mSortButton;
    LauncherStateTransitionAnimation mStateTransitionAnimation;
    private Stats mStats;
    private boolean mSwipeDownEnabled;
    private boolean mSwipeUpEnabled;
    ArrayList<AppInfo> mTmpAppsList;
    private boolean mUndoAction;
    private ViewGroup mUtilsPanel;
    private Pair<View, Intent> mWaitingForPermissionResult;
    private boolean mWaitingForResult;
    private BubbleTextView mWaitingForResume;
    private BroadcastReceiver mWallpaperChangedReceiver;
    private SharedPreferences.OnSharedPreferenceChangeListener mWallpaperPrefChangListener;
    private SharedPreferences mWallpaperPreferences;
    WallpapersContainerView mWallpapersView;
    ViewStub mWallpapersViewStub;
    private WeatherProvider mWeatherProvider;
    private View mWeightWatcher;
    private View mWidgetsButton;
    WidgetsModel mWidgetsModel;
    WidgetsContainerView mWidgetsView;
    private boolean mWillResetWallpaper;
    Workspace mWorkspace;
    Drawable mWorkspaceBackgroundDrawable;
    private static final String APPLY_ICON_PACK_TASK_CALLER = IconPackReceiver.class.getSimpleName();
    private static final AtomicInteger sNextGeneratedId = new AtomicInteger(1);
    private static int NEW_APPS_PAGE_MOVE_DELAY = 500;
    private static int NEW_APPS_ANIMATION_INACTIVE_TIMEOUT_SECONDS = 5;
    static int NEW_APPS_ANIMATION_DELAY = 500;
    private static LongArrayMap<FolderInfo> sFolders = new LongArrayMap<>();
    static final ArrayList<String> sDumpLogs = new ArrayList<>();
    static Date sDateStamp = new Date();
    static DateFormat sDateFormat = DateFormat.getDateTimeInstance(3, 3);
    static long sRunStart = System.currentTimeMillis();
    State mState = State.WORKSPACE;
    private boolean mIconPackNeedChangeToDefault = false;
    private ProgressDialog mSwitchingProgressDialog = null;
    private SerializableSparseIntArray mItemIdToViewId = new SerializableSparseIntArray();
    private final BroadcastReceiver mCloseSystemDialogsReceiver = new CloseSystemDialogsIntentReceiver();
    private final BroadcastReceiver mIconPackReceiver = new IconPackReceiver();
    private final ContentObserver mNavigationObserver = new NavigationBarObserver();
    private ContactsObserver mContactsObserver = new ContactsObserver();
    ItemInfo mPendingAddInfo = new ItemInfo();
    private int mPendingAddWidgetId = -1;
    private int[] mTmpAddItemCellCoordinates = new int[2];
    private boolean[] mUtilsButtonClicked = new boolean[2];
    private int mNextAction = 0;
    private boolean mIsReordering = false;
    private int mLastPageIndex = -1;
    private boolean mAutoAdvanceRunning = false;
    private State mOnResumeState = State.NONE;
    private SpannableStringBuilder mDefaultKeySsb = null;
    boolean mWorkspaceLoading = true;
    private boolean mPaused = true;
    private ArrayList<Runnable> mBindOnResumeCallbacks = new ArrayList<>();
    private ArrayList<Runnable> mOnResumeCallbacks = new ArrayList<>();
    private ArrayList<Runnable> mOnLeaveCustomizationsCallbacks = new ArrayList<>();
    boolean mUserPresent = true;
    private boolean mVisible = false;
    private boolean mHasFocus = false;
    private boolean mAttached = false;
    private final int MSG_ADVANCE = 1;
    private final int MSG_DISMISS_SWITCHLAYOUT_LOADING = 2;
    private final int mAdvanceInterval = 20000;
    private final int mAdvanceStagger = 250;
    private long mAutoAdvanceTimeLeft = -1;
    HashMap<View, AppWidgetProviderInfo> mWidgetsToAdvance = new HashMap<>();
    private final int mRestoreScreenOrientationDelay = 500;
    private final ArrayList<Integer> mSynchronouslyBoundPages = new ArrayList<>();
    private Rect mRectForFolderAnimation = new Rect();
    private boolean mShowPermissionRationale = false;
    private boolean mShowWorkspaceFromNewIntent = false;
    private boolean mShowWorkspaceWithoutSaveWallpaper = false;
    private boolean mIsAllAppsLoaded = false;
    private boolean mIsLoaderTaskFinished = false;
    private boolean mNeedUpdateContactDb = true;
    Runnable mBuildLayersRunnable = new Runnable() { // from class: net.oneplus.h2launcher.Launcher.1
        @Override // java.lang.Runnable
        public void run() {
            if (Launcher.this.mWorkspace != null) {
                Launcher.this.mWorkspace.buildPageHardwareLayers();
            }
        }
    };
    private boolean mRotationEnabled = false;
    private Runnable mUpdateOrientationRunnable = new Runnable() { // from class: net.oneplus.h2launcher.Launcher.2
        @Override // java.lang.Runnable
        public void run() {
            Launcher.this.setOrientation();
        }
    };
    private List<DoubleTapTouchListener.OnDoubleTapSettingsChangeListener> mDoubleTapSettingsChangeListener = new ArrayList();
    private final BroadcastReceiver mReceiver = new BroadcastReceiver() { // from class: net.oneplus.h2launcher.Launcher.23
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("android.intent.action.SCREEN_OFF".equals(action)) {
                Launcher.this.mUserPresent = false;
                Launcher.this.mDragLayer.clearAllResizeFrames();
                Launcher.this.updateAutoAdvanceState();
                if (Launcher.this.mState == State.SEARCH) {
                    Launcher.this.mGlobalSearchController.hideGlobalSearchWithoutAnimation();
                }
                if ((StyleManager.isSimplifiedLayout() || Launcher.this.mAppsView != null) && Launcher.this.mWidgetsView != null && Launcher.this.mPendingAddInfo.container == -1) {
                    Launcher.this.showWorkspace(false);
                }
            } else if ("android.intent.action.USER_PRESENT".equals(action)) {
                Launcher.this.mUserPresent = true;
                Launcher.this.updateAutoAdvanceState();
            }
            if ("android.intent.action.USER_FOREGROUND".equals(action) || "android.intent.action.USER_PRESENT".equals(action)) {
                if ("android.intent.action.USER_FOREGROUND".equals(action)) {
                    WallpaperPreview.Model.getInstance(Launcher.this).setUserForeground(true);
                }
                H2BlurWallpaperEventHandler.getInstance().onUserSwitched(Launcher.this);
                Launcher.this.restoreKeyguardClockStyleForUser();
                return;
            }
            if ("android.intent.action.USER_BACKGROUND".equals(action)) {
                WallpaperPreview.Model.getInstance(Launcher.this).setUserForeground(false);
            }
        }
    };
    final Handler mHandler = new Handler(new Handler.Callback() { // from class: net.oneplus.h2launcher.Launcher.25
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    int i = 0;
                    Logger.d(Launcher.TAG, "handleMessage MSG_ADVANCE + mWidgetsToAdvance = " + Launcher.this.mWidgetsToAdvance.size());
                    for (View key : Launcher.this.mWidgetsToAdvance.keySet()) {
                        final View v = key.findViewById(Launcher.this.mWidgetsToAdvance.get(key).autoAdvanceViewId);
                        final int delay = i * 250;
                        if (v instanceof Advanceable) {
                            Launcher.this.mHandler.postDelayed(new Runnable() { // from class: net.oneplus.h2launcher.Launcher.25.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    Logger.d(Launcher.TAG, "handleMessage MSG_ADVANCE + delay = " + delay + ", v = " + v);
                                    ((Advanceable) v).advance();
                                    Logger.d(Launcher.TAG, "handleMessage MSG_ADVANCE - delay = " + delay + ", v = " + v);
                                }
                            }, delay);
                        }
                        i++;
                    }
                    Launcher.this.sendAdvanceMessage(20000L);
                    return true;
                case 2:
                    Launcher.this.showSwitchingLoadingView(false);
                    return true;
                default:
                    return true;
            }
        }
    });
    private Runnable mBindAllApplicationsRunnable = new Runnable() { // from class: net.oneplus.h2launcher.Launcher.53
        @Override // java.lang.Runnable
        public void run() {
            Launcher.this.bindAllApplications(Launcher.this.mTmpAppsList);
            Launcher.this.mTmpAppsList = null;
        }
    };
    private Runnable mBindPackagesUpdatedRunnable = new Runnable() { // from class: net.oneplus.h2launcher.Launcher.59
        @Override // java.lang.Runnable
        public void run() {
            Launcher.this.bindAllPackages(Launcher.this.mWidgetsModel);
        }
    };

    /* loaded from: classes.dex */
    public interface CustomContentCallbacks {
        boolean isScrollingAllowed();

        void onHide(boolean z);

        void onScrollProgressChanged(float f, float f2);

        void onShow(boolean z);
    }

    /* loaded from: classes.dex */
    public interface LauncherOverlay {
        void onScrollChange(int i, boolean z);

        void onScrollInteractionBegin();

        void onScrollInteractionEnd();

        void onScrollSettled();

        void setOverlayCallbacks(LauncherOverlayCallbacks launcherOverlayCallbacks);
    }

    /* loaded from: classes.dex */
    interface LauncherOverlayCallbacks {
    }

    /* loaded from: classes.dex */
    interface LauncherSearchCallbacks {
        void onSearchOverlayClosed();

        void onSearchOverlayOpened();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum State {
        NONE,
        WORKSPACE,
        APPS,
        APPS_SPRING_LOADED,
        WIDGETS,
        WIDGETS_SPRING_LOADED,
        CUSTOMIZATIONS,
        SHRUNKEN_ALLAPPS,
        WALLPAPER,
        SEARCH,
        ICON_REARRANGEMENT,
        FOLDER
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class PendingAddArguments {
        int appWidgetId;
        int cellX;
        int cellY;
        long container;
        Intent intent;
        int requestCode;
        long screenId;

        private PendingAddArguments() {
        }
    }

    void setOrientation() {
        if (this.mRotationEnabled) {
            unlockScreenOrientation(true);
        } else {
            setRequestedOrientation(5);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.quickpage.QuickPageBaseActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        Logger.d(TAG, "onCreate");
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.preOnCreate();
        }
        super.onCreate(savedInstanceState);
        StyleManager.init(this);
        setTheme(Utilities.isDarkModeTheme(this) ? R.style.MainThemeDark : R.style.MainTheme);
        LauncherAppState.setApplicationContext(getApplicationContext());
        LauncherAppState app = LauncherAppState.getInstance();
        MigrationManager.migrateWallpaperPreference(getApplicationContext());
        this.mWillResetWallpaper = false;
        if (isSwitchingLayout()) {
            StyleManager.getInstance().reloadStyleConfigurationInfo();
            StyleManager.getInstance().reloadStyleResourceInfo();
            app.setInvariantDeviceProfile(new InvariantDeviceProfile(getApplicationContext()));
            showSwitchingLoadingView(true);
            this.mHandler.sendEmptyMessageDelayed(2, 3000L);
            Logger.d(TAG, "Switching layout, reset wallpaper to default");
            PreferencesHelper.setWallpaperSetupCompleted(this, false);
            ComponentName serviceName = new ComponentName(this, (Class<?>) SetupWallpaperService.class);
            JobInfo.Builder builder = JobBuilderWrapper.create(serviceName);
            Bundle bundle = new Bundle();
            bundle.putBoolean(SetupWallpaperService.EXTRA_SWITCHING_LAYOUT, true);
            builder.setTransientExtras(bundle);
            JobScheduler js = (JobScheduler) getSystemService("jobscheduler");
            js.schedule(builder.build());
            this.mWillResetWallpaper = true;
        }
        if (StyleManager.getInstance().showDynamicIcon()) {
            DynamicIconManager.getInstance().init(this);
            DynamicIconUtil.init(this);
        }
        Object[] objArr = new Object[1];
        objArr[0] = Boolean.valueOf(savedInstanceState == null);
        Logger.d(TAG, "savedInstanceState is null? %b", objArr);
        if (savedInstanceState == null) {
            H2BlurWallpaperEventHandler.getInstance().onLauncherCreate(this);
            restoreKeyguardClockStyleForUser();
        }
        this.mDeviceProfile = app.getInvariantDeviceProfile().portraitProfile;
        this.mSharedPrefs = getSharedPreferences(LauncherAppState.getSharedPreferencesKey(), 0);
        if (!Utilities.isValidUser(this)) {
            Logger.d(TAG, "myUserId is not running. Kill myself.");
            Process.killProcess(Process.myPid());
            return;
        }
        this.mGesturePrefChangeListener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: net.oneplus.h2launcher.Launcher.3
            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
            public void onSharedPreferenceChanged(SharedPreferences preferences, String key) {
                char c = 65535;
                switch (key.hashCode()) {
                    case -1278866823:
                        if (key.equals(CustomizationSettingsFragment.WIDGETS_ENABLED_SAVED)) {
                            c = 3;
                            break;
                        }
                        break;
                    case 203769524:
                        if (key.equals(CustomizationSettingsFragment.SHELF_ENABLED_SAVED)) {
                            c = 0;
                            break;
                        }
                        break;
                    case 750132170:
                        if (key.equals(CustomizationSettingsFragment.SWIPE_UP_ENABLED_SAVED)) {
                            c = 1;
                            break;
                        }
                        break;
                    case 927524271:
                        if (key.equals(CustomizationSettingsFragment.DOUBLE_TAP_ENABLED_SAVED)) {
                            c = 4;
                            break;
                        }
                        break;
                    case 1404081233:
                        if (key.equals(CustomizationSettingsFragment.SWIPE_DOWN_ENABLED_SAVED)) {
                            c = 2;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        Launcher.this.refreshCustomContentOnStateChange();
                        return;
                    case 1:
                        Launcher.this.mSwipeUpEnabled = preferences.getBoolean(key, true);
                        return;
                    case 2:
                        Launcher.this.mSwipeDownEnabled = preferences.getBoolean(key, true);
                        return;
                    case 3:
                        if (Launcher.this.mOverviewPanel == null || Launcher.this.mWidgetsButton == null) {
                            Logger.d(Launcher.TAG, "invalid overview panel or widgets button");
                            return;
                        } else {
                            toggleWidgets();
                            return;
                        }
                    case 4:
                        Launcher.this.mDoubleTapEnabled = Launcher.this.doubleTabToLockEnabled(Launcher.this);
                        Launcher.this.callOnDoubleTapSettingsChange();
                        return;
                    default:
                        return;
                }
            }

            private void toggleWidgets() {
                boolean showWidgets = StyleManager.getInstance().showWidgetsButton();
                int index = Launcher.this.mOverviewPanel.indexOfChild(Launcher.this.mWidgetsButton);
                Launcher.this.mOverviewPanel.removeView(Launcher.this.mWidgetsButton);
                Launcher.this.mOverviewPanel.addView(Launcher.this.mWidgetsButton, index);
                Launcher.this.mWidgetsButton.setVisibility(showWidgets ? 0 : 8);
            }
        };
        this.mGestureSharedPrefs = getSharedPreferences(CustomizationSettingsFragment.GESTURE_SETTINGS, 0);
        this.mGestureSharedPrefs.registerOnSharedPreferenceChangeListener(this.mGesturePrefChangeListener);
        this.mSwipeUpEnabled = this.mGestureSharedPrefs.getBoolean(CustomizationSettingsFragment.SWIPE_UP_ENABLED_SAVED, true);
        this.mSwipeDownEnabled = this.mGestureSharedPrefs.getBoolean(CustomizationSettingsFragment.SWIPE_DOWN_ENABLED_SAVED, true);
        this.mDoubleTapEnabled = doubleTabToLockEnabled(this);
        this.mWallpaperPreferences = PreferenceManager.getDefaultSharedPreferences(getApplicationContext());
        this.mWallpaperPrefChangListener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: net.oneplus.h2launcher.Launcher.4
            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
            public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String key) {
                char c = 65535;
                switch (key.hashCode()) {
                    case 1329522890:
                        if (key.equals(PreferencesHelper.WALLPAPER_COLOR)) {
                            c = 0;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        Launcher.this.mWillResetWallpaper = false;
                        return;
                    default:
                        return;
                }
            }
        };
        this.mWallpaperPreferences.registerOnSharedPreferenceChangeListener(this.mWallpaperPrefChangListener);
        this.mIsSafeModeEnabled = getPackageManager().isSafeMode();
        this.mModel = app.setLauncher(this);
        this.mAssetCache = app.getAssetCache();
        this.mDragController = new DragController(this);
        this.mFoldersController = new FoldersTransitionController(this);
        this.mGlobalSearchController = new GlobalSearchController(this, this.mAssetCache);
        DynamicIconManager.getInstance().registerUpdateIconCacheCallback(this.mGlobalSearchController);
        this.mInflater = getLayoutInflater();
        this.mStateTransitionAnimation = new LauncherStateTransitionAnimation(this);
        Context context = getApplicationContext();
        this.mSearchBarVisible = !PreferencesHelper.isSearchBarStyleHidden(context);
        this.mSearchBarTransparent = PreferencesHelper.isSearchBarStyleTransparent(context);
        this.mStats = new Stats(this);
        LauncherAppsCompat launcherApps = LauncherAppsCompat.getInstance(this);
        launcherApps.addOnAppsChangedCallback(this.mStats);
        launcherApps.addOnAppsChangedCallback(this);
        this.mAppWidgetManager = AppWidgetManagerCompat.getInstance(this);
        this.mAppWidgetManager.setBindAppWidgetPermission(getPackageName(), true);
        app.getAppWidgetHost().startListening();
        this.mPaused = false;
        setContentView(StyleManager.getInstance().getResourceId(StyleConstant.LAUNCHER_LAYOUT));
        setupViews();
        this.mDeviceProfile.layout(this);
        this.mExtractedColors = new ExtractedColors();
        this.mPreferencesHelper = new PreferencesHelper(getApplicationContext());
        this.mPreferencesHelper.setPreferenceChangedCallback(new PreferencesHelper.PreferenceChangedCallback() { // from class: net.oneplus.h2launcher.Launcher.5
            @Override // net.oneplus.h2launcher.config.PreferencesHelper.PreferenceChangedCallback
            public String[] getWatchedKeys() {
                return new String[]{PreferencesHelper.QUICK_PAGE, PreferencesHelper.SEARCH_BAR_STYLE};
            }

            @Override // net.oneplus.h2launcher.config.PreferencesHelper.PreferenceChangedCallback
            public void onPreferenceChange(String key) {
                char c = 65535;
                switch (key.hashCode()) {
                    case -1271549635:
                        if (key.equals(PreferencesHelper.QUICK_PAGE)) {
                            c = 0;
                            break;
                        }
                        break;
                    case 359119690:
                        if (key.equals(PreferencesHelper.SEARCH_BAR_STYLE)) {
                            c = 1;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                    default:
                        return;
                    case 1:
                        Context appContext = Launcher.this.getApplicationContext();
                        Launcher.this.mSearchBarVisible = PreferencesHelper.isSearchBarStyleHidden(appContext) ? false : true;
                        Launcher.this.mSearchBarTransparent = PreferencesHelper.isSearchBarStyleTransparent(appContext);
                        Launcher.this.mShouldRefreshQsbSearchBarOnLeaveOverviewMode = true;
                        return;
                }
            }
        });
        this.mPreferencesHelper.startListening();
        registerContentObservers();
        lockAllApps();
        this.mSavedState = savedInstanceState;
        restoreState(this.mSavedState);
        if (StyleManager.getInstance().showInternalClock()) {
            ClockWidget.init(this);
            LauncherAppWidgetProviderInfo info = new LauncherAppWidgetProviderInfo(this, ClockWidget.getInstance());
            info.canReorder = false;
            this.mModel.addClockWidgetProviderInfo(info);
        }
        if (!this.mRestoring) {
            this.mModel.startLoader(this.mWorkspace.getRestorePage());
        }
        this.mDefaultKeySsb = new SpannableStringBuilder();
        Selection.setSelection(this.mDefaultKeySsb, 0);
        IntentFilter filter = new IntentFilter("android.intent.action.CLOSE_SYSTEM_DIALOGS");
        registerReceiver(this.mCloseSystemDialogsReceiver, filter);
        setOrientation();
        IntentFilter filter2 = new IntentFilter(INTENT_ICON_PACK_CHANGED);
        LocalBroadcastManager.getInstance(this).registerReceiver(this.mIconPackReceiver, filter2);
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onCreate(savedInstanceState);
        }
        if (shouldShowIntroScreen()) {
            showIntroScreen();
        } else {
            showFirstRunActivity();
            showFirstRunClings();
        }
    }

    @Override // net.oneplus.h2launcher.LauncherProviderChangeListener
    public void onExtractedColorsChanged() {
        loadExtractedColorsAndColorItems();
    }

    private void loadExtractedColorsAndColorItems() {
        if (Utilities.ATLEAST_NOUGAT && this.mWorkspace.getPageIndicator() != null) {
            this.mExtractedColors.load(this);
            this.mWorkspace.getPageIndicator().updateColor(this.mExtractedColors);
            TaskWorker.get().post(new Runnable() { // from class: net.oneplus.h2launcher.Launcher.6
                @Override // java.lang.Runnable
                public void run() {
                    Launcher.this.mExtractedColors.updateNavBarColorToSettings(Launcher.this.getContentResolver());
                }
            });
            if (!Utilities.isDarkModeThemeByGlobal(this)) {
                activateLightStatusBar(isAllAppsVisible());
            }
        }
    }

    public void activateLightStatusBar(boolean activate) {
        int newSystemUiFlags;
        boolean lightStatusBar = activate;
        int oldSystemUiFlags = getWindow().getDecorView().getSystemUiVisibility();
        if (lightStatusBar) {
            newSystemUiFlags = oldSystemUiFlags | 8192;
        } else {
            newSystemUiFlags = oldSystemUiFlags & (-8193);
        }
        if (newSystemUiFlags != oldSystemUiFlags) {
            Logger.d(TAG, "mState= " + this.mState + ",mOnResumeState= " + this.mOnResumeState);
            Logger.d(TAG, "activateLightStatusBar setSystemUiVisibility newSystemUiFlags= " + newSystemUiFlags);
            getWindow().getDecorView().setSystemUiVisibility(newSystemUiFlags);
        }
    }

    @Override // net.oneplus.h2launcher.LauncherProviderChangeListener
    public void onSettingsChanged(String settings, boolean value) {
        if (Utilities.ALLOW_ROTATION_PREFERENCE_KEY.equals(settings) && !waitUntilResume(this.mUpdateOrientationRunnable, true)) {
            this.mUpdateOrientationRunnable.run();
        }
    }

    @Override // android.app.Activity
    public void onPostCreate(Bundle savedInstanceState) {
        super.onPostCreate(savedInstanceState);
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onPostCreate(savedInstanceState);
        }
    }

    public void setLauncherOverlay(LauncherOverlay overlay) {
        if (overlay != null) {
            overlay.setOverlayCallbacks(new LauncherOverlayCallbacksImpl());
        }
        this.mWorkspace.setLauncherOverlay(overlay);
    }

    public boolean setLauncherCallbacks(LauncherCallbacks callbacks) {
        this.mLauncherCallbacks = callbacks;
        this.mLauncherCallbacks.setLauncherSearchCallback(new LauncherSearchCallbacks() { // from class: net.oneplus.h2launcher.Launcher.7
            private boolean mWorkspaceImportanceStored = false;
            private boolean mHotseatImportanceStored = false;
            private int mWorkspaceImportanceForAccessibility = 0;
            private int mHotseatImportanceForAccessibility = 0;

            @Override // net.oneplus.h2launcher.Launcher.LauncherSearchCallbacks
            public void onSearchOverlayOpened() {
                if (!this.mWorkspaceImportanceStored && !this.mHotseatImportanceStored) {
                    if (Launcher.this.mWorkspace != null) {
                        this.mWorkspaceImportanceForAccessibility = Launcher.this.mWorkspace.getImportantForAccessibility();
                        Launcher.this.mWorkspace.setImportantForAccessibility(4);
                        this.mWorkspaceImportanceStored = true;
                    }
                    if (Launcher.this.mHotseat != null) {
                        this.mHotseatImportanceForAccessibility = Launcher.this.mHotseat.getImportantForAccessibility();
                        Launcher.this.mHotseat.setImportantForAccessibility(4);
                        this.mHotseatImportanceStored = true;
                    }
                }
            }

            @Override // net.oneplus.h2launcher.Launcher.LauncherSearchCallbacks
            public void onSearchOverlayClosed() {
                if (this.mWorkspaceImportanceStored && Launcher.this.mWorkspace != null) {
                    Launcher.this.mWorkspace.setImportantForAccessibility(this.mWorkspaceImportanceForAccessibility);
                }
                if (this.mHotseatImportanceStored && Launcher.this.mHotseat != null) {
                    Launcher.this.mHotseat.setImportantForAccessibility(this.mHotseatImportanceForAccessibility);
                }
                this.mWorkspaceImportanceStored = false;
                this.mHotseatImportanceStored = false;
            }
        });
        return true;
    }

    @Override // net.oneplus.h2launcher.LauncherProviderChangeListener
    public void onLauncherProviderChange() {
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onLauncherProviderChange();
        }
    }

    public void updateOverlayBounds(Rect newBounds) {
        this.mAllAppsViewController.setSearchBarBounds(newBounds);
        this.mWidgetsView.setSearchBarBounds(newBounds);
    }

    protected boolean hasCustomContentToLeft() {
        return this.mGestureSharedPrefs.getBoolean(CustomizationSettingsFragment.SHELF_ENABLED_SAVED, true);
    }

    protected void populateCustomContentContainer() {
        CustomContentCallbacks callback = new CustomContentCallbacks() { // from class: net.oneplus.h2launcher.Launcher.8
            @Override // net.oneplus.h2launcher.Launcher.CustomContentCallbacks
            public void onShow(boolean fromResume) {
                Launcher.this.onQuickPageShow(fromResume);
            }

            @Override // net.oneplus.h2launcher.Launcher.CustomContentCallbacks
            public void onHide(boolean removed) {
                if (!removed) {
                    Launcher.this.onQuickPageHide();
                }
            }

            @Override // net.oneplus.h2launcher.Launcher.CustomContentCallbacks
            public void onScrollProgressChanged(float progress, float translationX) {
                if (progress == 1.0f && Launcher.this.mClings != null && Launcher.this.mClings.shouldShowQuickPageWelcomeCling()) {
                    Launcher.this.mClings.showQuickPageWelcomeCling();
                }
                if (Launcher.this.getOrCreateQsbBar() != null) {
                    if (Launcher.this.mSearchBarTransparent) {
                        if (Launcher.this.mQsbOverlay != null) {
                            Launcher.this.mQsbOverlay.setTranslationX(translationX);
                            Launcher.this.mQsbOverlay.setVisibility(progress == 1.0f ? 8 : 0);
                        }
                    } else {
                        Launcher.this.mQsb.setTranslationX(translationX);
                    }
                    Launcher.this.mQsb.setVisibility(progress != 1.0f ? 0 : 8);
                }
                Launcher.this.setCurrentDisplayProgress(progress);
            }

            @Override // net.oneplus.h2launcher.Launcher.CustomContentCallbacks
            public boolean isScrollingAllowed() {
                return true;
            }
        };
        if (getQuickPageView() == null) {
            createQuickPage();
        }
        addToCustomContentPage(getQuickPageView(), callback, getString(R.string.quick_page));
        invalidateScheme();
    }

    protected void invalidateHasCustomContentToLeft() {
        if (this.mWorkspace != null && !this.mWorkspace.getScreenOrder().isEmpty()) {
            if (!this.mWorkspace.hasCustomContent() && hasCustomContentToLeft()) {
                this.mWorkspace.createCustomContentContainer();
                populateCustomContentContainer();
            } else if (this.mWorkspace.hasCustomContent() && !hasCustomContentToLeft()) {
                this.mWorkspace.removeCustomContentPage();
            }
        }
    }

    protected void refreshCustomContentOnStateChange() {
        invalidateHasCustomContentToLeft();
    }

    public boolean getSwipeUpEnabled() {
        return this.mSwipeUpEnabled;
    }

    public boolean getSwipeDownEnabled() {
        return this.mSwipeDownEnabled;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageBaseActivity
    public Stats getStats() {
        return this.mStats;
    }

    public LayoutInflater getInflater() {
        return this.mInflater;
    }

    public boolean isDraggingEnabled() {
        return !isWorkspaceLoading();
    }

    @TargetApi(17)
    public static int generateViewId() {
        int result;
        int newValue;
        if (Utilities.ATLEAST_JB_MR1) {
            return View.generateViewId();
        }
        do {
            result = sNextGeneratedId.get();
            newValue = result + 1;
            if (newValue > 16777215) {
                newValue = 1;
            }
        } while (!sNextGeneratedId.compareAndSet(result, newValue));
        return result;
    }

    public int getViewIdForItem(ItemInfo info) {
        int itemId = (int) info.id;
        if (this.mItemIdToViewId.indexOfKey(itemId) >= 0) {
            return this.mItemIdToViewId.get(itemId);
        }
        int viewId = generateViewId();
        this.mItemIdToViewId.put(itemId, viewId);
        return viewId;
    }

    private long completeAdd(PendingAddArguments args) {
        long screenId = args.screenId;
        if (args.container == -100) {
            screenId = ensurePendingDropLayoutExists(args.screenId);
        }
        switch (args.requestCode) {
            case 1:
                completeAddShortcut(args.intent, args.container, screenId, args.cellX, args.cellY);
                break;
            case 5:
                completeAddAppWidget(args.appWidgetId, args.container, screenId, null, null);
                break;
            case 12:
                completeRestoreAppWidget(args.appWidgetId);
                break;
        }
        resetAddInfo();
        return screenId;
    }

    private void handleActivityResult(int requestCode, final int resultCode, Intent data) {
        final int appWidgetId;
        setWaitingForResult(false);
        int pendingAddWidgetId = this.mPendingAddWidgetId;
        this.mPendingAddWidgetId = -1;
        Runnable exitSpringLoaded = new Runnable() { // from class: net.oneplus.h2launcher.Launcher.9
            @Override // java.lang.Runnable
            public void run() {
                Launcher.this.exitSpringLoadedDragModeDelayed(resultCode != 0, 300, null);
            }
        };
        if (requestCode == 14 && resultCode == -1) {
            if (this.mAppEditComponent != null && this.mAppEditResourceShowListPackage != null) {
                this.mAppEditResourceName = data.getStringExtra(CustomIconSelectorActivity.RESOURCE_NAME_EXTRA);
                this.mAppEditResourcePackage = this.mAppEditResourceShowListPackage;
                this.mAppEditIcon.setImageDrawable(CustomInfoHelper.getCustomIcon(this, this.mAppEditResourcePackage, this.mAppEditResourceName));
                this.mAppEditHasReset = false;
                return;
            }
            return;
        }
        if (requestCode == 11) {
            int appWidgetId2 = data != null ? data.getIntExtra(LauncherSettings.Favorites.APPWIDGET_ID, -1) : -1;
            if (resultCode == 0) {
                completeTwoStageWidgetDrop(0, appWidgetId2);
                this.mWorkspace.removeExtraEmptyScreenDelayed(true, exitSpringLoaded, 500, false);
                return;
            } else {
                if (resultCode == -1) {
                    addAppWidgetImpl(appWidgetId2, this.mPendingAddInfo, null, this.mPendingAddWidgetInfo, 500);
                    getOrCreateQsbBar();
                    return;
                }
                return;
            }
        }
        if (requestCode == 10 || requestCode == 25) {
            if (!StyleManager.getInstance().isWallpaperScrollable()) {
                if (resultCode == -1 && data != null) {
                    startCropActivity(requestCode, data);
                    return;
                }
                return;
            }
            this.mRequestCode = requestCode;
            this.mResultCode = resultCode;
            this.mData = data;
            return;
        }
        if (requestCode == 15 || requestCode == 16) {
            this.mRequestCode = requestCode;
            this.mResultCode = resultCode;
            this.mData = data;
            return;
        }
        if (requestCode == 26) {
            this.mShowWorkspaceWithoutSaveWallpaper = true;
            showWorkspace(false);
            return;
        }
        boolean isWidgetDrop = requestCode == 9 || requestCode == 5;
        boolean workspaceLocked = isWorkspaceLocked();
        if (isWidgetDrop) {
            int widgetId = data != null ? data.getIntExtra(LauncherSettings.Favorites.APPWIDGET_ID, -1) : -1;
            if (widgetId < 0) {
                appWidgetId = pendingAddWidgetId;
            } else {
                appWidgetId = widgetId;
            }
            if (appWidgetId < 0 || resultCode == 0) {
                Log.e(TAG, "Error: appWidgetId (EXTRA_APPWIDGET_ID) was not returned from the widget configuration activity.");
                completeTwoStageWidgetDrop(0, appWidgetId);
                Runnable onComplete = new Runnable() { // from class: net.oneplus.h2launcher.Launcher.10
                    @Override // java.lang.Runnable
                    public void run() {
                        Launcher.this.exitSpringLoadedDragModeDelayed(false, 0, null);
                    }
                };
                if (workspaceLocked) {
                    this.mWorkspace.postDelayed(onComplete, 500L);
                    return;
                } else {
                    this.mWorkspace.removeExtraEmptyScreenDelayed(true, onComplete, 500, false);
                    return;
                }
            }
            if (!workspaceLocked) {
                if (this.mPendingAddInfo.container == -100) {
                    this.mPendingAddInfo.screenId = ensurePendingDropLayoutExists(this.mPendingAddInfo.screenId);
                }
                final CellLayout dropLayout = this.mWorkspace.getScreenWithId(this.mPendingAddInfo.screenId);
                dropLayout.setDropPending(true);
                this.mWorkspace.removeExtraEmptyScreenDelayed(true, new Runnable() { // from class: net.oneplus.h2launcher.Launcher.11
                    @Override // java.lang.Runnable
                    public void run() {
                        Launcher.this.completeTwoStageWidgetDrop(resultCode, appWidgetId);
                        dropLayout.setDropPending(false);
                    }
                }, 500, false);
                return;
            }
            sPendingAddItem = preparePendingAddArgs(requestCode, data, appWidgetId, this.mPendingAddInfo);
            return;
        }
        if (requestCode == 12) {
            if (resultCode == -1) {
                PendingAddArguments args = preparePendingAddArgs(requestCode, data, pendingAddWidgetId, this.mPendingAddInfo);
                if (workspaceLocked) {
                    sPendingAddItem = args;
                    return;
                } else {
                    completeAdd(args);
                    return;
                }
            }
            return;
        }
        if (requestCode == 1) {
            if (resultCode == -1 && this.mPendingRequestArgs.container != -1) {
                sPendingAddItem = preparePendingAddArgs(requestCode, data, -1, this.mPendingRequestArgs);
                completeAdd(sPendingAddItem);
                this.mWorkspace.removeExtraEmptyScreenDelayed(true, exitSpringLoaded, 500, false);
            } else if (resultCode == 0) {
                this.mWorkspace.removeExtraEmptyScreenDelayed(true, exitSpringLoaded, 500, false);
            }
        }
        if (resultCode == -1 && this.mPendingAddInfo.container != -1) {
            PendingAddArguments args2 = preparePendingAddArgs(requestCode, data, -1, this.mPendingAddInfo);
            if (isWorkspaceLocked()) {
                sPendingAddItem = args2;
            } else {
                completeAdd(args2);
                this.mWorkspace.removeExtraEmptyScreenDelayed(true, exitSpringLoaded, 500, false);
            }
        } else if (resultCode == 0) {
            this.mWorkspace.removeExtraEmptyScreenDelayed(true, exitSpringLoaded, 500, false);
        }
        this.mDragLayer.clearAnimatedView();
    }

    private void startCropActivity(int requestCode, Intent data) {
        UCrop uCrop;
        if (this.mWallpapersView == null) {
            Logger.i(TAG, "invalid wallpapers view, launcher might have been destroyed");
            return;
        }
        boolean isCroppingHomescreen = requestCode == 10;
        int cropRequestCode = isCroppingHomescreen ? 15 : 16;
        File output2 = null;
        try {
            File directory = getFilesDir();
            File output = File.createTempFile("crop_", null, directory);
            if (cropRequestCode == 15) {
                output2 = File.createTempFile("crop_", null, directory);
            }
            Uri source = data.getData();
            WallpaperCard wallpaperCard = this.mWallpapersView.getPager().getWallpaperCard();
            if (cropRequestCode == 16) {
                uCrop = UCrop.of(source, Uri.fromFile(output));
                uCrop.withAspectRatio(CropImageView.PORTRAIT_IMAGE_ASPECT_RATIO, 1.0f);
            } else {
                int orientation = -1;
                if (wallpaperCard != null) {
                    orientation = wallpaperCard.getHomeScreenOrientation();
                }
                if (orientation == -1) {
                    Logger.e(TAG, "failed to find current home screen orientation");
                    return;
                }
                uCrop = UCrop.of(source, Uri.fromFile(output), Uri.fromFile(output2));
                if (orientation == 0) {
                    uCrop.withAspectRatio(CropImageView.PORTRAIT_IMAGE_ASPECT_RATIO, 1.0f);
                } else {
                    uCrop.withAspectRatio(CropImageView.LANDSCAPE_IMAGE_ASPECT_RATIO, 1.0f);
                }
            }
            int screen = isCroppingHomescreen ? 1 : 0;
            Bitmap cover = this.mWallpapersView.getWallpaperPreview().getPreviewCover(screen);
            if (cover == null) {
                Logger.e(TAG, "invalid cover bitmap");
                return;
            }
            UCrop.Options options = new UCrop.Options();
            options.setShowCropGrid(false);
            options.setShowCropCoverColorMask(isCroppingHomescreen);
            options.setCropCoverImage(cover);
            uCrop.withOptions(options);
            uCrop.start(this, cropRequestCode);
        } catch (IOException e) {
            Logger.e(TAG, "failed to create temp crop file(s)");
        }
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageBaseActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        handleActivityResult(requestCode, resultCode, data);
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onActivityResult(requestCode, resultCode, data);
        }
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageBaseActivity, android.app.Activity
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        WallpaperCard wallpaperCard;
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onRequestPermissionsResult(requestCode, permissions, grantResults);
        }
        switch (requestCode) {
            case 13:
                if (this.mPendingRequestArgs != null && this.mPendingRequestArgs.getRequestCode() == 13) {
                    setWaitingForResult(false);
                    View v = null;
                    CellLayout layout = getCellLayout(this.mPendingRequestArgs.container, this.mPendingRequestArgs.screenId);
                    if (layout != null) {
                        v = layout.getChildAt(this.mPendingRequestArgs.cellX, this.mPendingRequestArgs.cellY);
                    }
                    Intent intent = this.mPendingRequestArgs.getPendingIntent();
                    if (grantResults.length > 0 && grantResults[0] == 0) {
                        startActivitySafely(v, intent, null);
                    }
                    this.mPendingRequestArgs = null;
                    return;
                }
                return;
            case 200:
                for (int i = 0; i < permissions.length; i++) {
                    if (permissions[i].equals("android.permission.READ_EXTERNAL_STORAGE") && grantResults[i] == 0) {
                        WallpaperPager wallpaperPager = this.mWallpapersView.getPager();
                        if (wallpaperPager != null && (wallpaperCard = wallpaperPager.getWallpaperCard()) != null) {
                            wallpaperCard.onReadExternalStoragePermissionGranted();
                        }
                    } else if (permissions[i].equals("android.permission.READ_CONTACTS") && grantResults[i] == 0) {
                        ContentResolver resolver = getContentResolver();
                        resolver.registerContentObserver(ContactsContract.Contacts.CONTENT_URI, true, this.mContactsObserver);
                        this.mGlobalSearchController.getContactsDb();
                    }
                }
                return;
            case CALL_PHONE_PERMISSION_REQUEST /* 201 */:
                boolean currentPermissionRationale = PermissionUtils.shouldShowRequestPermissionRationale(this, "android.permission.CALL_PHONE");
                for (int i2 = 0; i2 < permissions.length; i2++) {
                    if (permissions[i2].equals("android.permission.CALL_PHONE")) {
                        if (grantResults[i2] == 0) {
                            if (this.mWaitingForPermissionResult != null) {
                                View view = (View) this.mWaitingForPermissionResult.first;
                                Intent intent2 = (Intent) this.mWaitingForPermissionResult.second;
                                startActivitySafely(view, intent2, view.getTag());
                            }
                        } else if (!this.mShowPermissionRationale && !currentPermissionRationale) {
                            Toast.makeText(this, R.string.denied_permission_reminder, 1).show();
                        }
                    }
                }
                return;
            case 202:
                ContentResolver contentResolver = getContentResolver();
                if (contentResolver == null) {
                    Logger.w(TAG, "onRequestPermissionsResult: resolver is null.");
                    return;
                }
                try {
                    contentResolver.registerContentObserver(ContactsContract.Contacts.CONTENT_URI, true, this.mContactsObserver);
                    this.mGlobalSearchController.getContactsDb();
                    return;
                } catch (Exception ex) {
                    Logger.w(TAG, "onRequestPermissionsResult: ex: " + ex.getMessage());
                    ex.printStackTrace();
                    return;
                }
            default:
                return;
        }
    }

    private PendingAddArguments preparePendingAddArgs(int requestCode, Intent data, int appWidgetId, ItemInfo info) {
        PendingAddArguments args = new PendingAddArguments();
        args.requestCode = requestCode;
        args.intent = data;
        args.container = info.container;
        args.screenId = info.screenId;
        args.cellX = info.cellX;
        args.cellY = info.cellY;
        args.appWidgetId = appWidgetId;
        return args;
    }

    private long ensurePendingDropLayoutExists(long screenId) {
        CellLayout dropLayout = this.mWorkspace.getScreenWithId(screenId);
        if (dropLayout == null) {
            this.mWorkspace.addExtraEmptyScreen();
            return this.mWorkspace.commitExtraEmptyScreen();
        }
        return screenId;
    }

    void completeTwoStageWidgetDrop(int resultCode, final int appWidgetId) {
        CellLayout cellLayout = this.mWorkspace.getScreenWithId(this.mPendingAddInfo.screenId);
        LauncherAppWidgetHost widgetHost = LauncherAppState.getInstance().getAppWidgetHost();
        Runnable onCompleteRunnable = null;
        int animationType = 0;
        AppWidgetHostView boundWidget = null;
        if (resultCode == -1) {
            animationType = 3;
            final AppWidgetHostView layout = widgetHost.createView((Context) this, appWidgetId, this.mPendingAddWidgetInfo);
            boundWidget = layout;
            onCompleteRunnable = new Runnable() { // from class: net.oneplus.h2launcher.Launcher.12
                @Override // java.lang.Runnable
                public void run() {
                    Launcher.this.completeAddAppWidget(appWidgetId, Launcher.this.mPendingAddInfo.container, Launcher.this.mPendingAddInfo.screenId, layout, null);
                    Launcher.this.exitSpringLoadedDragModeDelayed(true, 300, null);
                }
            };
        } else if (resultCode == 0) {
            widgetHost.deleteAppWidgetId(appWidgetId);
            animationType = 4;
        }
        if (this.mDragLayer.getAnimatedView() != null) {
            if (cellLayout != null) {
                this.mWorkspace.animateWidgetDrop(this.mPendingAddInfo, cellLayout, (DragView) this.mDragLayer.getAnimatedView(), onCompleteRunnable, animationType, boundWidget, true);
                return;
            }
            Logger.w(TAG, "[completeTwoStageWidgetDrop] CellLayout is null. ScreenId = " + this.mPendingAddInfo.screenId + ", resultCode = " + resultCode);
            this.mDragLayer.clearAnimatedView();
            exitSpringLoadedDragModeDelayed(true, 300, null);
            return;
        }
        if (onCompleteRunnable != null) {
            onCompleteRunnable.run();
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        Logger.d(TAG, "onStop# waiting for result: " + this.mWaitingForResult);
        super.onStop();
        FirstFrameAnimatorHelper.setIsVisible(false);
        if (this.mWorkspace.getCustomContentCallbacks() != null) {
            this.mWorkspace.getCustomContentCallbacks().onHide(false);
        }
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onStop();
        }
        if (Utilities.isNOrAbove()) {
            LauncherAppState app = LauncherAppState.getInstance();
            app.getAppWidgetHost().stopListening();
        }
        if (isCustomizationsViewVisible() && this.mCustomizationsView != null) {
            Logger.d(TAG, "onStop#customizationsView saveCustomizations");
            this.mCustomizationsView.saveCustomizations();
        }
        if (!this.mWaitingForResult && isWallpapersViewVisible() && this.mWallpapersView != null) {
            this.mWallpapersView.saveWallpaperCustomizations();
            Runnable runnable = new Runnable() { // from class: net.oneplus.h2launcher.Launcher.13
                @Override // java.lang.Runnable
                public void run() {
                    Logger.d(Launcher.TAG, "onStop#wallpaperView saveCustomizations");
                    Launcher.this.mWallpapersView.saveCustomizations();
                }
            };
            if (!this.mWallpapersView.waitUntilWallpaperSaved(runnable)) {
                runnable.run();
            }
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        Logger.d(TAG, "onStart");
        super.onStart();
        FirstFrameAnimatorHelper.setIsVisible(true);
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onStart();
        }
        H2BlurWallpaperEventHandler.getInstance().onLauncherStart(this);
        if (Utilities.isNOrAbove()) {
            LauncherAppState app = LauncherAppState.getInstance();
            try {
                app.getAppWidgetHost().startListening();
            } catch (RuntimeException ex) {
                Logger.w(TAG, "startListening#", ex);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void restoreKeyguardClockStyleForUser() {
        int preferencesStyle = PreferencesHelper.getKeyguardClockStyle(this);
        int settingsStyle = PreferencesHelper.getKeyguardClockStyleInSettings(this);
        if (preferencesStyle != settingsStyle) {
            Logger.d(TAG, "Restore keyguard clock style setting: preferencesStyle=%d, settingsStyle=%d", Integer.valueOf(preferencesStyle), Integer.valueOf(settingsStyle));
            PreferencesHelper.setKeyguardClockStyleInSettings(this, preferencesStyle);
        }
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageBaseActivity, android.app.Activity
    protected void onResume() {
        Logger.d(TAG, "onResume");
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.preOnResume();
        }
        if (this.mState == State.SEARCH) {
            this.mGlobalSearchController.hideGlobalSearchWithoutAnimation();
        }
        super.onResume();
        if (this.mOnResumeState == State.WORKSPACE) {
            showWorkspace(false);
        } else if (this.mOnResumeState == State.APPS) {
            boolean launchedFromApp = this.mWaitingForResume != null;
            showAppsView(false, false, !launchedFromApp, false);
        } else if (this.mOnResumeState == State.WIDGETS) {
            showWidgetsView(false, false);
        }
        this.mOnResumeState = State.NONE;
        setWorkspaceBackground(0);
        this.mPaused = false;
        if (this.mRestoring || this.mOnResumeNeedsLoad) {
            setWorkspaceLoading(true);
            this.mBindOnResumeCallbacks.clear();
            this.mModel.startLoader(PagedView.INVALID_RESTORE_PAGE);
            this.mRestoring = false;
            this.mOnResumeNeedsLoad = false;
        }
        if (this.mBindOnResumeCallbacks.size() > 0) {
            for (int i = 0; i < this.mBindOnResumeCallbacks.size(); i++) {
                this.mBindOnResumeCallbacks.get(i).run();
            }
            this.mBindOnResumeCallbacks.clear();
        }
        if (this.mOnResumeCallbacks.size() > 0) {
            for (int i2 = 0; i2 < this.mOnResumeCallbacks.size(); i2++) {
                this.mOnResumeCallbacks.get(i2).run();
            }
            this.mOnResumeCallbacks.clear();
        }
        if (this.mWaitingForResume != null) {
            this.mWaitingForResume.setStayPressed(false);
        }
        getWorkspace().reinflateWidgetsIfNecessary();
        if (this.mWorkspace.isInNormalMode()) {
            bindSearchProviderChanged(false);
        }
        if (this.mWorkspace.getCustomContentCallbacks() != null && this.mWorkspace.isOnOrMovingToCustomContent()) {
            this.mWorkspace.getCustomContentCallbacks().onShow(true);
        }
        updateInteraction(Workspace.State.NORMAL, this.mWorkspace.getState());
        this.mWorkspace.onResume();
        if (!isWorkspaceLoading()) {
            InstallShortcutReceiver.disableAndFlushInstallQueue(this);
        }
        executePendingAction(false);
        if (!this.mShowWorkspaceFromNewIntent && isFromPickOrCrop()) {
            if (this.mResultCode == 96) {
                String message = getString(R.string.cannot_load_photo);
                Toast.makeText(this, message, 0).show();
            } else if (Workspace.State.WALLPAPERS.equals(this.mWorkspace.getState())) {
                showWallpapersView(false);
            } else {
                int homescreenPageIndex = this.mWorkspace.getHomeScreenPageIndex();
                if (this.mWorkspace.getCurrentPage() < homescreenPageIndex) {
                    this.mWorkspace.snapToPageImmediately(homescreenPageIndex);
                    this.mDragLayer.setBackgroundAlpha(0.0f);
                }
                this.mDragLayer.snapshot();
                showWallpapersView(false);
            }
        }
        this.mShowWorkspaceFromNewIntent = false;
        this.mRequestCode = -1;
        this.mResultCode = -1;
        this.mData = null;
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onResume();
        }
        if (StyleManager.getInstance().showDynamicIcon()) {
            DynamicIconManager.getInstance().requestDynamicIconsDataChange();
            doWorkspaceOrFolderIconAnimation();
        }
    }

    private boolean isFromPickOrCrop() {
        boolean isWallpaperScrollable = StyleManager.getInstance().isWallpaperScrollable();
        return !isWallpaperScrollable ? this.mRequestCode == 15 || this.mRequestCode == 16 : this.mRequestCode == 10 || this.mRequestCode == 25;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageBaseActivity, android.app.Activity
    protected void onPause() {
        Logger.d(TAG, "onPause");
        InstallShortcutReceiver.enableInstallQueue();
        super.onPause();
        this.mPaused = true;
        this.mDragController.cancelDrag();
        this.mDragController.resetLastGestureUpTime();
        if (this.mState == State.SEARCH) {
            this.mGlobalSearchController.hideGlobalSearch();
        } else if (this.mState == State.APPS_SPRING_LOADED && !StyleManager.getInstance().showSearchBar()) {
            exitSpringLoadedDragModeDelayed(false, 0, null);
        }
        if (this.mWorkspace.isOnCustomContentScreen() && ((this.mClings == null || !this.mClings.isVisible()) && isEditingQuickPageItem())) {
            leaveQuickPageEditMode();
        }
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onPause();
        }
        if (this.mAppEditDialog != null && this.mAppEditDialog.isShowing() && !this.mIsLeavingForSelectingIconPack) {
            this.mAppEditDialog.dismiss();
        }
        this.mIsLeavingForSelectingIconPack = false;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageBaseActivity, net.oneplus.h2launcher.compat.LauncherAppsCompat.OnAppsChangedCallbackCompat
    public void onPackageAdded(String packageName, UserHandleCompat user) {
        super.onPackageAdded(packageName, user);
        this.mGlobalSearchController.onPackageAdded(packageName, user, this.mAssetCache);
        if (packageName != null && this.mAssetCache.isAssetPackPackage(packageName)) {
            this.mAssetCache.loadAssetPack(packageName, true);
            this.mAssetCache.addPreloadAssetPackTask(packageName);
        }
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageBaseActivity, net.oneplus.h2launcher.compat.LauncherAppsCompat.OnAppsChangedCallbackCompat
    public void onPackageRemoved(String packageName, UserHandleCompat user) {
        super.onPackageRemoved(packageName, user);
        Context context = getApplicationContext();
        if (packageName != null && this.mAssetCache.isAssetPackPackage(packageName)) {
            this.mAssetCache.flushAssetPackIcon(packageName);
        }
        if (packageName != null && packageName.equals(this.mAssetCache.getCurrentAssetPackName())) {
            this.mIconPackNeedChangeToDefault = true;
        }
        this.mGlobalSearchController.updateAllAppsList(packageName, this.mAssetCache);
        CustomInfoHelper.RemoveCustomLabelForPackage(context, user, packageName);
        CustomInfoHelper.RemoveCustomIconForPackage(context, user, packageName);
    }

    public void setIconPackNeedChangeToDefault(boolean isNeeded) {
        this.mIconPackNeedChangeToDefault = isNeeded;
    }

    public boolean isIconPackNeedChangeToDefault() {
        return this.mIconPackNeedChangeToDefault;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageBaseActivity, net.oneplus.h2launcher.compat.LauncherAppsCompat.OnAppsChangedCallbackCompat
    public void onPackageChanged(String packageName, UserHandleCompat user) {
        super.onPackageChanged(packageName, user);
        if (packageName != null && packageName.equals(this.mAssetCache.getCurrentAssetPackName())) {
            this.mAssetCache.flushAssetPackIcon(packageName);
            this.mAssetCache.loadAssetPack(packageName, true);
            this.mAssetCache.updateDbIconsForIconPackChanged();
            if (this.mWorkspace != null) {
                this.mWorkspace.updateAllShortcuts();
            }
            this.mAllAppsViewController.updateAllAppsEntries(this.mAssetCache, null, false);
            this.mAllAppsViewController.notifyDataSetChanged();
            this.mGlobalSearchController.onComponentChanged();
        } else if (packageName != null && this.mAssetCache.isAssetPackPackage(packageName)) {
            this.mAssetCache.flushAssetPackIcon(packageName);
            this.mAssetCache.loadAssetPack(packageName, true);
            this.mAssetCache.addPreloadAssetPackTask(packageName);
        }
        onComponentChanged();
    }

    @Override // net.oneplus.h2launcher.compat.LauncherAppsCompat.OnAppsChangedCallbackCompat
    public void onPackagesSuspended(String[] packageNames, UserHandleCompat user) {
    }

    @Override // net.oneplus.h2launcher.compat.LauncherAppsCompat.OnAppsChangedCallbackCompat
    public void onPackagesUnsuspended(String[] packageNames, UserHandleCompat user) {
    }

    /* loaded from: classes.dex */
    private class LauncherOverlayCallbacksImpl implements LauncherOverlayCallbacks {
        private LauncherOverlayCallbacksImpl() {
        }
    }

    protected boolean hasSettings() {
        if (this.mLauncherCallbacks != null) {
            return this.mLauncherCallbacks.hasSettings();
        }
        return Utilities.isAtLeastO() || !getResources().getBoolean(R.bool.allow_rotation);
    }

    public void addToCustomContentPage(View customContent, CustomContentCallbacks callbacks, String description) {
        this.mWorkspace.addToCustomContentPage(customContent, callbacks, description);
    }

    public int getTopOffsetForCustomContent() {
        return this.mWorkspace.getPaddingTop();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
        this.mHasFocus = hasFocus;
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onWindowFocusChanged(hasFocus);
        }
    }

    private boolean acceptFilter() {
        InputMethodManager inputManager = (InputMethodManager) getSystemService("input_method");
        return !inputManager.isFullscreenMode();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        int uniChar = event.getUnicodeChar();
        boolean handled = super.onKeyDown(keyCode, event);
        boolean isKeyNotWhitespace = uniChar > 0 && !Character.isWhitespace(uniChar);
        if (!handled && acceptFilter() && isKeyNotWhitespace) {
            boolean gotKey = TextKeyListener.getInstance().onKeyDown(this.mWorkspace, this.mDefaultKeySsb, keyCode, event);
            if (gotKey && this.mDefaultKeySsb != null && this.mDefaultKeySsb.length() > 0 && StyleManager.getInstance().showOnlineSearch()) {
                return onSearchRequested();
            }
        }
        if (keyCode == 4 && this.mState == State.SEARCH) {
            this.mGlobalSearchController.hideGlobalSearch();
        }
        return (keyCode == 82 && event.isLongPress()) || handled;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        if (keyCode == 82) {
            handleOnPrepareOptionsMenu();
        }
        return super.onKeyUp(keyCode, event);
    }

    private String getTypedText() {
        return this.mDefaultKeySsb.toString();
    }

    private void clearTypedText() {
        this.mDefaultKeySsb.clear();
        this.mDefaultKeySsb.clearSpans();
        Selection.setSelection(this.mDefaultKeySsb, 0);
    }

    private static State intToState(int stateOrdinal) {
        State state = State.WORKSPACE;
        State[] stateValues = State.values();
        for (State stateValue : stateValues) {
            if (stateValue.ordinal() == stateOrdinal) {
                return stateValue;
            }
        }
        return state;
    }

    private void restoreState(Bundle savedState) {
        if (savedState != null) {
            State state = intToState(savedState.getInt(RUNTIME_STATE, State.WORKSPACE.ordinal()));
            if (state == State.APPS || state == State.WIDGETS) {
                this.mOnResumeState = state;
            }
            int currentScreen = savedState.getInt(RUNTIME_STATE_CURRENT_SCREEN, PagedView.INVALID_RESTORE_PAGE);
            if (currentScreen != -1001) {
                this.mWorkspace.setRestorePage(currentScreen);
            }
            long pendingAddContainer = savedState.getLong(RUNTIME_STATE_PENDING_ADD_CONTAINER, -1L);
            long pendingAddScreen = savedState.getLong(RUNTIME_STATE_PENDING_ADD_SCREEN, -1L);
            if (pendingAddContainer != -1 && pendingAddScreen > -1) {
                this.mPendingAddInfo.container = pendingAddContainer;
                this.mPendingAddInfo.screenId = pendingAddScreen;
                this.mPendingAddInfo.cellX = savedState.getInt(RUNTIME_STATE_PENDING_ADD_CELL_X);
                this.mPendingAddInfo.cellY = savedState.getInt(RUNTIME_STATE_PENDING_ADD_CELL_Y);
                this.mPendingAddInfo.spanX = savedState.getInt(RUNTIME_STATE_PENDING_ADD_SPAN_X);
                this.mPendingAddInfo.spanY = savedState.getInt(RUNTIME_STATE_PENDING_ADD_SPAN_Y);
                AppWidgetProviderInfo info = (AppWidgetProviderInfo) savedState.getParcelable(RUNTIME_STATE_PENDING_ADD_WIDGET_INFO);
                this.mPendingAddWidgetInfo = info == null ? null : LauncherAppWidgetProviderInfo.fromProviderInfo(this, info);
                this.mPendingAddWidgetId = savedState.getInt(RUNTIME_STATE_PENDING_ADD_WIDGET_ID);
                setWaitingForResult(true);
                this.mRestoring = true;
            }
            this.mItemIdToViewId = (SerializableSparseIntArray) savedState.getSerializable(RUNTIME_STATE_VIEW_IDS);
        }
    }

    private void setupViews() {
        DragController dragController = this.mDragController;
        this.mLauncherView = findViewById(R.id.launcher);
        this.mFocusHandler = (FocusIndicatorView) findViewById(R.id.focus_indicator);
        this.mDragLayer = (DragLayer) findViewById(R.id.drag_layer);
        this.mWorkspace = (Workspace) this.mDragLayer.findViewById(R.id.workspace);
        if (this.mWorkspace != null) {
            this.mWorkspace.setPageSwitchListener(this);
            this.mWorkspace.setPageReorderListener(this);
        }
        this.mPageIndicators = this.mDragLayer.findViewById(R.id.page_indicator);
        this.mLauncherView.setSystemUiVisibility(1792);
        this.mWorkspaceBackgroundDrawable = getDrawable(R.drawable.workspace_bg);
        this.mDragLayer.setup(this, dragController, this.mFoldersController);
        this.mHotseat = (Hotseat) findViewById(R.id.hotseat);
        this.mHotseatController = new HotseatController(this);
        this.mHotseatController.setOnLongClickListener(this);
        this.mUtilsPanel = (ViewGroup) findViewById(R.id.utils_panel);
        this.mSortButton = findViewById(R.id.sort_button);
        this.mSortButton.setOnClickListener(new View.OnClickListener() { // from class: net.oneplus.h2launcher.Launcher.14
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                if (!Launcher.this.mWorkspace.isSwitchingState()) {
                    Launcher.this.onClickSortButton();
                    AnalyticHelper.get().putAnalytics(AnalyticHelper.Tag.MDM_ACTIONS_TAG, AnalyticHelper.Label.MDM_ACTIONS_ICON_ALIGN, "1");
                }
            }
        });
        StyleManager styleManager = StyleManager.getInstance();
        if (styleManager.showClearButton()) {
            this.mClearButton = findViewById(R.id.clear_button);
            this.mClearButton.setOnClickListener(new View.OnClickListener() { // from class: net.oneplus.h2launcher.Launcher.15
                @Override // android.view.View.OnClickListener
                public void onClick(View arg0) {
                    if (!Launcher.this.mWorkspace.isSwitchingState()) {
                        Launcher.this.onClickClearButton();
                    }
                }
            });
            this.mClearButton.setOnTouchListener(getHapticFeedbackTouchListener());
        }
        this.mLeftUndoButton = findViewById(R.id.left_undo_button);
        this.mLeftUndoButton.setOnClickListener(new View.OnClickListener() { // from class: net.oneplus.h2launcher.Launcher.16
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                if (!Launcher.this.mWorkspace.isSwitchingState()) {
                    Launcher.this.onClickUndoButton();
                    AnalyticHelper.get().putAnalytics(AnalyticHelper.Tag.MDM_ACTIONS_TAG, AnalyticHelper.Label.MDM_ACTIONS_ICON_ALIGN_BACK, "1");
                }
            }
        });
        this.mLeftUndoButton.setOnTouchListener(getHapticFeedbackTouchListener());
        this.mLeftUndoButton.setVisibility(8);
        this.mRightUndoButton = findViewById(R.id.right_undo_button);
        this.mRightUndoButton.setOnClickListener(new View.OnClickListener() { // from class: net.oneplus.h2launcher.Launcher.17
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                if (!Launcher.this.mWorkspace.isSwitchingState()) {
                    Launcher.this.onClickUndoButton();
                }
            }
        });
        this.mRightUndoButton.setOnTouchListener(getHapticFeedbackTouchListener());
        this.mRightUndoButton.setVisibility(8);
        this.mUtilsPanel.setAlpha(0.0f);
        this.mOverviewPanel = (ViewGroup) findViewById(R.id.overview_panel);
        this.mOverviewPanel.setAlpha(0.0f);
        this.mWidgetsButton = findViewById(R.id.widget_button);
        this.mWidgetsButton.setOnClickListener(new View.OnClickListener() { // from class: net.oneplus.h2launcher.Launcher.18
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                if (!Launcher.this.mWorkspace.isSwitchingState()) {
                    Launcher.this.onClickAddWidgetButton(arg0);
                }
            }
        });
        this.mWidgetsButton.setOnTouchListener(getHapticFeedbackTouchListener());
        this.mWidgetsButton.setVisibility(styleManager.showWidgetsButton() ? 0 : 8);
        this.mSettingsButton = findViewById(R.id.settings_button);
        this.mSettingsButton.setOnClickListener(new View.OnClickListener() { // from class: net.oneplus.h2launcher.Launcher.19
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                if (!Launcher.this.mWorkspace.isSwitchingState()) {
                    Launcher.this.onClickSettingsButton(arg0);
                }
            }
        });
        this.mSettingsButton.setOnTouchListener(getHapticFeedbackTouchListener());
        View mIconRearrangementButton = findViewById(R.id.icon_rearrangement_button);
        if (styleManager.showIconRearrangement()) {
            mIconRearrangementButton.setOnClickListener(new View.OnClickListener() { // from class: net.oneplus.h2launcher.Launcher.20
                @Override // android.view.View.OnClickListener
                public void onClick(View arg0) {
                    if (!Launcher.this.mWorkspace.isSwitchingState()) {
                        Launcher.this.onClickIconRearrangementButton();
                    }
                }
            });
            mIconRearrangementButton.setOnTouchListener(getHapticFeedbackTouchListener());
        } else {
            mIconRearrangementButton.setVisibility(8);
        }
        this.mWorkspace.setHapticFeedbackEnabled(false);
        this.mWorkspace.setOnLongClickListener(this);
        this.mWorkspace.setup(dragController);
        dragController.addDragListener(this.mWorkspace);
        this.mSearchDropTargetBar = (SearchDropTargetBar) this.mDragLayer.findViewById(R.id.search_drop_target_bar);
        int appsViewNumCols = Utilities.getAppsViewNumCols(this);
        this.mDeviceProfile.updateAppsViewNumCols(appsViewNumCols);
        this.mAppsView = (AllAppsContainerView) findViewById(R.id.apps_view);
        this.mWidgetsView = (WidgetsContainerView) findViewById(R.id.widgets_view);
        this.mCustomizationsViewStub = (ViewStub) findViewById(R.id.customizations_view_stub);
        this.mWallpapersViewStub = (ViewStub) findViewById(R.id.wallpapers_view_stub);
        this.mIconRearrangementView = (IconRearrangementContainerView) findViewById(R.id.icon_rearrangement_view);
        if (this.mIconRearrangementView != null && styleManager.showIconRearrangement()) {
            this.mIconRearrangementHelper = new IconRearrangementHelper(this, this.mIconRearrangementView);
        }
        this.mAllAppsViewController = new AllAppsViewController(this);
        this.mAllAppsViewController.setSearchBarController();
        dragController.setDragScoller(this.mWorkspace);
        dragController.setScrollView(this.mDragLayer);
        dragController.setMoveTarget(this.mWorkspace);
        dragController.addDropTarget(this.mWorkspace);
        if (this.mSearchDropTargetBar != null) {
            this.mSearchDropTargetBar.setup(this, dragController);
            this.mSearchDropTargetBar.setQsbSearchBar(getOrCreateQsbBar());
        }
        this.mFoldersView = (FoldersContainerView) findViewById(R.id.folders_view);
        this.mFoldersController.setupViews(this.mFoldersView, this.mWorkspace);
        if (getResources().getBoolean(R.bool.debug_memory_enabled)) {
            Log.v(TAG, "adding WeightWatcher");
            this.mWeightWatcher = new WeightWatcher(this);
            this.mWeightWatcher.setAlpha(0.5f);
            ((FrameLayout) this.mLauncherView).addView(this.mWeightWatcher, new FrameLayout.LayoutParams(-1, -2, 80));
            boolean show = shouldShowWeightWatcher();
            this.mWeightWatcher.setVisibility(show ? 0 : 8);
        }
        this.mGlobalSearchViewStub = (ViewStub) findViewById(R.id.global_search_view_stub);
        this.mDoubleTapSettingsChangeListener.add(this.mWorkspace);
        if (this.mHotseat != null) {
            this.mDoubleTapSettingsChangeListener.add(this.mHotseat);
        }
        callOnDoubleTapSettingsChange();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callOnDoubleTapSettingsChange() {
        for (DoubleTapTouchListener.OnDoubleTapSettingsChangeListener l : this.mDoubleTapSettingsChangeListener) {
            l.onDoubleTapSettingsChange(this.mDoubleTapEnabled);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setupUtilsPanel() {
        if (this.mUtilsPanel == null) {
            Logger.d(TAG, "setupUtilsPanel# invalid utils panel");
            return;
        }
        if (this.mWorkspace == null) {
            Logger.w(TAG, "setupUtilsPanel# invalid workspace");
            return;
        }
        Resources resources = getResources();
        int statusBarHeight = resources.getDimensionPixelSize(R.dimen.status_bar_height);
        int screenHeight = Utilities.getScreenDimensions(this, true).y;
        float overviewShrinkPercentage = resources.getInteger(R.integer.config_workspaceOverviewShrinkPercentage) / 100.0f;
        int cellHeight = (int) (this.mWorkspace.getNormalChildHeight() * overviewShrinkPercentage);
        int navigationHeight = this.mWorkspace.mInsets.bottom;
        DragLayer.LayoutParams params = (DragLayer.LayoutParams) this.mUtilsPanel.getLayoutParams();
        int overviewModeTranslationY = ((((screenHeight - statusBarHeight) - navigationHeight) - cellHeight) / 2) + cellHeight + this.mWorkspace.getOverviewModeTranslationY();
        float paddingBottom = this.mWorkspace.getPaddingBottom();
        if (navigationHeight > 0) {
            overviewShrinkPercentage = 1.0f;
        }
        params.topMargin = overviewModeTranslationY + ((int) (paddingBottom * overviewShrinkPercentage));
    }

    public void setupWallpapersButton() {
        Logger.d(TAG, "[SNDMS-1030] setupWallpapersButton");
        View wallpaperButton = findViewById(R.id.wallpaper_button);
        wallpaperButton.setOnClickListener(new View.OnClickListener() { // from class: net.oneplus.h2launcher.Launcher.21
            @Override // android.view.View.OnClickListener
            public void onClick(final View view) {
                if (Launcher.this.mWorkspace.isSwitchingState()) {
                    Log.d(Launcher.TAG, "workspace is switch state");
                    return;
                }
                Context context = view.getContext();
                WallpaperPreview.Model wallpaperModel = WallpaperPreview.Model.getInstance(context);
                if (wallpaperModel.areWallpapersLoaded(Launcher.this.getApplicationContext())) {
                    Launcher.this.onClickWallpaperPicker(view);
                    return;
                }
                wallpaperModel.setOnWallpaperLoadedCallback(new Runnable() { // from class: net.oneplus.h2launcher.Launcher.21.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!Launcher.this.mWorkspace.isSwitchingState() && Launcher.this.mWorkspace.isInOverviewMode()) {
                            Launcher.this.onClickWallpaperPicker(view);
                        }
                    }
                });
                if (!wallpaperModel.isPreloadingWallpaper()) {
                    wallpaperModel.preloadWallpapers(context);
                }
            }
        });
        wallpaperButton.setOnTouchListener(getHapticFeedbackTouchListener());
    }

    public void setupCustomizationsButton() {
        View customizationsButton = findViewById(R.id.customizations_button);
        customizationsButton.setOnClickListener(new View.OnClickListener() { // from class: net.oneplus.h2launcher.Launcher.22
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                if (!Launcher.this.mWorkspace.isSwitchingState()) {
                    Launcher.this.onClickCustomizationButton(arg0);
                }
            }
        });
        customizationsButton.setOnTouchListener(getHapticFeedbackTouchListener());
    }

    public void inflateViewStubs() {
        if (getCustomizationsView() == null && getCustomizationsViewStub() != null && getCustomizationsViewStub().getParent() != null) {
            setCustomizationsView((CustomizationsContainerView) getCustomizationsViewStub().inflate());
        }
        WallpapersContainerView wallpapersView = getWallpapersView();
        if (wallpapersView == null && getWallpapersViewStub() != null && getWallpapersViewStub().getParent() != null) {
            setWallpapersView((WallpapersContainerView) getWallpapersViewStub().inflate());
        }
    }

    public View inflateGlobalSearView() {
        if (this.mGlobalSearchViewStub != null) {
            return this.mGlobalSearchViewStub.inflate();
        }
        return null;
    }

    protected void onScrollInteraction() {
        executePendingAction(true);
        this.mUtilsButtonClicked = new boolean[2];
        updateUtilsButtonVisibility();
    }

    public void setAllAppsButton(View allAppsButton) {
        this.mAllAppsButton = allAppsButton;
    }

    public View getAllAppsButton() {
        return this.mAllAppsButton;
    }

    public View getWidgetsButton() {
        return this.mWidgetsButton;
    }

    View createShortcut(ShortcutInfo info) {
        return createShortcut((ViewGroup) this.mWorkspace.getChildAt(this.mWorkspace.getCurrentPage()), info);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public View createShortcut(ViewGroup parent, ShortcutInfo shortcutInfo) {
        BubbleTextView favorite;
        if (StyleManager.getInstance().showDynamicIcon() && shortcutInfo.isDynamicIcon()) {
            favorite = ((IDynamicShortcut) shortcutInfo).createShortcutView(this, parent, false, R.style.Icon);
        } else {
            favorite = (BubbleTextView) this.mInflater.inflate(R.layout.app_icon, parent, false);
        }
        favorite.applyFromShortcutInfo(shortcutInfo);
        favorite.setCompoundDrawablePadding(this.mDeviceProfile.iconDrawablePaddingPx);
        favorite.setOnClickListener(this);
        favorite.setOnFocusChangeListener(this.mFocusHandler);
        return favorite;
    }

    private void completeAddShortcut(Intent data, long container, long screenId, int cellX, int cellY) {
        boolean foundCellSpan;
        int[] cellXY = this.mTmpAddItemCellCoordinates;
        int[] touchXY = this.mPendingAddInfo.dropPos;
        CellLayout layout = getCellLayout(container, screenId);
        ShortcutInfo info = InstallShortcutReceiver.fromShortcutIntent(this, data);
        if (info != null) {
            View view = createShortcut(info);
            if (cellX >= 0 && cellY >= 0) {
                cellXY[0] = cellX;
                cellXY[1] = cellY;
                foundCellSpan = true;
                if (!this.mWorkspace.createUserFolderIfNecessary(view, container, layout, cellXY, 0.0f, true, null, null)) {
                    DropTarget.DragObject dragObject = new DropTarget.DragObject();
                    dragObject.dragInfo = info;
                    if (this.mWorkspace.addToExistingFolderIfNecessary(view, layout, cellXY, 0.0f, dragObject, true)) {
                        return;
                    }
                } else {
                    return;
                }
            } else if (touchXY != null) {
                int[] result = layout.findNearestVacantArea(touchXY[0], touchXY[1], 1, 1, cellXY);
                foundCellSpan = result != null;
            } else {
                foundCellSpan = layout.findCellForSpan(cellXY, 1, 1);
            }
            if (!foundCellSpan) {
                showOutOfSpaceMessage(isHotseatLayout(layout));
                return;
            }
            LauncherModel.addItemToDatabase(this, info, container, screenId, cellXY[0], cellXY[1]);
            if (!this.mRestoring) {
                this.mWorkspace.addInScreen(view, container, screenId, cellXY[0], cellXY[1], 1, 1, isWorkspaceLocked());
            }
        }
    }

    void completeAddAppWidget(int appWidgetId, long container, long screenId, AppWidgetHostView hostView, LauncherAppWidgetProviderInfo appWidgetInfo) {
        ItemInfo info = this.mPendingAddInfo;
        if (appWidgetInfo == null) {
            appWidgetInfo = LauncherAppWidgetProviderInfo.fromProviderInfo(this, this.mAppWidgetManager.getAppWidgetInfo(appWidgetId));
        }
        if (appWidgetInfo.isCustomWidget) {
            appWidgetId = -100;
        }
        LauncherAppWidgetInfo launcherInfo = new LauncherAppWidgetInfo(appWidgetId, appWidgetInfo.provider);
        launcherInfo.spanX = info.spanX;
        launcherInfo.spanY = info.spanY;
        launcherInfo.minSpanX = info.minSpanX;
        launcherInfo.minSpanY = info.minSpanY;
        launcherInfo.user = this.mAppWidgetManager.getUser(appWidgetInfo);
        LauncherModel.addItemToDatabase(this, launcherInfo, container, screenId, info.cellX, info.cellY);
        if (!this.mRestoring) {
            if (hostView == null) {
                launcherInfo.hostView = LauncherAppState.getInstance().getAppWidgetHost().createView((Context) this, appWidgetId, appWidgetInfo);
            } else {
                launcherInfo.hostView = hostView;
            }
            launcherInfo.hostView.setTag(launcherInfo);
            launcherInfo.hostView.setVisibility(0);
            launcherInfo.notifyWidgetSizeChanged(this);
            this.mWorkspace.addInScreen(launcherInfo.hostView, container, screenId, info.cellX, info.cellY, launcherInfo.spanX, launcherInfo.spanY, isWorkspaceLocked());
            addWidgetToAutoAdvanceIfNeeded(launcherInfo.hostView, appWidgetInfo);
        }
        resetAddInfo();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.SCREEN_OFF");
        filter.addAction("android.intent.action.USER_PRESENT");
        filter.addAction("android.intent.action.USER_FOREGROUND");
        filter.addAction("android.intent.action.USER_BACKGROUND");
        registerReceiver(this.mReceiver, filter);
        FirstFrameAnimatorHelper.initializeDrawListener(getWindow().getDecorView());
        setupTransparentSystemBarsForLollipop();
        this.mAttached = true;
        this.mVisible = true;
    }

    @TargetApi(21)
    private void setupTransparentSystemBarsForLollipop() {
        if (Utilities.ATLEAST_LOLLIPOP) {
            Window window = getWindow();
            window.getAttributes().systemUiVisibility |= 1792;
            window.clearFlags(201326592);
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(0);
            window.setNavigationBarColor(0);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mVisible = false;
        if (this.mAttached) {
            unregisterReceiver(this.mReceiver);
            this.mAttached = false;
        }
        updateAutoAdvanceState();
    }

    public void onWindowVisibilityChanged(int visibility) {
        this.mVisible = visibility == 0;
        updateAutoAdvanceState();
        if (this.mVisible) {
            if (!this.mWorkspaceLoading) {
                ViewTreeObserver observer = this.mWorkspace.getViewTreeObserver();
                observer.addOnDrawListener(new ViewTreeObserver.OnDrawListener() { // from class: net.oneplus.h2launcher.Launcher.24
                    private boolean mStarted = false;

                    @Override // android.view.ViewTreeObserver.OnDrawListener
                    public void onDraw() {
                        if (!this.mStarted) {
                            this.mStarted = true;
                            Launcher.this.mWorkspace.postDelayed(Launcher.this.mBuildLayersRunnable, 500L);
                            Launcher.this.mWorkspace.post(new Runnable() { // from class: net.oneplus.h2launcher.Launcher.24.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (Launcher.this.mWorkspace != null && Launcher.this.mWorkspace.getViewTreeObserver() != null) {
                                        Launcher.this.mWorkspace.getViewTreeObserver().removeOnDrawListener(this);
                                    }
                                }
                            });
                        }
                    }
                });
            }
            clearTypedText();
        }
    }

    void sendAdvanceMessage(long delay) {
        this.mHandler.removeMessages(1);
        Message msg = this.mHandler.obtainMessage(1);
        this.mHandler.sendMessageDelayed(msg, delay);
        this.mAutoAdvanceSentTime = System.currentTimeMillis();
    }

    void updateAutoAdvanceState() {
        boolean autoAdvanceRunning = this.mVisible && this.mUserPresent && !this.mWidgetsToAdvance.isEmpty();
        Logger.d(TAG, "updateAutoAdvanceState autoAdvanceRunning = " + autoAdvanceRunning + ", mAutoAdvanceRunning = " + this.mAutoAdvanceRunning);
        if (autoAdvanceRunning != this.mAutoAdvanceRunning) {
            this.mAutoAdvanceRunning = autoAdvanceRunning;
            if (autoAdvanceRunning) {
                long delay = this.mAutoAdvanceTimeLeft != -1 ? this.mAutoAdvanceTimeLeft : 20000L;
                sendAdvanceMessage(delay);
            } else {
                if (!this.mWidgetsToAdvance.isEmpty()) {
                    this.mAutoAdvanceTimeLeft = Math.max(0L, 20000 - (System.currentTimeMillis() - this.mAutoAdvanceSentTime));
                }
                this.mHandler.removeMessages(1);
                this.mHandler.removeMessages(0);
            }
        }
    }

    void addWidgetToAutoAdvanceIfNeeded(View hostView, AppWidgetProviderInfo appWidgetInfo) {
        if (appWidgetInfo != null && appWidgetInfo.autoAdvanceViewId != -1) {
            KeyEvent.Callback findViewById = hostView.findViewById(appWidgetInfo.autoAdvanceViewId);
            if (findViewById instanceof Advanceable) {
                this.mWidgetsToAdvance.put(hostView, appWidgetInfo);
                ((Advanceable) findViewById).fyiWillBeAdvancedByHostKThx();
                updateAutoAdvanceState();
            }
        }
    }

    void removeWidgetToAutoAdvance(View hostView) {
        if (this.mWidgetsToAdvance.containsKey(hostView)) {
            this.mWidgetsToAdvance.remove(hostView);
            updateAutoAdvanceState();
        }
    }

    public void removeAppWidget(LauncherAppWidgetInfo launcherInfo) {
        removeWidgetToAutoAdvance(launcherInfo.hostView);
        launcherInfo.hostView = null;
    }

    public void showOutOfSpaceMessage(boolean isHotseatLayout) {
        int strId = isHotseatLayout ? R.string.hotseat_out_of_space : R.string.out_of_space;
        Toast.makeText(this, getString(strId), 0).show();
    }

    public LauncherCallbacks getLauncherCallbacks() {
        return this.mLauncherCallbacks;
    }

    public DragLayer getDragLayer() {
        return this.mDragLayer;
    }

    public AllAppsContainerView getAppsView() {
        return this.mAppsView;
    }

    public FoldersContainerView getFoldersView() {
        return this.mFoldersView;
    }

    public FoldersTransitionController getFoldersController() {
        return this.mFoldersController;
    }

    public WidgetsContainerView getWidgetsView() {
        return this.mWidgetsView;
    }

    public ViewStub getCustomizationsViewStub() {
        return this.mCustomizationsViewStub;
    }

    public CustomizationsContainerView getCustomizationsView() {
        return this.mCustomizationsView;
    }

    public void setCustomizationsView(CustomizationsContainerView customizationsContainerView) {
        this.mCustomizationsView = customizationsContainerView;
        this.mCustomizationsView.setVisibility(4);
    }

    public ViewStub getWallpapersViewStub() {
        return this.mWallpapersViewStub;
    }

    public WallpapersContainerView getWallpapersView() {
        return this.mWallpapersView;
    }

    public void setWallpapersView(WallpapersContainerView wallpapersView) {
        this.mWallpapersView = wallpapersView;
        this.mWallpapersView.setVisibility(4);
    }

    public IconRearrangementContainerView getIconRearrangementView() {
        return this.mIconRearrangementView;
    }

    public Workspace getWorkspace() {
        return this.mWorkspace;
    }

    public Hotseat getHotseat() {
        return this.mHotseat;
    }

    public View getPageIndicator() {
        return this.mPageIndicators;
    }

    public ViewGroup getOverviewPanel() {
        return this.mOverviewPanel;
    }

    public SearchDropTargetBar getSearchDropTargetBar() {
        return this.mSearchDropTargetBar;
    }

    public ViewGroup getUtilsPanel() {
        return this.mUtilsPanel;
    }

    public LauncherAppWidgetHost getAppWidgetHost() {
        return LauncherAppState.getInstance().getAppWidgetHost();
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageBaseActivity
    public LauncherModel getModel() {
        return this.mModel;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageBaseActivity
    public AssetCache getAssetCache() {
        return this.mAssetCache;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SharedPreferences getSharedPrefs() {
        return this.mSharedPrefs;
    }

    public ExtractedColors getExtractedColors() {
        return this.mExtractedColors;
    }

    public DeviceProfile getDeviceProfile() {
        return this.mDeviceProfile;
    }

    public void closeSystemDialogs() {
        getWindow().closeAllPanels();
        setWaitingForResult(false);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        Logger.d(TAG, "onConfigurationChanged:" + newConfig);
        getWorkspace().reinflateWidgetsIfNecessary();
        bindSearchProviderChanged(false);
        if (PreferencesHelper.isQuickPageEnabled(this) && isQuickPageInflated()) {
            resetWidgetPicker();
            getQuickPageView().requestLayout();
        }
        super.onConfigurationChanged(newConfig);
    }

    public boolean getDoubleTapEnabled() {
        return this.mDoubleTapEnabled;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageBaseActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        Logger.d(TAG, "onNewIntent");
        if (this.mState == State.SEARCH) {
            this.mGlobalSearchController.hideGlobalSearch();
            return;
        }
        if (this.mClings == null || !this.mClings.isVisible()) {
            Folder openFolder = this.mWorkspace.getOpenFolder();
            boolean alreadyOnHome = (this.mHasFocus || areDialogsShowing()) && (intent.getFlags() & AccessibilityEventCompat.TYPE_WINDOWS_CHANGED) != 4194304;
            boolean isActionMain = "android.intent.action.MAIN".equals(intent.getAction());
            boolean shouldReturnToHome = true;
            super.onNewIntent(intent);
            boolean skipToMoveDefaultScreen = false;
            if (isActionMain) {
                closeSystemDialogs();
                if (intent.getBooleanExtra(QuickPageBroadcastReceiver.OPEN_QUICK_PAGE, false)) {
                    if (alreadyOnHome) {
                        showWorkspace(true);
                        this.mWorkspace.moveToAlternateScreen(true);
                        shouldReturnToHome = false;
                    } else {
                        overridePendingTransition(android.R.anim.slide_in_left, android.R.anim.slide_out_right);
                        showWorkspace(false);
                        this.mWorkspace.moveToCustomContentScreen(false);
                    }
                }
                if (this.mWorkspace != null) {
                    this.mWorkspace.exitWidgetResizeMode();
                    closeFolder();
                    exitSpringLoadedDragMode();
                    this.mShowWorkspaceFromNewIntent = true;
                    if (alreadyOnHome) {
                        if (this.mState == State.ICON_REARRANGEMENT || this.mState == State.CUSTOMIZATIONS || this.mState == State.WALLPAPER || this.mState == State.WIDGETS || this.mWorkspace.isInOverviewMode()) {
                            skipToMoveDefaultScreen = true;
                        }
                        showWorkspace(true);
                    } else {
                        this.mOnResumeState = State.WORKSPACE;
                    }
                    View v = getWindow().peekDecorView();
                    if (v != null && v.getWindowToken() != null) {
                        InputMethodManager imm = (InputMethodManager) getSystemService("input_method");
                        imm.hideSoftInputFromWindow(v.getWindowToken(), 0);
                    }
                    if (!alreadyOnHome) {
                        this.mAllAppsViewController.scrollToTop();
                    }
                    if (!alreadyOnHome && this.mWidgetsView != null) {
                        this.mWidgetsView.scrollToTop();
                    }
                    if (this.mLauncherCallbacks != null) {
                        this.mLauncherCallbacks.onHomeIntent();
                    }
                } else {
                    return;
                }
            }
            if (this.mLauncherCallbacks != null) {
                this.mLauncherCallbacks.onNewIntent(intent);
            }
            if (isActionMain) {
                boolean moveToDefaultScreen = this.mLauncherCallbacks == null || this.mLauncherCallbacks.shouldMoveToDefaultScreenOnHomeIntent();
                if (alreadyOnHome && this.mState == State.WORKSPACE && !this.mWorkspace.isTouchActive() && openFolder == null && moveToDefaultScreen && shouldReturnToHome && !skipToMoveDefaultScreen) {
                    this.mWorkspace.post(new Runnable() { // from class: net.oneplus.h2launcher.Launcher.26
                        @Override // java.lang.Runnable
                        public void run() {
                            if (Launcher.this.mWorkspace != null) {
                                Launcher.this.mWorkspace.moveToDefaultScreen(true);
                            }
                        }
                    });
                }
            }
        }
    }

    @Override // android.app.Activity
    public void onRestoreInstanceState(Bundle state) {
        try {
            super.onRestoreInstanceState(state);
        } catch (Exception e) {
        }
        Iterator<Integer> it = this.mSynchronouslyBoundPages.iterator();
        while (it.hasNext()) {
            int page = it.next().intValue();
            this.mWorkspace.restoreInstanceStateForChild(page);
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle outState) {
        if (isWorkspaceLoading() && this.mSavedState != null) {
            outState.putAll(this.mSavedState);
            return;
        }
        if (this.mWorkspace.getChildCount() > 0) {
            outState.putInt(RUNTIME_STATE_CURRENT_SCREEN, this.mWorkspace.getCurrentPageOffsetFromCustomContent());
        }
        super.onSaveInstanceState(outState);
        outState.putInt(RUNTIME_STATE, this.mState.ordinal());
        closeFolder();
        if (this.mPendingAddInfo.container != -1 && this.mPendingAddInfo.screenId > -1 && this.mWaitingForResult) {
            outState.putLong(RUNTIME_STATE_PENDING_ADD_CONTAINER, this.mPendingAddInfo.container);
            outState.putLong(RUNTIME_STATE_PENDING_ADD_SCREEN, this.mPendingAddInfo.screenId);
            outState.putInt(RUNTIME_STATE_PENDING_ADD_CELL_X, this.mPendingAddInfo.cellX);
            outState.putInt(RUNTIME_STATE_PENDING_ADD_CELL_Y, this.mPendingAddInfo.cellY);
            outState.putInt(RUNTIME_STATE_PENDING_ADD_SPAN_X, this.mPendingAddInfo.spanX);
            outState.putInt(RUNTIME_STATE_PENDING_ADD_SPAN_Y, this.mPendingAddInfo.spanY);
            outState.putParcelable(RUNTIME_STATE_PENDING_ADD_WIDGET_INFO, this.mPendingAddWidgetInfo);
            outState.putInt(RUNTIME_STATE_PENDING_ADD_WIDGET_ID, this.mPendingAddWidgetId);
        }
        outState.putSerializable(RUNTIME_STATE_VIEW_IDS, this.mItemIdToViewId);
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onSaveInstanceState(outState);
        }
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageBaseActivity, android.app.Activity
    public void onDestroy() {
        BaseViewPager customizationPager;
        Logger.d(TAG, "onDestroy");
        super.onDestroy();
        this.mHandler.removeCallbacksAndMessages(null);
        this.mHandler.removeMessages(0);
        this.mWorkspace.removeCallbacks(this.mBuildLayersRunnable);
        TaskWorker.get().clearPendingTask();
        LauncherAppState app = LauncherAppState.getInstance();
        if (this.mModel.isCurrentCallbacks(this)) {
            this.mModel.stopLoader();
            app.setLauncher(null);
        }
        LauncherAppsCompat launcherApps = LauncherAppsCompat.getInstance(this);
        launcherApps.removeOnAppsChangedCallback(this.mStats);
        launcherApps.removeOnAppsChangedCallback(this);
        if (this.mCustomizationsView != null && (customizationPager = this.mCustomizationsView.getCustomizationPager()) != null) {
            int count = customizationPager.getChildCount();
            for (int index = 0; index < count; index++) {
                View view = customizationPager.getChildAt(index);
                if (view instanceof IconCustomizationCard) {
                    ((IconCustomizationCard) view).removeOnAppsChangedCallback();
                }
            }
        }
        try {
            app.getAppWidgetHost().stopListening();
        } catch (NullPointerException ex) {
            Log.w(TAG, "problem while stopping AppWidgetHost during Launcher destruction", ex);
        }
        this.mWidgetsToAdvance.clear();
        TextKeyListener.getInstance().release();
        ContentResolver contentResolver = getContentResolver();
        contentResolver.unregisterContentObserver(this.mNavigationObserver);
        contentResolver.unregisterContentObserver(this.mContactsObserver);
        if (this.mWeatherProvider != null) {
            this.mWeatherProvider.unregisterContentObserver(contentResolver);
            this.mWeatherProvider = null;
        }
        unregisterReceiver(this.mCloseSystemDialogsReceiver);
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.mIconPackReceiver);
        unregisterWallpaperChangedReceiver();
        Utilities.clearIconScaleParameters(this);
        this.mDragLayer.clearAllResizeFrames();
        ((ViewGroup) this.mWorkspace.getParent()).removeAllViews();
        this.mWorkspace.removeAllWorkspaceScreens();
        this.mWorkspace = null;
        this.mDragController = null;
        LauncherAnimUtils.onDestroyActivity();
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onDestroy();
        }
        if (this.mGlobalSearchController != null) {
            this.mGlobalSearchController.closeGlobalSearchDatabase();
            DynamicIconManager.getInstance().unregisterUpdateIconCacheCallback(this.mGlobalSearchController);
        }
        if (StyleManager.getInstance().showInternalClock() && ClockWidget.getInstance() != null) {
            ClockWidget.getInstance().release();
        }
        if (StyleManager.getInstance().showDynamicIcon()) {
            DynamicIconManager.getInstance().onDestroy();
        }
        if (Utilities.isTaskUnfinished(this.mScreenshotTask)) {
            this.mScreenshotTask.cancel(true);
        }
        if (this.mGestureSharedPrefs != null && this.mGesturePrefChangeListener != null) {
            this.mGestureSharedPrefs.unregisterOnSharedPreferenceChangeListener(this.mGesturePrefChangeListener);
        }
        if (this.mWallpaperPreferences != null && this.mWallpaperPrefChangListener != null) {
            this.mWallpaperPreferences.unregisterOnSharedPreferenceChangeListener(this.mWallpaperPrefChangListener);
        }
        if (this.mAppEditDialog != null && this.mAppEditDialog.isShowing()) {
            this.mAppEditDialog.dismiss();
        }
        if (this.mSwitchingProgressDialog != null) {
            this.mSwitchingProgressDialog.dismiss();
            this.mSwitchingProgressDialog = null;
        }
    }

    public DragController getDragController() {
        if (this.mDragController == null) {
            this.mDragController = new DragController(this);
        }
        return this.mDragController;
    }

    public WeatherProvider getWeatherProvider() {
        if (this.mWeatherProvider == null) {
            this.mWeatherProvider = new WeatherProvider(this);
        }
        return this.mWeatherProvider;
    }

    public AllAppsViewController getAllAppsViewController() {
        if (this.mAllAppsViewController == null) {
            this.mAllAppsViewController = new AllAppsViewController(this);
        }
        return this.mAllAppsViewController;
    }

    public HotseatController getHotseatController() {
        if (this.mHotseatController == null) {
            this.mHotseatController = new HotseatController(this);
        }
        return this.mHotseatController;
    }

    public void showGlobalSearch() {
        this.mGlobalSearchController.showGlobalSearch();
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int requestCode) {
        onStartForResult(requestCode);
        super.startActivityForResult(intent, requestCode);
    }

    @Override // android.app.Activity
    public void startIntentSenderForResult(IntentSender intent, int requestCode, Intent fillInIntent, int flagsMask, int flagsValues, int extraFlags, Bundle options) {
        onStartForResult(requestCode);
        try {
            super.startIntentSenderForResult(intent, requestCode, fillInIntent, flagsMask, flagsValues, extraFlags, options);
        } catch (IntentSender.SendIntentException e) {
            throw new ActivityNotFoundException();
        }
    }

    private void onStartForResult(int requestCode) {
        if (requestCode >= 0) {
            setWaitingForResult(true);
        }
    }

    @Override // android.app.Activity
    public void startSearch(String initialQuery, boolean selectInitialQuery, Bundle appSearchData, boolean globalSearch) {
        if (initialQuery == null) {
            initialQuery = getTypedText();
        }
        if (appSearchData == null) {
            appSearchData = new Bundle();
            appSearchData.putString("source", "launcher-search");
        }
        Rect sourceBounds = new Rect();
        if (this.mSearchDropTargetBar != null) {
            sourceBounds = this.mSearchDropTargetBar.getSearchBarBounds();
        }
        boolean clearTextImmediately = startSearch(initialQuery, selectInitialQuery, appSearchData, sourceBounds);
        if (clearTextImmediately) {
            clearTypedText();
        }
        showWorkspace(true);
    }

    public boolean startSearch(String initialQuery, boolean selectInitialQuery, Bundle appSearchData, Rect sourceBounds) {
        if (this.mLauncherCallbacks != null && this.mLauncherCallbacks.providesSearch()) {
            return this.mLauncherCallbacks.startSearch(initialQuery, selectInitialQuery, appSearchData, sourceBounds);
        }
        startGlobalSearch(initialQuery, selectInitialQuery, appSearchData, sourceBounds);
        return false;
    }

    private void startGlobalSearch(String initialQuery, boolean selectInitialQuery, Bundle appSearchData, Rect sourceBounds) {
        Bundle appSearchData2;
        SearchManager searchManager = (SearchManager) getApplicationContext().getSystemService(Stats.SUB_CONTAINER_ALL_APPS_SEARCH);
        ComponentName globalSearchActivity = searchManager.getGlobalSearchActivity();
        if (globalSearchActivity == null) {
            Log.w(TAG, "No global search activity found.");
            return;
        }
        Intent intent = new Intent("android.search.action.GLOBAL_SEARCH");
        intent.addFlags(268435456);
        intent.setComponent(globalSearchActivity);
        if (appSearchData == null) {
            appSearchData2 = new Bundle();
        } else {
            appSearchData2 = new Bundle(appSearchData);
        }
        if (!appSearchData2.containsKey("source")) {
            appSearchData2.putString("source", getPackageName());
        }
        intent.putExtra("app_data", appSearchData2);
        if (!TextUtils.isEmpty(initialQuery)) {
            intent.putExtra("query", initialQuery);
        }
        if (selectInitialQuery) {
            intent.putExtra("select_query", true);
        }
        intent.setSourceBounds(sourceBounds);
        try {
            startActivity(intent);
        } catch (ActivityNotFoundException e) {
            Log.e(TAG, "Global search activity not found: " + globalSearchActivity);
        }
    }

    public void startSearchFromAllApps(View v, Intent searchIntent, String searchQuery) {
        if (this.mLauncherCallbacks == null || !this.mLauncherCallbacks.startSearchFromAllApps(searchQuery)) {
            startActivitySafely(v, searchIntent, null);
        }
    }

    public boolean isOnCustomContent() {
        return this.mWorkspace.isOnOrMovingToCustomContent();
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        return this.mLauncherCallbacks != null && this.mLauncherCallbacks.onPrepareOptionsMenu(menu);
    }

    private void handleOnPrepareOptionsMenu() {
        if (!isOnCustomContent() && !isAllAppsVisible()) {
            closeFolder();
            this.mWorkspace.exitWidgetResizeMode();
            if (isInSearchMode()) {
                this.mGlobalSearchController.hideGlobalSearchWithoutAnimation();
            }
            if (!this.mWorkspace.isInOverviewMode()) {
                showOverviewMode(true);
            } else {
                showWorkspace(true);
            }
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onSearchRequested() {
        startSearch((String) null, false, (Bundle) null, true);
        return true;
    }

    public boolean isWorkspaceLocked() {
        return this.mWorkspaceLoading || this.mWaitingForResult;
    }

    public boolean isWorkspaceLoading() {
        return this.mWorkspaceLoading;
    }

    private void setWorkspaceLoading(boolean value) {
        boolean isLocked = isWorkspaceLocked();
        this.mWorkspaceLoading = value;
        if (isLocked != isWorkspaceLocked()) {
            onWorkspaceLockedChanged();
        }
    }

    public void setWaitingForResult(boolean value) {
        boolean isLocked = isWorkspaceLocked();
        this.mWaitingForResult = value;
        if (isLocked != isWorkspaceLocked()) {
            onWorkspaceLockedChanged();
        }
    }

    protected void onWorkspaceLockedChanged() {
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onWorkspaceLockedChanged();
        }
    }

    private void resetAddInfo() {
        this.mPendingAddInfo.container = -1L;
        this.mPendingAddInfo.screenId = -1L;
        ItemInfo itemInfo = this.mPendingAddInfo;
        this.mPendingAddInfo.cellY = -1;
        itemInfo.cellX = -1;
        ItemInfo itemInfo2 = this.mPendingAddInfo;
        this.mPendingAddInfo.spanY = -1;
        itemInfo2.spanX = -1;
        ItemInfo itemInfo3 = this.mPendingAddInfo;
        this.mPendingAddInfo.minSpanY = 1;
        itemInfo3.minSpanX = 1;
        this.mPendingAddInfo.dropPos = null;
    }

    void addAppWidgetImpl(int appWidgetId, ItemInfo info, AppWidgetHostView boundWidget, LauncherAppWidgetProviderInfo appWidgetInfo) {
        addAppWidgetImpl(appWidgetId, info, boundWidget, appWidgetInfo, 0);
    }

    void addAppWidgetImpl(int appWidgetId, ItemInfo info, AppWidgetHostView boundWidget, LauncherAppWidgetProviderInfo appWidgetInfo, int delay) {
        if (appWidgetInfo.configure != null) {
            this.mPendingAddWidgetInfo = appWidgetInfo;
            this.mPendingAddWidgetId = appWidgetId;
            this.mAppWidgetManager.startConfigActivity(appWidgetInfo, appWidgetId, this, LauncherAppState.getInstance().getAppWidgetHost(), 5);
        } else {
            Runnable onComplete = new Runnable() { // from class: net.oneplus.h2launcher.Launcher.27
                @Override // java.lang.Runnable
                public void run() {
                    Launcher.this.exitSpringLoadedDragModeDelayed(true, 300, null);
                }
            };
            completeAddAppWidget(appWidgetId, info.container, info.screenId, boundWidget, appWidgetInfo);
            this.mWorkspace.removeExtraEmptyScreenDelayed(true, onComplete, delay, false);
        }
    }

    protected void moveToCustomContentScreen(boolean animate) {
        closeFolder();
        this.mWorkspace.moveToCustomContentScreen(animate);
    }

    public void addPendingItem(PendingAddItemInfo info, long container, long screenId, int[] cell, int spanX, int spanY) {
        switch (info.itemType) {
            case 1:
            case 6:
                processShortcutFromDrop(info, container, screenId, cell);
                return;
            case 2:
            case 3:
            default:
                throw new IllegalStateException("Unknown item type: " + info.itemType);
            case 4:
            case 5:
                int[] span = {spanX, spanY};
                addAppWidgetFromDrop((PendingAddWidgetInfo) info, container, screenId, cell, span);
                return;
        }
    }

    private void processShortcutFromDrop(PendingAddItemInfo info, long container, long screenId, int[] cell) {
        resetAddInfo();
        this.mPendingAddInfo.container = container;
        this.mPendingAddInfo.screenId = screenId;
        this.mPendingAddInfo.dropPos = null;
        if (cell != null) {
            this.mPendingAddInfo.cellX = cell[0];
            this.mPendingAddInfo.cellY = cell[1];
        }
        Intent createShortcutIntent = new Intent("android.intent.action.CREATE_SHORTCUT").setComponent(info.componentName);
        this.mPendingRequestArgs = PendingRequestArgs.forIntent(1, createShortcutIntent, this.mPendingAddInfo);
        Utilities.startActivityForResultSafely(this, createShortcutIntent, 1);
    }

    private void addAppWidgetFromDrop(PendingAddWidgetInfo info, long container, long screenId, int[] cell, int[] span) {
        resetAddInfo();
        ItemInfo itemInfo = this.mPendingAddInfo;
        info.container = container;
        itemInfo.container = container;
        ItemInfo itemInfo2 = this.mPendingAddInfo;
        info.screenId = screenId;
        itemInfo2.screenId = screenId;
        this.mPendingAddInfo.dropPos = null;
        this.mPendingAddInfo.minSpanX = info.minSpanX;
        this.mPendingAddInfo.minSpanY = info.minSpanY;
        if (cell != null) {
            this.mPendingAddInfo.cellX = cell[0];
            this.mPendingAddInfo.cellY = cell[1];
        }
        if (span != null) {
            this.mPendingAddInfo.spanX = span[0];
            this.mPendingAddInfo.spanY = span[1];
        }
        AppWidgetHostView hostView = info.boundWidget;
        if (hostView != null) {
            addAppWidgetImpl(hostView.getAppWidgetId(), info, hostView, info.info);
            info.boundWidget = null;
        } else {
            int appWidgetId = LauncherAppState.getInstance().getAppWidgetHost().allocateAppWidgetId();
            Bundle options = info.bindOptions;
            this.mAppWidgetManager.bindAppWidgetIdIfAllowed(appWidgetId, info.info, options);
            addAppWidgetImpl(appWidgetId, info, null, info.info);
        }
    }

    public FolderIcon addFolder(CellLayout layout, long container, long screenId, int cellX, int cellY) {
        FolderInfo folderInfo = new FolderInfo();
        folderInfo.title = getText(R.string.folder_name);
        LauncherModel.addItemToDatabase(this, folderInfo, container, screenId, cellX, cellY);
        sFolders.put(folderInfo.id, folderInfo);
        FolderIcon newFolder = FolderIcon.fromXml(R.layout.folder_icon, this, layout, folderInfo, this.mAssetCache);
        this.mWorkspace.addInScreen(newFolder, container, screenId, cellX, cellY, 1, 1, isWorkspaceLocked());
        CellLayout parent = this.mWorkspace.getParentCellLayoutForView(newFolder);
        parent.getShortcutsAndWidgets().measureChild(newFolder);
        return newFolder;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeFolder(FolderInfo folder) {
        sFolders.remove(folder.id);
    }

    public boolean removeItem(View v, ItemInfo itemInfo, boolean deleteFromDb) {
        if (itemInfo instanceof FolderInfo) {
            FolderInfo folderInfo = (FolderInfo) itemInfo;
            if (v instanceof FolderIcon) {
                ((FolderIcon) v).removeListeners();
            }
            this.mWorkspace.removeWorkspaceItem(v);
            if (deleteFromDb) {
                LauncherModel.deleteItemFromDatabase(this, folderInfo);
                return true;
            }
            return true;
        }
        return true;
    }

    private void registerContentObservers() {
        ContentResolver resolver = getContentResolver();
        Uri settingUri = Settings.Global.getUriFor("buttons_show_on_screen_navkeys");
        if (settingUri == null) {
            settingUri = Settings.System.getUriFor(PreferencesHelper.DEV_FORCE_SHOW_NAVBAR);
        }
        if (settingUri != null) {
            resolver.registerContentObserver(settingUri, true, this.mNavigationObserver);
        }
        PermissionUtils.requestPermission(this, "android.permission.READ_CONTACTS", 202);
        this.mWeatherProvider = new WeatherProvider(this);
        this.mWeatherProvider.registerContentObserver(resolver);
    }

    /* loaded from: classes.dex */
    private class ContactsObserver extends ContentObserver {
        ContactsObserver() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange) {
            super.onChange(selfChange);
            Launcher.this.mGlobalSearchController.getContactsDb();
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x000b. Please report as an issue. */
    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent event) {
        if (event.getAction() == 0) {
            switch (event.getKeyCode()) {
                case 3:
                    return true;
                case 25:
                    if (Utilities.isPropertyEnabled(DUMP_STATE_PROPERTY)) {
                        dumpState();
                        return true;
                    }
                default:
                    return super.dispatchKeyEvent(event);
            }
        } else if (event.getAction() == 1) {
            switch (event.getKeyCode()) {
                case 3:
                    return true;
            }
        }
        return super.dispatchKeyEvent(event);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.mLauncherCallbacks == null || !this.mLauncherCallbacks.handleBackPressed()) {
            if (this.mDragController.isDragging()) {
                this.mDragController.cancelDrag();
                return;
            }
            if (isAppsViewVisible()) {
                showWorkspace(true);
                return;
            }
            if (isWidgetsViewVisible() || isCustomizationsViewVisible() || isShrunkenAllAppsVisible() || isWallpapersViewVisible()) {
                if (this.mClings == null || !this.mClings.isVisible()) {
                    showOverviewMode(true);
                    return;
                }
                return;
            }
            if (this.mWorkspace.isInOverviewMode()) {
                showWorkspace(true);
                bindSearchProviderChangedOnLeaveOverviewMode();
                executePendingAction(false);
                return;
            }
            if (this.mWorkspace.isOnCustomContentScreen() && (this.mClings == null || !this.mClings.isVisible())) {
                if (isDrawerOpen()) {
                    closeDrawer();
                    return;
                } else if (isEditingQuickPageItem()) {
                    leaveQuickPageEditMode();
                    return;
                } else {
                    this.mWorkspace.moveToAlternateScreen(true);
                    return;
                }
            }
            if (this.mWorkspace.getOpenFolder() != null) {
                Folder openFolder = this.mWorkspace.getOpenFolder();
                if (openFolder.isEditingName()) {
                    openFolder.dismissEditingName();
                    return;
                } else {
                    closeFolder();
                    return;
                }
            }
            if (isIconRearrangementViewVisible()) {
                showOverviewMode(true);
            } else {
                this.mWorkspace.exitWidgetResizeMode();
                this.mWorkspace.showOutlinesTemporarily();
            }
        }
    }

    private void bindSearchProviderChangedOnLeaveOverviewMode() {
        if (this.mShouldRefreshQsbSearchBarOnLeaveOverviewMode) {
            bindSearchProviderChanged(false);
            this.mShouldRefreshQsbSearchBarOnLeaveOverviewMode = false;
        }
    }

    public void onCustomizationsDone() {
        bindSearchProviderChangedOnLeaveOverviewMode();
        executePendingAction(false);
        refreshCustomContentOnStateChange();
        if (this.mOnLeaveCustomizationsCallbacks.size() > 0) {
            for (int i = 0; i < this.mOnLeaveCustomizationsCallbacks.size(); i++) {
                this.mOnLeaveCustomizationsCallbacks.get(i).run();
            }
            this.mOnLeaveCustomizationsCallbacks.clear();
        }
        if (this.mAppsView != null) {
            this.mAppsView.enableScrollBar(true);
            if (this.mAppsView.getAppsRecyclerView().getAdapter() == null) {
                this.mAppsView.getAppsRecyclerView().setAdapter(this.mAppsView.getAdapter());
            }
            this.mAppsView.getAdapter().setUpdateIconsInBackground(false);
        }
    }

    @Override // net.oneplus.h2launcher.LauncherProviderChangeListener
    public void onAppWidgetHostReset() {
        LauncherAppWidgetHost widgetHost = LauncherAppState.getInstance().getAppWidgetHost();
        if (widgetHost != null) {
            widgetHost.startListening();
        }
        bindSearchProviderChanged(false);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        Logger.d(TAG, "onClick");
        if (v.getWindowToken() != null && this.mWorkspace.isFinishedSwitchingState()) {
            if (v instanceof Workspace) {
                if (this.mWorkspace.isInOverviewMode()) {
                    showWorkspace(true);
                    bindSearchProviderChangedOnLeaveOverviewMode();
                    executePendingAction(false);
                    invalidateHasCustomContentToLeft();
                    return;
                }
                if (isIconRearrangementMode()) {
                    showOverviewMode(true);
                    return;
                }
                return;
            }
            if ((v instanceof CellLayout) && this.mWorkspace.isInOverviewMode()) {
                CellLayout cellLayout = (CellLayout) v;
                boolean hasOverviewEmptyScreen = this.mWorkspace.getIdForScreen(cellLayout) == -201;
                showWorkspace(this.mWorkspace.indexOfChild(v), true, hasOverviewEmptyScreen);
                bindSearchProviderChangedOnLeaveOverviewMode();
                executePendingAction(false);
                invalidateHasCustomContentToLeft();
            }
            Object tag = v.getTag();
            if (tag instanceof ShortcutInfo) {
                onClickAppShortcut(v);
                return;
            }
            if (tag instanceof FolderInfo) {
                if (v instanceof FolderIcon) {
                    onClickFolderIcon(v);
                }
            } else {
                if (v == this.mAllAppsButton) {
                    onClickAllAppsButton(v);
                    return;
                }
                if (tag instanceof AppInfo) {
                    startAppShortcutOrInfoActivity(v);
                } else if ((tag instanceof LauncherAppWidgetInfo) && (v instanceof PendingAppWidgetHostView)) {
                    onClickPendingWidget((PendingAppWidgetHostView) v);
                }
            }
        }
    }

    @Override // android.view.View.OnTouchListener
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouch(View v, MotionEvent event) {
        return false;
    }

    public void onClickPendingWidget(final PendingAppWidgetHostView v) {
        if (this.mIsSafeModeEnabled) {
            Toast.makeText(this, R.string.safemode_widget_error, 0).show();
            return;
        }
        if (!isIconRearrangementMode()) {
            final LauncherAppWidgetInfo info = (LauncherAppWidgetInfo) v.getTag();
            LauncherAppWidgetHost widgetHost = LauncherAppState.getInstance().getAppWidgetHost();
            if (v.isReadyForClickSetup()) {
                int widgetId = info.appWidgetId;
                AppWidgetProviderInfo appWidgetInfo = this.mAppWidgetManager.getAppWidgetInfo(widgetId);
                if (appWidgetInfo != null) {
                    this.mPendingAddWidgetInfo = LauncherAppWidgetProviderInfo.fromProviderInfo(this, appWidgetInfo);
                    this.mPendingAddInfo.copyFrom(info);
                    this.mPendingAddWidgetId = widgetId;
                    AppWidgetManagerCompat.getInstance(this).startConfigActivity(appWidgetInfo, info.appWidgetId, this, widgetHost, 12);
                    return;
                }
                return;
            }
            if (info.installProgress < 0) {
                final String packageName = info.providerName.getPackageName();
                showBrokenAppInstallDialog(packageName, new DialogInterface.OnClickListener() { // from class: net.oneplus.h2launcher.Launcher.28
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int id) {
                        Launcher.this.startActivitySafely(v, LauncherModel.getMarketIntent(packageName), info);
                    }
                });
            } else {
                startActivitySafely(v, LauncherModel.getMarketIntent(info.providerName.getPackageName()), info);
            }
        }
    }

    protected void onClickAllAppsButton(View v) {
        if (!isAppsViewVisible()) {
            showAppsView(true, false, true, false);
            if (this.mLauncherCallbacks != null) {
                this.mLauncherCallbacks.onClickAllAppsButton(v);
            }
            this.mAllAppsViewController.setFirstInitialized(false);
        }
    }

    protected void onLongClickAllAppsButton() {
        if (!isAppsViewVisible()) {
            showAppsView(true, false, true, true);
            this.mAllAppsViewController.setFirstInitialized(false);
        }
    }

    private void showBrokenAppInstallDialog(final String packageName, DialogInterface.OnClickListener onSearchClickListener) {
        new OPAlertDialog.Builder(this).setTitle(R.string.abandoned_promises_title).setMessage(R.string.abandoned_promise_explanation).setPositiveButton(R.string.abandoned_search, onSearchClickListener).setNeutralButton(R.string.abandoned_clean_this, new DialogInterface.OnClickListener() { // from class: net.oneplus.h2launcher.Launcher.29
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int id) {
                UserHandleCompat user = UserHandleCompat.myUserHandle();
                Launcher.this.mWorkspace.removeAbandonedPromise(packageName, user);
            }
        }).create().show();
    }

    protected void onClickAppShortcut(final View v) {
        Object tag = v.getTag();
        if (!(tag instanceof ShortcutInfo)) {
            throw new IllegalArgumentException("Input must be a Shortcut");
        }
        if (isIconRearrangementMode()) {
            this.mIconRearrangementHelper.addShortcut(v);
            return;
        }
        ShortcutInfo shortcut = (ShortcutInfo) tag;
        if (shortcut.isDisabled != 0 && (shortcut.isDisabled & 4) == 0 && (shortcut.isDisabled & 8) == 0) {
            int error = R.string.activity_not_available;
            if ((shortcut.isDisabled & 1) != 0) {
                error = R.string.safemode_shortcut_error;
            }
            Toast.makeText(this, error, 0).show();
            return;
        }
        Intent intent = shortcut.intent;
        if (intent.getComponent() != null) {
            String shortcutClass = intent.getComponent().getClassName();
            if (shortcutClass.equals(MemoryDumpActivity.class.getName())) {
                MemoryDumpActivity.startDump(this);
                return;
            } else if (shortcutClass.equals(ToggleWeightWatcher.class.getName())) {
                toggleShowWeightWatcher();
                return;
            }
        }
        if ((v instanceof BubbleTextView) && shortcut.isPromise() && !shortcut.hasStatusFlag(4)) {
            showBrokenAppInstallDialog(shortcut.getTargetComponent().getPackageName(), new DialogInterface.OnClickListener() { // from class: net.oneplus.h2launcher.Launcher.30
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialog, int id) {
                    Launcher.this.startAppShortcutOrInfoActivity(v);
                }
            });
            return;
        }
        startAppShortcutOrInfoActivity(v);
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onClickAppShortcut(v);
        }
    }

    void startAppShortcutOrInfoActivity(View v) {
        ShortcutInfo shortcut;
        Intent intent;
        UserHandleCompat user;
        Object tag = v.getTag();
        if (tag instanceof ShortcutInfo) {
            shortcut = (ShortcutInfo) tag;
            intent = shortcut.intent;
            long j = shortcut.id;
            int i = shortcut.itemType;
            user = shortcut.user;
            int[] pos = new int[2];
            v.getLocationOnScreen(pos);
            intent.setSourceBounds(new Rect(pos[0], pos[1], pos[0] + v.getWidth(), pos[1] + v.getHeight()));
        } else if (tag instanceof AppInfo) {
            shortcut = null;
            intent = ((AppInfo) tag).intent;
            long j2 = ((AppInfo) tag).id;
            if (intent.hasExtra(ItemInfo.EXTRA_PROFILE)) {
                long serialNumber = intent.getLongExtra(ItemInfo.EXTRA_PROFILE, -1L);
                user = UserManagerCompat.getInstance(this).getUserForSerialNumber(serialNumber);
            } else {
                user = UserHandleCompat.fromIntent(intent);
            }
        } else {
            throw new IllegalArgumentException("Input must be a Shortcut or AppInfo");
        }
        boolean success = startActivitySafely(v, intent, tag);
        getStats().recordLaunch(v, intent, shortcut, (ItemInfo) tag, user == null ? UserHandleCompat.myUserHandle() : user);
        if (success && (v instanceof BubbleTextView)) {
            this.mWaitingForResume = (BubbleTextView) v;
            this.mWaitingForResume.setStayPressed(true);
        }
    }

    protected void onClickFolderIcon(View v) {
        if (!(v instanceof FolderIcon)) {
            throw new IllegalArgumentException("Input must be a FolderIcon");
        }
        if (this.mWorkspace.isTransiting()) {
            Logger.d(TAG, "onClickFolder# workspace layout transition in progress, ignore click");
            return;
        }
        FolderIcon folderIcon = (FolderIcon) v;
        FolderInfo info = folderIcon.getFolderInfo();
        Folder openFolder = this.mWorkspace.getFolderForTag(info);
        if (info.opened && openFolder == null) {
            Log.d(TAG, "Folder info marked as open, but associated folder is not open. Screen: " + info.screenId + " (" + info.cellX + ", " + info.cellY + ")");
            info.opened = false;
        }
        if (!info.opened && !folderIcon.getFolder().isDestroyed()) {
            closeFolder();
            openFolder(folderIcon);
        } else if (openFolder != null) {
            int folderScreen = this.mWorkspace.getPageForView(openFolder);
            closeFolder(openFolder, true);
            if (folderScreen != this.mWorkspace.getCurrentPage()) {
                closeFolder();
                openFolder(folderIcon);
            }
        }
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onClickFolderIcon(v);
        }
    }

    protected void onClickAddWidgetButton(View view) {
        if (this.mIsSafeModeEnabled) {
            Toast.makeText(this, R.string.safemode_widget_error, 0).show();
        } else {
            showWidgetsView(true, true);
            if (this.mLauncherCallbacks != null) {
                this.mLauncherCallbacks.onClickAddWidgetButton(view);
            }
        }
        executePendingAction(true);
        this.mUtilsButtonClicked = new boolean[2];
        updateUtilsButtonVisibility();
    }

    protected void onClickWallpaperPicker(View v) {
        Logger.d(TAG, "onClickWallpaperPicker");
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onClickWallpaperPicker(v);
        } else {
            updateWallpaperPreview();
            showWallpapersView(true);
        }
        executePendingAction(true);
        this.mUtilsButtonClicked = new boolean[2];
        updateUtilsButtonVisibility();
    }

    public void updateWallpaperPreview() {
        this.mScreenshotTask = new ScreenshotComposer(this).execute(new Void[0]);
    }

    public boolean isWallpaperPreviewUpdating() {
        return Utilities.isTaskUnfinished(this.mScreenshotTask);
    }

    public void cancelApplyingIconPack() {
        TaskWorker.get().cancelTask(APPLY_ICON_PACK_TASK_CALLER);
        if (Utilities.isTaskUnfinished(this.mApplyIconPackTask)) {
            this.mApplyIconPackTask.cancel(true);
        }
    }

    protected void onClickCustomizationButton(View v) {
        Logger.d(TAG, "onClickCustomizationButton");
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onClickCustomizationButton(v);
        } else {
            showCustomizationsView(true);
        }
        executePendingAction(true);
        this.mUtilsButtonClicked = new boolean[2];
        updateUtilsButtonVisibility();
    }

    protected void onClickSettingsButton(View v) {
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onClickSettingsButton(v);
        } else {
            Intent intent = new Intent();
            intent.setClass(this, CustomizationSettingsActivity.class);
            startActivity(intent);
        }
        executePendingAction(true);
        this.mUtilsButtonClicked = new boolean[2];
        updateUtilsButtonVisibility();
    }

    protected void onClickSortButton() {
        if (!this.mWorkspace.getNearestLayout().hasSortableChild()) {
            Logger.d(TAG, "skip sort since there is no sortable child");
            return;
        }
        this.mNextAction = 1;
        this.mCurrentLayout = this.mWorkspace.getNearestLayout();
        this.mCurrentLayout.sortAllChildrens();
        this.mUtilsButtonClicked[0] = true;
        updateUtilsButtonVisibility();
    }

    protected void onClickClearButton() {
        executePendingAction(true);
        this.mNextAction = 2;
        this.mCurrentLayout = this.mWorkspace.getNearestLayout();
        this.mCurrentLayout.getShortcutsAndWidgets().animate().scaleX(0.0f).scaleY(0.0f);
        this.mUtilsButtonClicked[1] = true;
        updateUtilsButtonVisibility();
    }

    protected void onClickUndoButton() {
        this.mUndoAction = true;
        executePendingAction(true);
        updateUtilsButtonVisibility();
    }

    protected void onClickIconRearrangementButton() {
        showIconRearrangementView(true);
        executePendingAction(true);
        this.mUtilsButtonClicked = new boolean[2];
        updateUtilsButtonVisibility();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateUtilsButtonVisibility() {
        if (this.mUndoAction || this.mNextAction == 0) {
            setUtilsButtonEnabled(this.mLeftUndoButton, false);
            setUtilsButtonEnabled(this.mRightUndoButton, false);
            setUtilsButtonEnabled(this.mClearButton, true);
            if (!this.mUtilsButtonClicked[1] && !this.mUtilsButtonClicked[0]) {
                setUtilsButtonEnabled(this.mSortButton, true);
                return;
            }
            return;
        }
        if (this.mUtilsButtonClicked[0]) {
            setUtilsButtonEnabled(this.mSortButton, false);
            setUtilsButtonEnabled(this.mLeftUndoButton, true);
            setUtilsButtonEnabled(this.mClearButton, false);
            setUtilsButtonEnabled(this.mRightUndoButton, false);
        }
        if (this.mUtilsButtonClicked[1]) {
            setUtilsButtonEnabled(this.mClearButton, false);
            setUtilsButtonEnabled(this.mRightUndoButton, true);
            setUtilsButtonEnabled(this.mSortButton, false);
            setUtilsButtonEnabled(this.mLeftUndoButton, false);
        }
    }

    private void setUtilsButtonEnabled(View button, boolean enabled) {
        CellLayout nearest;
        if (button != null) {
            button.setEnabled(enabled);
            button.setVisibility(enabled ? 0 : 8);
            if (enabled && this.mWorkspace.isInOverviewMode() && button == this.mSortButton && (nearest = this.mWorkspace.getNearestLayout()) != null) {
                boolean sortableChild = nearest.hasSortableChild();
                button.setAlpha(sortableChild ? 1.0f : 0.26f);
                button.setOnTouchListener(sortableChild ? getHapticFeedbackTouchListener() : null);
                button.setSoundEffectsEnabled(sortableChild);
            }
        }
    }

    private void executePendingAction(boolean stillOverviewMode) {
        switch (this.mNextAction) {
            case 1:
                if (this.mUndoAction) {
                    this.mCurrentLayout.revertSortAllChildrens();
                    updateUtilsButtonVisibility();
                    this.mUtilsButtonClicked[0] = false;
                    break;
                } else {
                    this.mCurrentLayout.commitTempPlacement();
                    break;
                }
            case 2:
                if (this.mUndoAction) {
                    this.mCurrentLayout.getShortcutsAndWidgets().animate().scaleX(1.0f).scaleY(1.0f);
                    updateUtilsButtonVisibility();
                    this.mUtilsButtonClicked[1] = false;
                    break;
                } else {
                    ShortcutAndWidgetContainer container = this.mCurrentLayout.getShortcutsAndWidgets();
                    for (int i = 0; i < container.getChildCount(); i++) {
                        View child = container.getChildAt(i);
                        LauncherModel.deleteItemFromDatabase(this, (ItemInfo) child.getTag());
                    }
                    this.mCurrentLayout.removeAllViews();
                    container.animate().cancel();
                    container.setScaleX(1.0f);
                    container.setScaleY(1.0f);
                    this.mWorkspace.removeExtraEmptyScreen(true, true);
                    break;
                }
        }
        this.mNextAction = 0;
        this.mUndoAction = false;
        if (!stillOverviewMode) {
            this.mHandler.postDelayed(new Runnable() { // from class: net.oneplus.h2launcher.Launcher.31
                @Override // java.lang.Runnable
                public void run() {
                    Launcher.this.mUtilsButtonClicked = new boolean[2];
                    Launcher.this.updateUtilsButtonVisibility();
                }
            }, 300L);
        }
    }

    public View.OnTouchListener getHapticFeedbackTouchListener() {
        if (this.mHapticFeedbackTouchListener == null) {
            this.mHapticFeedbackTouchListener = new View.OnTouchListener() { // from class: net.oneplus.h2launcher.Launcher.32
                @Override // android.view.View.OnTouchListener
                @SuppressLint({"ClickableViewAccessibility"})
                public boolean onTouch(View v, MotionEvent event) {
                    if ((event.getAction() & 255) == 0) {
                        v.performHapticFeedback(1);
                        return false;
                    }
                    return false;
                }
            };
        }
        return this.mHapticFeedbackTouchListener;
    }

    public void onDragStarted(View view) {
        if (isOnCustomContent()) {
            moveWorkspaceToDefaultScreen();
        }
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onDragStarted(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onInteractionEnd() {
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onInteractionEnd();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onInteractionBegin() {
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onInteractionBegin();
        }
    }

    public void updateInteraction(Workspace.State fromState, Workspace.State toState) {
        boolean fromStateWithOverlay = fromState != Workspace.State.NORMAL;
        boolean toStateWithOverlay = toState != Workspace.State.NORMAL;
        if (toStateWithOverlay) {
            onInteractionBegin();
        } else if (fromStateWithOverlay) {
            onInteractionEnd();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void startApplicationDetailsActivity(ComponentName componentName, UserHandleCompat user) {
        try {
            LauncherAppsCompat launcherApps = LauncherAppsCompat.getInstance(this);
            launcherApps.showAppDetailsForProfile(componentName, user);
        } catch (ActivityNotFoundException e) {
            Toast.makeText(this, R.string.activity_not_found, 0).show();
            Log.e(TAG, "Unable to launch settings");
        } catch (SecurityException e2) {
            Toast.makeText(this, R.string.activity_not_found, 0).show();
            Log.e(TAG, "Launcher does not have permission to launch settings");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public void startApplicationEditDialog(final ComponentName componentName, final View dragView, ItemInfo itemInfo) {
        int flag;
        final boolean enableEditImage;
        final boolean enableEditLabel;
        Drawable icon;
        View root = View.inflate(this, R.layout.icon_edit_dialog, null);
        final UserHandleCompat user = itemInfo.user;
        if ((itemInfo instanceof AppInfo) || (itemInfo instanceof ShortcutInfo)) {
            if (itemInfo instanceof AppInfo) {
                flag = ((AppInfo) itemInfo).flags;
            } else {
                flag = ((ShortcutInfo) itemInfo).flags;
            }
            enableEditImage = (flag & 8) != 0;
            enableEditLabel = (flag & 4) != 0;
        } else {
            enableEditImage = true;
            enableEditLabel = true;
        }
        this.mAppEditComponent = componentName.flattenToString();
        this.mAppEditComponentName = componentName;
        final String packageName = componentName.getPackageName();
        String label = CustomInfoHelper.getCustomLabelForComponent(this, user, this.mAppEditComponent);
        if (itemInfo instanceof IDynamicShortcut) {
            icon = ((IDynamicShortcut) itemInfo).getStaticDrawable();
        } else {
            icon = CustomInfoHelper.getCustomIconForComponent(this, user, this.mAppEditComponent);
        }
        Logger.d(TAG, "[edit app] showing dialog for: %s", this.mAppEditComponent);
        this.mAppEditResourcePackage = null;
        this.mAppEditResourceShowListPackage = null;
        this.mAppEditHasReset = false;
        this.mAppEditIcon = (ImageButton) root.findViewById(R.id.app_edit_icon);
        if (enableEditImage) {
            this.mAppEditIcon.setOnClickListener(new View.OnClickListener() { // from class: net.oneplus.h2launcher.Launcher.33
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    InputMethodManager imm = (InputMethodManager) Launcher.this.getSystemService("input_method");
                    imm.hideSoftInputFromWindow(v.getWindowToken(), 0);
                    Launcher.this.showIconPackListPopupWindow(packageName);
                }
            });
        } else {
            this.mAppEditIcon.setEnabled(false);
            this.mAppEditIcon.setAlpha(DISABLE_ALPHA);
        }
        final EditText appLabel = (EditText) root.findViewById(R.id.app_edit_label);
        if (label != null && icon != null) {
            this.mAppEditIcon.setImageDrawable(icon);
            appLabel.setText(label);
            appLabel.setSelection(appLabel.getText().length());
        }
        if (!enableEditLabel) {
            appLabel.setEnabled(false);
        }
        OPAlertDialog.Builder builder = new OPAlertDialog.Builder(this);
        builder.setView(root).setTitle(R.string.action_edit);
        this.mAppEditDialog = builder.create();
        this.mAppEditDialog.setCancelable(true);
        this.mAppEditDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: net.oneplus.h2launcher.Launcher.34
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialog) {
                if (Launcher.this.mWorkspace != null) {
                    Launcher.this.mWorkspace.markCellsAsOccupiedForView();
                }
                dragView.setVisibility(0);
                dragView.setScaleX(0.0f);
                dragView.setScaleY(0.0f);
                dragView.animate().scaleX(1.0f).scaleY(1.0f);
            }
        });
        this.mAppEditDialog.show();
        Button resetButton = (Button) root.findViewById(R.id.reset_button);
        resetButton.setOnClickListener(new View.OnClickListener() { // from class: net.oneplus.h2launcher.Launcher.35
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                Logger.d(Launcher.TAG, "[edit app] reset app packageName:%s", packageName);
                Launcher.this.mAppEditResourceName = Launcher.this.mAppEditResourcePackage = null;
                Launcher.this.mAppEditHasReset = true;
                Launcher.this.mAssetCache.updateIconsForPkg(packageName, user, true);
                if (enableEditImage) {
                    Launcher.this.mAppEditIcon.setImageDrawable(CustomInfoHelper.getCurrentIconForComponent(Launcher.this, user, Launcher.this.mAppEditComponent));
                }
                String originLable = CustomInfoHelper.getDefaultLabelForComponent(Launcher.this, Launcher.this.mAppEditComponent);
                if (originLable != null && !originLable.equals(appLabel.getText().toString()) && enableEditLabel) {
                    appLabel.setText(originLable);
                    appLabel.setSelection(appLabel.getText().length());
                }
            }
        });
        Button okButton = (Button) root.findViewById(R.id.ok_button);
        final boolean z = enableEditImage;
        final boolean z2 = enableEditLabel;
        okButton.setOnClickListener(new View.OnClickListener() { // from class: net.oneplus.h2launcher.Launcher.36
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if ((Launcher.this.mAppEditResourcePackage != null || Launcher.this.mAppEditHasReset) && z) {
                    CustomInfoHelper.setCustomIconForComponent(Launcher.this, user, Launcher.this.mAppEditComponent, Launcher.this.mAppEditResourcePackage, Launcher.this.mAppEditResourceName);
                    Launcher.this.mAssetCache.changeCustomIcon(user, componentName);
                }
                if (z2) {
                    CustomInfoHelper.setCustomLabelForComponent(Launcher.this, user, Launcher.this.mAppEditComponent, appLabel.getText().toString());
                }
                Launcher.this.mAssetCache.updateIconsForComponentName(Launcher.this.mAppEditComponentName, user);
                Launcher.this.mWorkspace.updateShortcutsWithComponentName(Integer.MIN_VALUE, user, Launcher.this.mAppEditComponent);
                Launcher.this.mAllAppsViewController.updateAllAppsEntries(Launcher.this.mAssetCache, Launcher.this.mAppEditComponent, true);
                ArrayList<AppInfo> list = new ArrayList<>();
                Intent intent = new Intent();
                intent.putExtra("android.intent.extra.USER", user.getUser());
                intent.setComponent(componentName);
                list.add(Launcher.this.createAppDragInfo(intent));
                Launcher.this.mAllAppsViewController.updateApps(list);
                Launcher.this.mAllAppsViewController.notifyDataSetChanged();
                Launcher.this.onComponentChanged();
                Launcher.this.mGlobalSearchController.updateAppInfo(componentName, user);
                Logger.d(Launcher.TAG, "[edit app] pkgName:%s label:%s, ResPkg:%s ResName:%s", packageName, appLabel.getText().toString(), Launcher.this.mAppEditResourcePackage, Launcher.this.mAppEditResourceName);
                Launcher.this.mAppEditDialog.dismiss();
            }
        });
        WindowManager.LayoutParams lp = new WindowManager.LayoutParams();
        Window appEditDialogWindow = this.mAppEditDialog.getWindow();
        if (appEditDialogWindow != null) {
            lp.copyFrom(appEditDialogWindow.getAttributes());
            lp.width = getResources().getDimensionPixelSize(R.dimen.edit_dialog_width);
            lp.height = getResources().getDimensionPixelSize(R.dimen.edit_dialog_height);
            appEditDialogWindow.setAttributes(lp);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showIconPackListPopupWindow(final String packageName) {
        Logger.d(TAG, "[edit app] showIconPackListPopupWindow");
        final CharSequence[][] iconPackList = IconPackHelper.getIconPackList(this, false);
        ArrayList<CharSequence> itemNames = new ArrayList<>(Arrays.asList(iconPackList[0]));
        final ListPopupWindow listPopupWindow = new ListPopupWindow(this);
        int contentWidth = getResources().getDimensionPixelSize(R.dimen.edit_dialog_icon_popup_window_width);
        listPopupWindow.setAdapter(new ArrayAdapter(this, R.layout.icon_edit_list_item, itemNames));
        listPopupWindow.setAnchorView(this.mAppEditIcon);
        listPopupWindow.setModal(true);
        listPopupWindow.setContentWidth(contentWidth);
        int contentHeight = getResources().getDimensionPixelSize(R.dimen.oneplus_contorl_list_item_height_one_line1);
        int showItemCount = itemNames.size();
        if (showItemCount > 3) {
            showItemCount = 3;
        }
        int popupWindowHeight = showItemCount * contentHeight;
        listPopupWindow.setHeight(popupWindowHeight);
        listPopupWindow.setListSelector(getDrawable(R.drawable.ripple_with_mask));
        listPopupWindow.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: net.oneplus.h2launcher.Launcher.37
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                String iconPackPackage = iconPackList[1][position].toString();
                Intent i = new Intent(Launcher.this, (Class<?>) CustomIconSelectorActivity.class);
                i.putExtra(Launcher.INTENT_EXTRA_APP_PACKAGE, packageName);
                i.putExtra(Launcher.INTENT_EXTRA_ICON_PACK_PACKAGE, iconPackPackage);
                Launcher.this.mIsLeavingForSelectingIconPack = true;
                Launcher.this.mAppEditResourceShowListPackage = iconPackPackage;
                Launcher.this.startActivityForResult(i, 14);
                listPopupWindow.dismiss();
            }
        });
        if (itemNames.isEmpty()) {
            Toast.makeText(this, R.string.edit_dialog_no_icon_packs, 0).show();
        } else {
            listPopupWindow.show();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x009e A[Catch: SecurityException -> 0x012d, TryCatch #0 {SecurityException -> 0x012d, blocks: (B:38:0x000b, B:4:0x0019, B:6:0x002f, B:9:0x0046, B:11:0x004b, B:13:0x005e, B:15:0x006a, B:16:0x0082, B:18:0x008e, B:20:0x00df, B:22:0x00e3, B:23:0x00fe, B:25:0x0102, B:26:0x0092, B:28:0x009e, B:30:0x00aa, B:33:0x0117, B:36:0x0123), top: B:37:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0123 A[Catch: SecurityException -> 0x012d, TRY_LEAVE, TryCatch #0 {SecurityException -> 0x012d, blocks: (B:38:0x000b, B:4:0x0019, B:6:0x002f, B:9:0x0046, B:11:0x004b, B:13:0x005e, B:15:0x006a, B:16:0x0082, B:18:0x008e, B:20:0x00df, B:22:0x00e3, B:23:0x00fe, B:25:0x0102, B:26:0x0092, B:28:0x009e, B:30:0x00aa, B:33:0x0117, B:36:0x0123), top: B:37:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:6:0x002f A[Catch: SecurityException -> 0x012d, TryCatch #0 {SecurityException -> 0x012d, blocks: (B:38:0x000b, B:4:0x0019, B:6:0x002f, B:9:0x0046, B:11:0x004b, B:13:0x005e, B:15:0x006a, B:16:0x0082, B:18:0x008e, B:20:0x00df, B:22:0x00e3, B:23:0x00fe, B:25:0x0102, B:26:0x0092, B:28:0x009e, B:30:0x00aa, B:33:0x0117, B:36:0x0123), top: B:37:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0046 A[Catch: SecurityException -> 0x012d, TryCatch #0 {SecurityException -> 0x012d, blocks: (B:38:0x000b, B:4:0x0019, B:6:0x002f, B:9:0x0046, B:11:0x004b, B:13:0x005e, B:15:0x006a, B:16:0x0082, B:18:0x008e, B:20:0x00df, B:22:0x00e3, B:23:0x00fe, B:25:0x0102, B:26:0x0092, B:28:0x009e, B:30:0x00aa, B:33:0x0117, B:36:0x0123), top: B:37:0x000b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean startActivity(android.view.View r26, android.content.Intent r27, java.lang.Object r28) {
        /*
            Method dump skipped, instructions count: 396
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.Launcher.startActivity(android.view.View, android.content.Intent, java.lang.Object):boolean");
    }

    private void startActivity(UserHandleCompat user, Intent intent, Bundle optsBundle, LauncherAppsCompat launcherApps) {
        if (user == null || user.equals(UserHandleCompat.myUserHandle())) {
            startActivity(intent, optsBundle);
        } else {
            launcherApps.startActivityForProfile(intent.getComponent(), user, intent.getSourceBounds(), optsBundle);
        }
    }

    public boolean startActivitySafely(View v, Intent intent, Object tag) {
        if (this.mIsSafeModeEnabled && !Utilities.isSystemApp(this, intent)) {
            Toast.makeText(this, R.string.safemode_shortcut_error, 0).show();
            return false;
        }
        try {
            if (intent.hasExtra(ItemInfo.EXTRA_PROFILE)) {
                long serialNumber = intent.getLongExtra(ItemInfo.EXTRA_PROFILE, -1L);
                UserManagerCompat.getInstance(this).getUserForSerialNumber(serialNumber);
            }
            boolean useLaunchAnimation = (v == null || intent.hasExtra(INTENT_EXTRA_IGNORE_LAUNCH_ANIMATION)) ? false : true;
            Bundle optsBundle = useLaunchAnimation ? getActivityLaunchOptions(v) : null;
            ItemInfo item = (ItemInfo) tag;
            if (Utilities.ATLEAST_MARSHMALLOW && (item instanceof ShortcutInfo) && ((item.itemType == 1 || item.itemType == 6) && !((ShortcutInfo) item).isPromise())) {
                startShortcutIntentSafely(intent, optsBundle, item);
            } else {
                startActivity(v, intent, tag);
            }
            return true;
        } catch (ActivityNotFoundException | SecurityException e) {
            Toast.makeText(this, R.string.activity_not_found, 0).show();
            Log.e(TAG, "Unable to launch. tag=" + tag + " intent=" + intent, e);
            return false;
        }
    }

    public Bundle getActivityLaunchOptions(View v) {
        Drawable icon;
        if (Utilities.ATLEAST_MARSHMALLOW) {
            int left = 0;
            int top = 0;
            int width = v.getMeasuredWidth();
            int height = v.getMeasuredHeight();
            if ((v instanceof TextView) && (icon = Workspace.getTextViewIcon((TextView) v)) != null) {
                Rect bounds = icon.getBounds();
                left = (width - bounds.width()) / 2;
                top = v.getPaddingTop();
                width = bounds.width();
                height = bounds.height();
            }
            return ActivityOptions.makeClipRevealAnimation(v, left, top, width, height).toBundle();
        }
        if (Utilities.ATLEAST_LOLLIPOP_MR1) {
            return ActivityOptions.makeCustomAnimation(this, R.anim.task_open_enter, R.anim.no_anim).toBundle();
        }
        return null;
    }

    private void startShortcutIntentSafely(Intent intent, Bundle optsBundle, ItemInfo info) {
        RuntimeException e;
        try {
            StrictMode.VmPolicy oldPolicy = StrictMode.getVmPolicy();
            try {
                StrictMode.setVmPolicy(new StrictMode.VmPolicy.Builder().detectAll().penaltyLog().build());
                if (info.itemType == 6) {
                    String id = ((ShortcutInfo) info).getDeepShortcutId();
                    String packageName = intent.getPackage();
                    if (Utilities.ATLEAST_ANDROID_N_MR1) {
                        try {
                            LauncherApps launcherApps = (LauncherApps) getSystemService("launcherapps");
                            launcherApps.startShortcut(packageName, id, intent.getSourceBounds(), optsBundle, info.user.getUser());
                        } catch (IllegalStateException e2) {
                            e = e2;
                            Logger.e(TAG, "startShortcutIntentSafely: Failed to start shortcut", e);
                        } catch (SecurityException e3) {
                            e = e3;
                            Logger.e(TAG, "startShortcutIntentSafely: Failed to start shortcut", e);
                        }
                    }
                } else {
                    startActivity(intent, optsBundle);
                }
            } finally {
                StrictMode.setVmPolicy(oldPolicy);
            }
        } catch (SecurityException e4) {
            if (intent.getComponent() == null && "android.intent.action.CALL".equals(intent.getAction()) && checkSelfPermission("android.permission.CALL_PHONE") != 0) {
                this.mPendingRequestArgs = PendingRequestArgs.forIntent(13, intent, info);
                setWaitingForResult(this.mPendingRequestArgs != null);
                requestPermissions(new String[]{"android.permission.CALL_PHONE"}, 13);
                return;
            }
            throw e4;
        }
    }

    private void copyFolderIconToImage(FolderIcon fi) {
        DragLayer.LayoutParams lp;
        int width = fi.getMeasuredWidth();
        int height = fi.getMeasuredHeight();
        if (this.mFolderIconImageView == null) {
            this.mFolderIconImageView = new ImageView(this);
        }
        if (this.mFolderIconBitmap == null || this.mFolderIconBitmap.getWidth() != width || this.mFolderIconBitmap.getHeight() != height) {
            this.mFolderIconBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            this.mFolderIconCanvas = new Canvas(this.mFolderIconBitmap);
        }
        if (this.mFolderIconImageView.getLayoutParams() instanceof DragLayer.LayoutParams) {
            lp = (DragLayer.LayoutParams) this.mFolderIconImageView.getLayoutParams();
        } else {
            lp = new DragLayer.LayoutParams(width, height);
        }
        float scale = this.mDragLayer.getDescendantRectRelativeToSelf(fi, this.mRectForFolderAnimation);
        lp.customPosition = true;
        lp.x = this.mRectForFolderAnimation.left;
        lp.y = this.mRectForFolderAnimation.top;
        lp.width = (int) (width * scale);
        lp.height = (int) (height * scale);
        this.mFolderIconCanvas.drawColor(0, PorterDuff.Mode.CLEAR);
        fi.draw(this.mFolderIconCanvas);
        this.mFolderIconImageView.setImageBitmap(this.mFolderIconBitmap);
        if (fi.getFolder() != null) {
            this.mFolderIconImageView.setPivotX(fi.getFolder().getPivotXForIconAnimation());
            this.mFolderIconImageView.setPivotY(fi.getFolder().getPivotYForIconAnimation());
        }
        if (this.mDragLayer.indexOfChild(this.mFolderIconImageView) != -1) {
            this.mDragLayer.removeView(this.mFolderIconImageView);
        }
        this.mDragLayer.addView(this.mFolderIconImageView, lp);
        if (fi.getFolder() != null) {
            fi.getFolder().bringToFront();
        }
    }

    private void growAndFadeOutFolderIcon(FolderIcon fi) {
        if (fi != null) {
            PropertyValuesHolder alpha = PropertyValuesHolder.ofFloat("alpha", 0.0f);
            PropertyValuesHolder scaleX = PropertyValuesHolder.ofFloat("scaleX", 1.5f);
            PropertyValuesHolder scaleY = PropertyValuesHolder.ofFloat("scaleY", 1.5f);
            FolderInfo info = (FolderInfo) fi.getTag();
            if (info.container == -101) {
                CellLayout cl = (CellLayout) fi.getParent().getParent();
                CellLayout.LayoutParams lp = (CellLayout.LayoutParams) fi.getLayoutParams();
                cl.setFolderLeaveBehindCell(lp.cellX, lp.cellY);
            }
            copyFolderIconToImage(fi);
            fi.setVisibility(4);
            ObjectAnimator oa = LauncherAnimUtils.ofPropertyValuesHolder(this.mFolderIconImageView, alpha, scaleX, scaleY);
            if (Utilities.ATLEAST_LOLLIPOP) {
                oa.setInterpolator(new LogDecelerateInterpolator(100, 0));
            }
            oa.setDuration(getResources().getInteger(R.integer.config_folderExpandDuration));
            oa.start();
        }
    }

    private void shrinkAndFadeInFolderIcon(final FolderIcon fi) {
        if (fi != null) {
            PropertyValuesHolder alpha = PropertyValuesHolder.ofFloat("alpha", 1.0f);
            PropertyValuesHolder scaleX = PropertyValuesHolder.ofFloat("scaleX", 1.0f);
            PropertyValuesHolder scaleY = PropertyValuesHolder.ofFloat("scaleY", 1.0f);
            final CellLayout cl = (CellLayout) fi.getParent().getParent();
            this.mDragLayer.removeView(this.mFolderIconImageView);
            copyFolderIconToImage(fi);
            ObjectAnimator oa = LauncherAnimUtils.ofPropertyValuesHolder(this.mFolderIconImageView, alpha, scaleX, scaleY);
            oa.setDuration(getResources().getInteger(R.integer.config_folderExpandDuration));
            oa.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.Launcher.38
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    if (cl != null) {
                        cl.clearFolderLeaveBehind();
                        Launcher.this.mDragLayer.removeView(Launcher.this.mFolderIconImageView);
                        fi.setVisibility(0);
                    }
                }
            });
            oa.start();
        }
    }

    public void openFolder(FolderIcon folderIcon) {
        this.mWorkspace.disableLayoutTransitions();
        Folder folder = folderIcon.getFolder();
        Folder openFolder = this.mWorkspace != null ? this.mWorkspace.getOpenFolder() : null;
        if (openFolder != null && openFolder != folder) {
            closeFolder();
        }
        FolderInfo info = folder.mInfo;
        info.opened = true;
        ((CellLayout.LayoutParams) folderIcon.getLayoutParams()).canReorder = false;
        this.mDragController.removeDropTarget(folder);
        this.mDragController.addDropTarget(folder);
        folder.open();
        folder.sendAccessibilityEvent(32);
        getDragLayer().sendAccessibilityEvent(2048);
        showFoldersView(folderIcon.getFolder(), true);
    }

    public void doWorkspaceOrFolderIconAnimation() {
        if (StyleManager.getInstance().showDynamicIcon() && shouldUpdateDynamicIconState()) {
            Logger.d(TAG, "DynamicIcon doWorkspaceOrFolderIconAnimation be enter");
            Folder folder = this.mWorkspace != null ? this.mWorkspace.getOpenFolder() : null;
            if (folder != null) {
                folder.updateCurrentPageDynamicIconState();
            }
            if (this.mWorkspace != null) {
                this.mWorkspace.updateCurrentPageIconState();
                return;
            }
            return;
        }
        Logger.d(TAG, "DynamicIcon doWorkspaceOrFolderIconAnimation be skip");
    }

    public void closeFolder() {
        closeFolder(true);
    }

    public void closeFolder(boolean animate) {
        Folder folder = this.mWorkspace != null ? this.mWorkspace.getOpenFolder() : null;
        if (folder != null) {
            if (folder.isEditingName()) {
                folder.dismissEditingName();
            }
            closeFolder(folder, animate);
        }
    }

    public void closeFolder(Folder folder, boolean animate) {
        FolderIcon fi;
        folder.getInfo().opened = false;
        if (folder != null && folder.getParent() != null && folder.getParent().getParent() != null && (fi = (FolderIcon) this.mWorkspace.getViewForTag(folder.mInfo)) != null) {
            ((CellLayout.LayoutParams) fi.getLayoutParams()).canReorder = true;
        }
        folder.close(false);
        hideFoldersView(animate);
        getDragLayer().sendAccessibilityEvent(32);
        this.mWorkspace.enableLayoutTransitions();
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View v) {
        LauncherAppWidgetProviderInfo info;
        boolean isAllAppsButton = false;
        Logger.d(TAG, "onLongClick");
        if (!isDraggingEnabled() || isWorkspaceLocked() || this.mState != State.WORKSPACE) {
            return false;
        }
        if (this.mWorkspace.getOpenFolder() != null) {
            closeFolder();
            return true;
        }
        if (v == this.mAllAppsButton) {
            onLongClickAllAppsButton();
            return true;
        }
        if ((v instanceof LauncherAppWidgetHostView) && ((info = (LauncherAppWidgetProviderInfo) ((LauncherAppWidgetHostView) v).getAppWidgetInfo()) == null || info.isCustomWidget)) {
            return false;
        }
        if (v instanceof Workspace) {
            if (isIconRearrangementMode()) {
                showOverviewMode(true);
                return true;
            }
            if (this.mWorkspace.isInOverviewMode() || this.mWorkspace.isTouchActive()) {
                return false;
            }
            showOverviewMode(true);
            this.mWorkspace.performHapticFeedback(0, 1);
            return true;
        }
        CellLayout.CellInfo longClickCellInfo = null;
        View itemUnderLongClick = null;
        if (v.getTag() instanceof ItemInfo) {
            longClickCellInfo = new CellLayout.CellInfo(v, (ItemInfo) v.getTag());
            itemUnderLongClick = longClickCellInfo.cell;
            resetAddInfo();
        }
        boolean inHotseat = isHotseatLayout(v);
        if (!this.mDragController.isDragging()) {
            if (itemUnderLongClick == null) {
                this.mWorkspace.performHapticFeedback(0, 1);
                if (this.mWorkspace.isInOverviewMode()) {
                    if (v instanceof CellLayout) {
                        this.mReorderingLayout = (CellLayout) v;
                    }
                    this.mWorkspace.startReordering(v);
                } else {
                    showOverviewMode(true);
                }
            } else {
                if (inHotseat && isAllAppsButtonRank(this.mHotseatController.getOrderInHotseat(longClickCellInfo.cellX, longClickCellInfo.cellY))) {
                    isAllAppsButton = true;
                }
                if (!(itemUnderLongClick instanceof Folder) && !isAllAppsButton) {
                    this.mWorkspace.startDrag(longClickCellInfo);
                    if (!StyleManager.getInstance().showSearchBar()) {
                        enterSpringLoadedDragMode();
                    }
                }
            }
        }
        return true;
    }

    public boolean isHotseatLayout(View layout) {
        return this.mHotseatController.isHotseatLayout(layout);
    }

    public CellLayout getCellLayout(long container, long screenId) {
        if (container == -101) {
            return this.mHotseatController.getHotSeatLayout();
        }
        if (this.mWorkspace != null) {
            return this.mWorkspace.getScreenWithId(screenId);
        }
        return null;
    }

    public boolean isAllAppsVisible() {
        return isAppsViewVisible();
    }

    public boolean isAppsViewVisible() {
        return this.mState == State.APPS || this.mOnResumeState == State.APPS;
    }

    public boolean isFoldersViewVisible() {
        return this.mState == State.FOLDER;
    }

    public boolean isWidgetsViewVisible() {
        return this.mState == State.WIDGETS || this.mOnResumeState == State.WIDGETS;
    }

    public boolean isCustomizationsViewVisible() {
        return this.mState == State.CUSTOMIZATIONS || this.mOnResumeState == State.CUSTOMIZATIONS;
    }

    public boolean isShrunkenAllAppsVisible() {
        return this.mState == State.SHRUNKEN_ALLAPPS || this.mOnResumeState == State.SHRUNKEN_ALLAPPS;
    }

    public boolean isWallpapersViewVisible() {
        return this.mState == State.WALLPAPER || this.mOnResumeState == State.WALLPAPER;
    }

    public boolean isIconRearrangementViewVisible() {
        return this.mState == State.ICON_REARRANGEMENT || this.mOnResumeState == State.ICON_REARRANGEMENT;
    }

    private void setWorkspaceBackground(int background) {
        switch (background) {
            case 1:
                getWindow().setBackgroundDrawable(new ColorDrawable(0));
                return;
            case 2:
                getWindow().setBackgroundDrawable(null);
                return;
            default:
                getWindow().setBackgroundDrawable(this.mWorkspaceBackgroundDrawable);
                return;
        }
    }

    protected void changeWallpaperVisiblity(boolean visible) {
        int wpflags = visible ? 1048576 : 0;
        int curflags = getWindow().getAttributes().flags & 1048576;
        if (wpflags != curflags) {
            getWindow().setFlags(wpflags, 1048576);
        }
        setWorkspaceBackground(visible ? 0 : 2);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public void onTrimMemory(int level) {
        super.onTrimMemory(level);
        if (level >= 20) {
            SQLiteDatabase.releaseMemory();
        }
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onTrimMemory(level);
        }
        if (this.mWallpapersView != null) {
            this.mWallpapersView.onSystemLowMemory(level);
        }
        if (this.mGlobalSearchController != null) {
            this.mGlobalSearchController.onSystemLowMemory(level);
        }
    }

    public void showWorkspace(boolean animated) {
        showWorkspace(-1, animated, (Runnable) null);
    }

    public void showWorkspace(boolean animated, Runnable onCompleteRunnable) {
        showWorkspace(-1, animated, onCompleteRunnable);
    }

    protected void showWorkspace(int snapToPage, boolean animated, boolean hasOverviewEmptyScreen) {
        showWorkspace(snapToPage, animated, null, hasOverviewEmptyScreen);
    }

    void showWorkspace(int snapToPage, boolean animated, Runnable onCompleteRunnable) {
        showWorkspace(snapToPage, animated, onCompleteRunnable, false);
    }

    void showWorkspace(final int snapToPage, final boolean animated, final Runnable onCompleteRunnable, final boolean hasOverviewEmptyScreen) {
        boolean changed = (this.mState == State.WORKSPACE && this.mWorkspace.getState() == Workspace.State.NORMAL) ? false : true;
        if (isOnCustomContent()) {
            getWindow().addFlags(134217728);
            getWindow().getDecorView().requestApplyInsets();
        } else {
            getWindow().clearFlags(134217728);
            getWindow().getDecorView().requestApplyInsets();
        }
        if (isWallpapersViewVisible() && this.mWallpapersView != null) {
            if (!this.mShowWorkspaceWithoutSaveWallpaper) {
                this.mWallpapersView.saveWallpaperCustomizations();
            }
            Runnable runnable = new Runnable() { // from class: net.oneplus.h2launcher.Launcher.39
                @Override // java.lang.Runnable
                public void run() {
                    Launcher.this.showWorkspace(snapToPage, animated, onCompleteRunnable, hasOverviewEmptyScreen);
                }
            };
            if (this.mWallpapersView.waitUntilWallpaperSaved(runnable)) {
                return;
            }
        }
        this.mShowWorkspaceWithoutSaveWallpaper = false;
        if (changed) {
            this.mWorkspace.setVisibility(0);
            if (getIconRearrangementHelper() != null && getIconRearrangementHelper().hasLeftShortcut()) {
                Logger.d(TAG, "there are non-arranged icons, would be put on extraEmptyScreen");
            } else if (hasOverviewEmptyScreen) {
                this.mWorkspace.commitExtraEmptyScreen();
            } else {
                this.mWorkspace.removeExtraEmptyScreen(false, false);
            }
            this.mStateTransitionAnimation.startAnimationToWorkspace(this.mState, this.mWorkspace.getState(), Workspace.State.NORMAL, snapToPage, animated, onCompleteRunnable);
            if (this.mAllAppsButton != null) {
                this.mAllAppsButton.requestFocus();
            }
        }
        if (isInSearchMode()) {
            this.mGlobalSearchController.hideGlobalSearchWithoutAnimation();
        }
        this.mState = State.WORKSPACE;
        this.mUserPresent = true;
        updateAutoAdvanceState();
        if (changed) {
            getWindow().getDecorView().sendAccessibilityEvent(32);
        }
        CellLayout cellLayout = this.mWorkspace.getNearestLayout();
        if (cellLayout != null) {
            cellLayout.setBackground(null);
        }
    }

    public void showOverviewMode(final boolean animated) {
        getWindow().addFlags(134217728);
        getWindow().getDecorView().requestApplyInsets();
        if (isWallpapersViewVisible() && this.mWallpapersView != null) {
            this.mWallpapersView.saveWallpaperCustomizations();
            Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.Launcher.40
                @Override // java.lang.Runnable
                public void run() {
                    Launcher.this.showOverviewMode(animated);
                }
            };
            if (this.mWallpapersView.waitUntilWallpaperSaved(r)) {
                return;
            }
        }
        setupUtilsPanel();
        this.mWorkspace.setVisibility(0);
        this.mStateTransitionAnimation.startAnimationToWorkspace(this.mState, this.mWorkspace.getState(), Workspace.State.OVERVIEW, -1, animated, null);
        this.mState = State.WORKSPACE;
        CellLayout cellLayout = this.mWorkspace.getNearestLayout();
        if (cellLayout != null) {
            cellLayout.setBackground(null);
        }
        updateUtilsButtonVisibility();
    }

    void showAppsView(boolean animated, boolean resetListToTop, boolean updatePredictedApps, boolean focusSearchBar) {
        if (resetListToTop) {
            this.mAllAppsViewController.scrollToTop();
        }
        if (updatePredictedApps) {
            tryAndUpdatePredictedApps();
        }
        if (StyleManager.getInstance().showAllApps()) {
            showAppsOrWidgetsOrCustomizationsOrWallpaper(State.APPS, animated, focusSearchBar);
        }
    }

    public void showFoldersView(Folder current, boolean animated) {
        this.mFoldersView.addFolder(current);
        showFoldersView(animated);
    }

    public void showFoldersView(boolean animated) {
        this.mFoldersView.adjustMarginForIconRearrangeMode(this);
        this.mStateTransitionAnimation.startAnimationToFolders(this.mWorkspace.getState(), animated);
        if (!isIconRearrangementMode()) {
            this.mState = State.FOLDER;
        }
    }

    void hideFoldersView(boolean animate) {
        this.mStateTransitionAnimation.startAnimationToWorkspace(animate, new Runnable() { // from class: net.oneplus.h2launcher.Launcher.41
            @Override // java.lang.Runnable
            public void run() {
                Launcher.this.mFoldersView.adjustMarginForIconRearrangeMode(Launcher.this);
            }
        });
        if (!isIconRearrangementMode()) {
            this.mState = State.WORKSPACE;
        }
    }

    void showWidgetsView(boolean animated, boolean resetPageToZero) {
        if (resetPageToZero) {
            this.mWidgetsView.scrollToTop();
        }
        showAppsOrWidgetsOrCustomizationsOrWallpaper(State.WIDGETS, animated, false);
        this.mWidgetsView.post(new Runnable() { // from class: net.oneplus.h2launcher.Launcher.42
            @Override // java.lang.Runnable
            public void run() {
                Launcher.this.mWidgetsView.requestFocus();
            }
        });
    }

    public void showCustomizationsView(boolean animated) {
        if (this.mState != State.SHRUNKEN_ALLAPPS) {
            this.mCustomizationsView.resetPageToZero();
        }
        showAppsOrWidgetsOrCustomizationsOrWallpaper(State.CUSTOMIZATIONS, animated, false);
    }

    public void showShrunkenAllApps(boolean animated) {
        if (StyleManager.getInstance().showAllApps()) {
            showAppsOrWidgetsOrCustomizationsOrWallpaper(State.SHRUNKEN_ALLAPPS, animated, false);
        }
    }

    public void showWallpapersView(boolean animated) {
        if (this.mWallpapersView != null) {
            if (this.mState != State.WALLPAPER) {
                this.mWallpapersView.resetPageToZero();
            }
            showAppsOrWidgetsOrCustomizationsOrWallpaper(State.WALLPAPER, animated, false);
            return;
        }
        Logger.d(TAG, "wallpapers view is empty");
    }

    public void showIconRearrangementView(boolean animated) {
        showAppsOrWidgetsOrCustomizationsOrWallpaper(State.ICON_REARRANGEMENT, animated, false);
    }

    private boolean showAppsOrWidgetsOrCustomizationsOrWallpaper(State toState, boolean animated, boolean focusSearchBar) {
        if (this.mState != State.WORKSPACE && this.mState != State.APPS_SPRING_LOADED && this.mState != State.WIDGETS_SPRING_LOADED && this.mState != State.CUSTOMIZATIONS && this.mState != State.SHRUNKEN_ALLAPPS && this.mState != State.WALLPAPER && this.mState != State.ICON_REARRANGEMENT) {
            return false;
        }
        if (toState != State.APPS && toState != State.WIDGETS && toState != State.CUSTOMIZATIONS && toState != State.SHRUNKEN_ALLAPPS && toState != State.WALLPAPER && toState != State.ICON_REARRANGEMENT) {
            return false;
        }
        Logger.d(TAG, "launcher state change: fromState=%s, toState=%s", this.mWorkspace.getState(), toState);
        if (toState == State.APPS) {
            this.mStateTransitionAnimation.startAnimationToAllApps(this.mWorkspace.getState(), animated, focusSearchBar);
        } else if (toState == State.WIDGETS) {
            this.mStateTransitionAnimation.startAnimationToWidgets(this.mWorkspace.getState(), animated);
        } else if (toState == State.CUSTOMIZATIONS) {
            this.mStateTransitionAnimation.startAnimationToCustomizations(this.mWorkspace.getState(), animated);
        } else if (toState == State.SHRUNKEN_ALLAPPS) {
            this.mStateTransitionAnimation.startAnimationToShrunkenAllApps(this.mWorkspace.getState(), animated);
        } else if (toState == State.WALLPAPER) {
            this.mStateTransitionAnimation.startAnimationToWallpapers(this.mWorkspace.getState(), animated, this.mRequestCode, this.mResultCode, this.mData);
        } else {
            this.mStateTransitionAnimation.startAnimationToIconRearrangement(this.mWorkspace.getState(), animated);
        }
        this.mState = toState;
        this.mUserPresent = false;
        updateAutoAdvanceState();
        closeFolder();
        getWindow().getDecorView().sendAccessibilityEvent(32);
        return true;
    }

    public Animator startWorkspaceStateChangeAnimation(Workspace.State toState, int toPage, boolean animated, HashMap<View, Integer> layerViews) {
        Workspace.State fromState = this.mWorkspace.getState();
        Animator anim = this.mWorkspace.setStateWithAnimation(toState, toPage, animated, layerViews);
        updateInteraction(fromState, toState);
        return anim;
    }

    public void enterSpringLoadedDragMode() {
        if (this.mState != State.APPS_SPRING_LOADED && this.mState != State.WIDGETS_SPRING_LOADED) {
            this.mStateTransitionAnimation.startAnimationToWorkspace(this.mState, this.mWorkspace.getState(), Workspace.State.SPRING_LOADED, -1, true, null);
            this.mState = isWidgetsViewVisible() ? State.WIDGETS_SPRING_LOADED : State.APPS_SPRING_LOADED;
        }
    }

    public void exitSpringLoadedDragModeDelayed(final boolean successfulDrop, int delay, final Runnable onCompleteRunnable) {
        if (this.mState == State.APPS_SPRING_LOADED || this.mState == State.WIDGETS_SPRING_LOADED) {
            this.mHandler.postDelayed(new Runnable() { // from class: net.oneplus.h2launcher.Launcher.43
                @Override // java.lang.Runnable
                public void run() {
                    if (successfulDrop) {
                        Launcher.this.mWidgetsView.setVisibility(8);
                        Launcher.this.showWorkspace(true, onCompleteRunnable);
                    } else {
                        Launcher.this.exitSpringLoadedDragMode();
                    }
                }
            }, delay);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void exitSpringLoadedDragMode() {
        if (this.mState == State.APPS_SPRING_LOADED) {
            if (StyleManager.getInstance().showSearchBar()) {
                showAppsView(true, false, false, false);
                return;
            } else {
                showWorkspace(true);
                return;
            }
        }
        if (this.mState == State.WIDGETS_SPRING_LOADED) {
            showWidgetsView(true, false);
        }
    }

    private void tryAndUpdatePredictedApps() {
        List<ComponentKey> apps;
        if (this.mLauncherCallbacks != null && (apps = this.mLauncherCallbacks.getPredictedApps()) != null) {
            this.mAllAppsViewController.setPredictedApps(apps);
        }
    }

    void lockAllApps() {
    }

    void unlockAllApps() {
    }

    protected void disableVoiceButtonProxy(boolean disable) {
    }

    public View getOrCreateQsbBar() {
        if (this.mLauncherCallbacks != null && this.mLauncherCallbacks.providesSearch()) {
            return this.mLauncherCallbacks.getQsbBar();
        }
        if (this.mQsb == null) {
            if (this.mSearchProvider == null) {
                bindSearchProviderChanged(false);
                return null;
            }
            Bundle opts = new Bundle();
            opts.putInt("appWidgetCategory", 4);
            SharedPreferences sp = getSharedPreferences(LauncherAppState.getSharedPreferencesKey(), 0);
            LauncherAppWidgetHost widgetHost = LauncherAppState.getInstance().getAppWidgetHost();
            widgetHost.startListening();
            int widgetId = sp.getInt(QSB_WIDGET_ID, -1);
            AppWidgetProviderInfo widgetInfo = this.mAppWidgetManager.getAppWidgetInfo(widgetId);
            if (!this.mSearchProvider.provider.flattenToString().equals(sp.getString(QSB_WIDGET_PROVIDER, null)) || widgetInfo == null || !widgetInfo.provider.equals(this.mSearchProvider.provider)) {
                if (widgetId > -1) {
                    widgetHost.deleteAppWidgetId(widgetId);
                }
                widgetId = widgetHost.allocateAppWidgetId();
                if (!AppWidgetManagerCompat.getInstance(this).bindAppWidgetIdIfAllowed(widgetId, this.mSearchProvider, opts)) {
                    widgetHost.deleteAppWidgetId(widgetId);
                    widgetId = -1;
                }
                sp.edit().putInt(QSB_WIDGET_ID, widgetId).putString(QSB_WIDGET_PROVIDER, this.mSearchProvider.provider.flattenToString()).apply();
            }
            widgetHost.setQsbWidgetId(widgetId);
            if (widgetId != -1) {
                this.mQsb = widgetHost.createView(this, widgetId, this.mSearchProvider);
                this.mQsb.setId(R.id.qsb_widget);
                this.mQsb.updateAppWidgetOptions(opts);
                this.mQsb.setPadding(0, 0, 0, 0);
                if (this.mSearchBarVisible) {
                    this.mSearchDropTargetBar.addView(this.mQsb);
                    this.mSearchDropTargetBar.setQsbSearchBar(this.mQsb);
                    if (this.mSearchBarTransparent) {
                        if (this.mQsbOverlay == null) {
                            this.mQsbOverlay = View.inflate(this, R.layout.search_bar_transparent, null);
                            int height = getResources().getDimensionPixelSize(R.dimen.customization_quick_search_bar_height);
                            int marginSides = getResources().getDimensionPixelSize(R.dimen.customization_quick_search_bar_margin_sides);
                            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, height);
                            layoutParams.setMargins(marginSides, 0, marginSides, 0);
                            this.mQsbOverlay.setLayoutParams(layoutParams);
                        }
                        this.mSearchDropTargetBar.addView(this.mQsbOverlay);
                        this.mSearchDropTargetBar.setQsbSearchBarOverlay(this.mQsbOverlay);
                        this.mQsb.setAlpha(0.0f);
                    }
                }
            }
        }
        return this.mQsb;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent event) {
        boolean result = super.dispatchPopulateAccessibilityEvent(event);
        List<CharSequence> text = event.getText();
        text.clear();
        if (this.mState == State.APPS) {
            text.add(getString(R.string.all_apps_button_label));
        } else if (this.mState == State.WIDGETS) {
            text.add(getString(R.string.widget_button_text));
        } else if (this.mWorkspace != null) {
            text.add(this.mWorkspace.getCurrentPageDescription());
        } else {
            text.add(getString(R.string.all_apps_home_button_label));
        }
        return result;
    }

    /* loaded from: classes.dex */
    class CloseSystemDialogsIntentReceiver extends BroadcastReceiver {
        CloseSystemDialogsIntentReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Launcher.this.closeSystemDialogs();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class IconPackReceiver extends BroadcastReceiver {
        private IconPackReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            boolean previewOnly = intent.getBooleanExtra(Launcher.INTENT_EXTRA_PREVIEW_ONLY, false);
            Launcher.this.mApplyIconPackTask = new ApplyIconPackTask(previewOnly).execute(new Void[0]);
        }

        /* loaded from: classes.dex */
        private class ApplyIconPackTask extends AsyncTask<Void, Void, List<Pair<View, ItemInfo>>> {
            private ProgressDialog mApplyIconPackDialog;
            private boolean mPreviewOnly;

            ApplyIconPackTask(boolean previewOnly) {
                this.mPreviewOnly = previewOnly;
            }

            @Override // android.os.AsyncTask
            protected void onPreExecute() {
                if (!this.mPreviewOnly) {
                    String message = Launcher.this.getString(R.string.state_loading);
                    this.mApplyIconPackDialog = ProgressDialog.show(Launcher.this, null, message);
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public List<Pair<View, ItemInfo>> doInBackground(Void... params) {
                List<Pair<View, ItemInfo>> shortcuts;
                Launcher.this.mAssetCache.changeAssetPack();
                if (this.mPreviewOnly) {
                    shortcuts = Launcher.this.mWorkspace.getAllShortcutsInPage(Launcher.this.mWorkspace.getCurrentPage());
                } else {
                    shortcuts = Launcher.this.mWorkspace.getAllShortcuts();
                    Launcher.this.mAssetCache.updateDbIconsForIconPackChanged();
                }
                Iterator<Pair<View, ItemInfo>> it = shortcuts.iterator();
                while (true) {
                    if (it.hasNext()) {
                        Pair<View, ItemInfo> shortcut = it.next();
                        if (isCancelled()) {
                            break;
                        }
                        if (shortcut.first instanceof BubbleTextView) {
                            if (!(shortcut.second instanceof IDynamicShortcut) || !(shortcut.first instanceof IDynamicIcon)) {
                                Bitmap icon = ((ShortcutInfo) shortcut.second).getIcon(Launcher.this.mAssetCache, true);
                                if (icon != null) {
                                    FastBitmapDrawable iconDrawable = Launcher.this.createIconDrawable(icon);
                                    ((BubbleTextView) shortcut.first).setIcon(iconDrawable);
                                }
                            } else {
                                ((IDynamicShortcut) shortcut.second).refreshConfig();
                            }
                        }
                    } else if (!this.mPreviewOnly) {
                        if (StyleManager.getInstance().showAllApps()) {
                            Launcher.this.mAllAppsViewController.updateAllAppsEntries(Launcher.this.mAssetCache, null, false);
                        } else {
                            Launcher.this.mGlobalSearchController.onComponentChanged();
                        }
                    }
                }
                return shortcuts;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onPostExecute(List<Pair<View, ItemInfo>> shortcuts) {
                if (!this.mPreviewOnly) {
                    dismissProgressDialog(shortcuts);
                } else {
                    updateDesktopItems(shortcuts);
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onCancelled(List<Pair<View, ItemInfo>> pairs) {
                dismissProgressDialog(null);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void updateDesktopItems(List<Pair<View, ItemInfo>> shortcuts) {
                for (final Pair<View, ItemInfo> shortcut : shortcuts) {
                    Runnable updateItemRunnable = new Runnable() { // from class: net.oneplus.h2launcher.Launcher.IconPackReceiver.ApplyIconPackTask.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (shortcut.first instanceof BubbleTextView) {
                                ((BubbleTextView) shortcut.first).applyFromShortcutInfo((ShortcutInfo) shortcut.second, false, false);
                                if (shortcut.second instanceof IDynamicShortcut) {
                                    ((IDynamicShortcut) shortcut.second).updateIconCache();
                                    return;
                                }
                                return;
                            }
                            if (shortcut.first instanceof FolderIcon) {
                                FolderIcon folder = (FolderIcon) shortcut.first;
                                folder.getFolder().setScaledSize();
                                folder.setScaledLayout();
                                folder.invalidate();
                            }
                        }
                    };
                    TaskWorker.get().postUI(Launcher.APPLY_ICON_PACK_TASK_CALLER, updateItemRunnable);
                }
                if (!this.mPreviewOnly) {
                    if (StyleManager.getInstance().showAllApps()) {
                        Launcher.this.mAllAppsViewController.notifyDataSetChanged();
                    }
                    Launcher.this.onComponentChanged();
                }
            }

            private void dismissProgressDialog(final List<Pair<View, ItemInfo>> shortcuts) {
                if (this.mApplyIconPackDialog == null || !this.mApplyIconPackDialog.isShowing()) {
                    Logger.i(Launcher.TAG, "apply icon pack dialog is not valid or showing");
                    return;
                }
                DialogInterface.OnDismissListener onDismissListener = new DialogInterface.OnDismissListener() { // from class: net.oneplus.h2launcher.Launcher.IconPackReceiver.ApplyIconPackTask.2
                    @Override // android.content.DialogInterface.OnDismissListener
                    public void onDismiss(DialogInterface dialog) {
                        if (shortcuts != null && !shortcuts.isEmpty()) {
                            ApplyIconPackTask.this.updateDesktopItems(shortcuts);
                        }
                    }
                };
                this.mApplyIconPackDialog.setOnDismissListener(onDismissListener);
                this.mApplyIconPackDialog.dismiss();
                this.mApplyIconPackDialog = null;
            }
        }
    }

    /* loaded from: classes.dex */
    private class NavigationBarObserver extends ContentObserver {
        NavigationBarObserver() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:3:0x0004, code lost:
    
        if (r3 != false) goto L5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x000c, code lost:
    
        if (r1.mBindOnResumeCallbacks.remove(r2) != false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x000e, code lost:
    
        r1.mBindOnResumeCallbacks.add(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0014, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    boolean waitUntilResume(java.lang.Runnable r2, boolean r3) {
        /*
            r1 = this;
            boolean r0 = r1.mPaused
            if (r0 == 0) goto L15
            if (r3 == 0) goto Le
        L6:
            java.util.ArrayList<java.lang.Runnable> r0 = r1.mBindOnResumeCallbacks
            boolean r0 = r0.remove(r2)
            if (r0 != 0) goto L6
        Le:
            java.util.ArrayList<java.lang.Runnable> r0 = r1.mBindOnResumeCallbacks
            r0.add(r2)
            r0 = 1
        L14:
            return r0
        L15:
            r0 = 0
            goto L14
        */
        throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.Launcher.waitUntilResume(java.lang.Runnable, boolean):boolean");
    }

    private boolean waitUntilResume(Runnable run) {
        return waitUntilResume(run, false);
    }

    public void addOnResumeCallback(Runnable run) {
        this.mOnResumeCallbacks.add(run);
    }

    @Override // net.oneplus.h2launcher.LauncherModel.Callbacks
    public boolean setLoadOnResume() {
        if (!this.mPaused) {
            return false;
        }
        this.mOnResumeNeedsLoad = true;
        return true;
    }

    @Override // net.oneplus.h2launcher.LauncherModel.Callbacks
    public int getCurrentWorkspaceScreen() {
        if (this.mWorkspace != null) {
            return this.mWorkspace.getCurrentPage();
        }
        return 2;
    }

    @Override // net.oneplus.h2launcher.LauncherModel.Callbacks
    public void startBinding() {
        setWorkspaceLoading(true);
        this.mBindOnResumeCallbacks.clear();
        this.mWorkspace.clearDropTargets();
        this.mWorkspace.removeAllWorkspaceScreens();
        this.mWidgetsToAdvance.clear();
        this.mHotseatController.resetLayout();
    }

    @Override // net.oneplus.h2launcher.LauncherModel.Callbacks
    public void bindScreens(ArrayList<Long> orderedScreenIds) {
        bindAddScreens(orderedScreenIds);
        if (orderedScreenIds.size() == 0) {
            this.mWorkspace.addExtraEmptyScreen();
        }
    }

    @Override // net.oneplus.h2launcher.LauncherModel.Callbacks
    public void bindAddScreens(ArrayList<Long> orderedScreenIds) {
        int count = orderedScreenIds.size();
        for (int i = 0; i < count; i++) {
            this.mWorkspace.insertNewWorkspaceScreenBeforeEmptyScreen(orderedScreenIds.get(i).longValue());
        }
    }

    @Override // net.oneplus.h2launcher.LauncherModel.Callbacks
    public void bindQuickPage() {
        if (this.mWorkspace.hasCustomContent()) {
            Logger.d(TAG, " Is already has CustomContent no need to bindQuickPage");
            return;
        }
        createQuickPage();
        if (hasCustomContentToLeft()) {
            this.mWorkspace.createCustomContentContainer();
            populateCustomContentContainer();
        }
    }

    private boolean shouldShowWeightWatcher() {
        String spKey = LauncherAppState.getSharedPreferencesKey();
        SharedPreferences sp = getSharedPreferences(spKey, 0);
        return sp.getBoolean(SHOW_WEIGHT_WATCHER, false);
    }

    private void toggleShowWeightWatcher() {
        String spKey = LauncherAppState.getSharedPreferencesKey();
        SharedPreferences sp = getSharedPreferences(spKey, 0);
        boolean show = sp.getBoolean(SHOW_WEIGHT_WATCHER, true) ? false : true;
        sp.edit().putBoolean(SHOW_WEIGHT_WATCHER, show).apply();
        if (this.mWeightWatcher != null) {
            this.mWeightWatcher.setVisibility(show ? 0 : 8);
        }
    }

    private boolean shouldShowNewScreenInOverview() {
        String spKey = LauncherAppState.getSharedPreferencesKey();
        SharedPreferences sp = getSharedPreferences(spKey, 0);
        return sp.getBoolean(OVERVIEW_ADD_SCREEN, true);
    }

    private void disableNewScreenInOverview() {
        String spKey = LauncherAppState.getSharedPreferencesKey();
        SharedPreferences sp = getSharedPreferences(spKey, 0);
        sp.edit().putBoolean(OVERVIEW_ADD_SCREEN, false).apply();
    }

    @Override // net.oneplus.h2launcher.LauncherModel.Callbacks
    public void bindAppsAdded(final ArrayList<Long> newScreens, final ArrayList<ItemInfo> addNotAnimated, final ArrayList<ItemInfo> addAnimated, final ArrayList<AppInfo> addedApps) {
        Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.Launcher.44
            @Override // java.lang.Runnable
            public void run() {
                Launcher.this.bindAppsAdded(newScreens, addNotAnimated, addAnimated, addedApps);
            }
        };
        if (!waitUntilResume(r)) {
            if (isCustomizationsViewVisible()) {
                Logger.d(TAG, "Deferring update until onLeaveCustomizations()");
                this.mOnLeaveCustomizationsCallbacks.add(r);
                return;
            }
            if (addAnimated != null) {
                Iterator<ItemInfo> it = addAnimated.iterator();
                while (it.hasNext()) {
                    ItemInfo itemInfo = it.next();
                    if (itemInfo instanceof ShortcutInfo) {
                        ShortcutInfo shortcutInfo = (ShortcutInfo) itemInfo;
                        if (shortcutInfo.getTargetComponent() != null && LauncherModel.STK_PACKAGE_NAME.equals(shortcutInfo.getTargetComponent().getPackageName())) {
                            Logger.d(TAG, "bindAppsAdded STK enter wait addAnimated");
                        }
                    }
                }
            }
            if (addNotAnimated != null) {
                Iterator<ItemInfo> it2 = addNotAnimated.iterator();
                while (it2.hasNext()) {
                    ItemInfo itemInfo2 = it2.next();
                    if (itemInfo2 instanceof ShortcutInfo) {
                        ShortcutInfo shortcutInfo2 = (ShortcutInfo) itemInfo2;
                        if (shortcutInfo2.getTargetComponent() != null && LauncherModel.STK_PACKAGE_NAME.equals(shortcutInfo2.getTargetComponent().getPackageName())) {
                            Logger.d(TAG, "bindAppsAdded STK enter wait addNotAnimated");
                        }
                    }
                }
            }
            if (newScreens != null) {
                bindAddScreens(newScreens);
            }
            if (addNotAnimated != null && !addNotAnimated.isEmpty()) {
                bindItems(addNotAnimated, 0, addNotAnimated.size(), false);
            }
            if (addAnimated != null && !addAnimated.isEmpty()) {
                bindItems(addAnimated, 0, addAnimated.size(), true);
            }
            this.mWorkspace.removeExtraEmptyScreen(false, false);
            if (addedApps != null) {
                this.mAllAppsViewController.addApps(addedApps);
            }
            if (isIconRearrangementMode()) {
                this.mIconRearrangementHelper.processPackagedUpdateScreenChanged();
            }
            if (StyleManager.getInstance().showIconRearrangement()) {
                ArrayList<ItemInfo> needReplaceItems = new ArrayList<>();
                if (addNotAnimated != null) {
                    Iterator<ItemInfo> it3 = addNotAnimated.iterator();
                    while (it3.hasNext()) {
                        ItemInfo info = it3.next();
                        CellLayout layout = this.mWorkspace.getScreenWithId(info.screenId);
                        if (layout == null || layout.isDeleted()) {
                            needReplaceItems.add(info);
                        }
                    }
                }
                if (addAnimated != null) {
                    Iterator<ItemInfo> it4 = addAnimated.iterator();
                    while (it4.hasNext()) {
                        ItemInfo info2 = it4.next();
                        CellLayout layout2 = this.mWorkspace.getScreenWithId(info2.screenId);
                        if (layout2 == null || layout2.isDeleted()) {
                            needReplaceItems.add(info2);
                        }
                    }
                }
                if (needReplaceItems.size() > 0) {
                    Logger.w(TAG, "need to rebind Items because screen be deleted, count = %d", Integer.valueOf(needReplaceItems.size()));
                    Iterator<ItemInfo> it5 = needReplaceItems.iterator();
                    while (it5.hasNext()) {
                        Logger.w(TAG, "rebind Item = " + it5.next());
                    }
                    this.mModel.addAndBindAddedWorkspaceItems(getApplicationContext(), needReplaceItems);
                }
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:20:0x005d. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0053 A[SYNTHETIC] */
    @Override // net.oneplus.h2launcher.LauncherModel.Callbacks
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void bindItems(final java.util.ArrayList<net.oneplus.h2launcher.ItemInfo> r39, final int r40, final int r41, final boolean r42) {
        /*
            Method dump skipped, instructions count: 666
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.Launcher.bindItems(java.util.ArrayList, int, int, boolean):void");
    }

    @Override // net.oneplus.h2launcher.LauncherModel.Callbacks
    public void bindFolders(final LongArrayMap<FolderInfo> folders) {
        Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.Launcher.48
            @Override // java.lang.Runnable
            public void run() {
                Launcher.this.bindFolders(folders);
            }
        };
        if (!waitUntilResume(r)) {
            sFolders = folders.clone();
        }
    }

    @Override // net.oneplus.h2launcher.LauncherModel.Callbacks
    public void bindAppWidget(final LauncherAppWidgetInfo item) {
        Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.Launcher.49
            @Override // java.lang.Runnable
            public void run() {
                Launcher.this.bindAppWidget(item);
            }
        };
        if (!waitUntilResume(r)) {
            long start = SystemClock.uptimeMillis();
            Log.d(TAG, "bindAppWidget: " + item);
            Workspace workspace = this.mWorkspace;
            LauncherAppWidgetProviderInfo appWidgetInfo = LauncherModel.getProviderInfo(this, item.providerName, item.user);
            LauncherAppWidgetHost appWidgetHost = LauncherAppState.getInstance().getAppWidgetHost();
            if (!this.mIsSafeModeEnabled && (item.restoreStatus & 2) == 0 && item.restoreStatus != 0) {
                if (appWidgetInfo == null) {
                    Log.d(TAG, "Removing restored widget: id=" + item.appWidgetId + " belongs to component " + item.providerName + ", as the povider is null");
                    LauncherModel.deleteItemFromDatabase(this, item);
                    return;
                }
                if ((item.restoreStatus & 1) != 0) {
                    PendingAddWidgetInfo pendingInfo = new PendingAddWidgetInfo(appWidgetInfo);
                    pendingInfo.spanX = item.spanX;
                    pendingInfo.spanY = item.spanY;
                    pendingInfo.minSpanX = item.minSpanX;
                    pendingInfo.minSpanY = item.minSpanY;
                    Bundle options = WidgetHostViewLoader.getDefaultOptionsForWidget(this, pendingInfo);
                    int newWidgetId = appWidgetHost.allocateAppWidgetId();
                    boolean success = this.mAppWidgetManager.bindAppWidgetIdIfAllowed(newWidgetId, appWidgetInfo, options);
                    if (!success) {
                        appWidgetHost.deleteAppWidgetId(newWidgetId);
                        Log.d(TAG, "Removing restored widget: id=" + item.appWidgetId + " belongs to component " + item.providerName + ", as the launcher is unable to bing a new widget id");
                        LauncherModel.deleteItemFromDatabase(this, item);
                        return;
                    } else {
                        item.appWidgetId = newWidgetId;
                        item.restoreStatus = appWidgetInfo.configure == null ? 0 : 4;
                        LauncherModel.updateItemInDatabase(this, item);
                    }
                } else if ((item.restoreStatus & 4) != 0 && appWidgetInfo.configure == null) {
                    item.restoreStatus = 0;
                    LauncherModel.updateItemInDatabase(this, item);
                }
            }
            if (!this.mIsSafeModeEnabled && item.restoreStatus == 0) {
                if (appWidgetInfo == null) {
                    Logger.d(TAG, "Removing invalid widget: id= " + item.appWidgetId);
                    LauncherModel.deleteItemFromDatabase(this, item);
                    return;
                } else {
                    int appWidgetId = item.appWidgetId;
                    Log.d(TAG, "bindAppWidget: id=" + item.appWidgetId + " belongs to component " + appWidgetInfo.provider);
                    item.hostView = appWidgetHost.createView((Context) this, appWidgetId, appWidgetInfo);
                    item.minSpanX = appWidgetInfo.minSpanX;
                    item.minSpanY = appWidgetInfo.minSpanY;
                }
            } else {
                appWidgetInfo = null;
                PendingAppWidgetHostView view = new PendingAppWidgetHostView(this, item, this.mIsSafeModeEnabled);
                view.updateIcon(this.mAssetCache);
                item.hostView = view;
                item.hostView.updateAppWidget(null);
                item.hostView.setOnClickListener(this);
            }
            item.hostView.setTag(item);
            item.onBindAppWidget(this);
            workspace.addInScreen(item.hostView, item.container, item.screenId, item.cellX, item.cellY, item.spanX, item.spanY, false);
            if (!item.isCustomWidget()) {
                addWidgetToAutoAdvanceIfNeeded(item.hostView, appWidgetInfo);
            }
            workspace.requestLayout();
            this.mModel.onWorkspaceBindItem();
            Log.d(TAG, "bound widget id=" + item.appWidgetId + " in " + (SystemClock.uptimeMillis() - start) + "ms");
        }
    }

    private void completeRestoreAppWidget(int appWidgetId) {
        LauncherAppWidgetHostView view = this.mWorkspace.getWidgetForAppWidgetId(appWidgetId);
        if (view == null || !(view instanceof PendingAppWidgetHostView)) {
            Log.e(TAG, "Widget update called, when the widget no longer exists.");
            return;
        }
        LauncherAppWidgetInfo info = (LauncherAppWidgetInfo) view.getTag();
        info.restoreStatus = 0;
        this.mWorkspace.reinflateWidgetsIfNecessary();
        LauncherModel.updateItemInDatabase(this, info);
    }

    @Override // net.oneplus.h2launcher.LauncherModel.Callbacks
    public void onPageBoundSynchronously(int page) {
        this.mSynchronouslyBoundPages.add(Integer.valueOf(page));
    }

    @Override // net.oneplus.h2launcher.LauncherModel.Callbacks
    public void finishBindingItems() {
        Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.Launcher.50
            @Override // java.lang.Runnable
            public void run() {
                Launcher.this.finishBindingItems();
            }
        };
        if (!waitUntilResume(r)) {
            if (this.mSavedState != null) {
                if (!this.mWorkspace.hasFocus()) {
                    this.mWorkspace.getChildAt(this.mWorkspace.getCurrentPage()).requestFocus();
                }
                this.mSavedState = null;
            }
            this.mWorkspace.restoreInstanceStateForRemainingPages();
            setWorkspaceLoading(false);
            sendLoadingCompleteBroadcastIfNecessary();
            registerWallpaperChangedReceiver();
            if (sPendingAddItem != null) {
                final long screenId = completeAdd(sPendingAddItem);
                this.mWorkspace.post(new Runnable() { // from class: net.oneplus.h2launcher.Launcher.51
                    @Override // java.lang.Runnable
                    public void run() {
                        Launcher.this.mWorkspace.snapToScreenId(screenId);
                    }
                });
                sPendingAddItem = null;
            }
            InstallShortcutReceiver.disableAndFlushInstallQueue(this);
            this.mWorkspace.updateAllShortcuts();
            if (this.mLauncherCallbacks != null) {
                this.mLauncherCallbacks.finishBindingItems(false);
            }
        }
    }

    private void sendLoadingCompleteBroadcastIfNecessary() {
        if (!this.mSharedPrefs.getBoolean(FIRST_LOAD_COMPLETE, false)) {
            String permission = getResources().getString(R.string.receive_first_load_broadcast_permission);
            Intent intent = new Intent(ACTION_FIRST_LOAD_COMPLETE);
            sendBroadcast(intent, permission);
            SharedPreferences.Editor editor = this.mSharedPrefs.edit();
            editor.putBoolean(FIRST_LOAD_COMPLETE, true);
            editor.apply();
        }
    }

    private void registerWallpaperChangedReceiver() {
        WallpaperPreview.Model.getInstance(this).updateWallpaperId(this);
        if (this.mWallpaperChangedReceiver != null) {
            Logger.w(TAG, "Wallpaper changed receiver is registered twice, unregister it...");
            unregisterWallpaperChangedReceiver();
        }
        this.mWallpaperChangedReceiver = new WallpaperChangedReceiver();
        IntentFilter filter = new IntentFilter();
        filter.addAction(ACTION_WALLPAPER_CHANGED);
        filter.addAction(ACTION_KEYGUARD_WALLPAPER_CHANGED);
        filter.addAction("net.oneplus.h2launcher.action.BLUR_WALLPAPER_WALLPAPER_CHANGED");
        filter.addAction("net.oneplus.h2launcher.action.FIRST_FRAME_DRAWN");
        registerReceiver(this.mWallpaperChangedReceiver, filter);
    }

    private void unregisterWallpaperChangedReceiver() {
        try {
            unregisterReceiver(this.mWallpaperChangedReceiver);
        } catch (IllegalArgumentException e) {
            Logger.e(TAG, "failed to unregister wallpaper changed receiver, error=%s", e.getMessage());
        } finally {
            this.mWallpaperChangedReceiver = null;
        }
    }

    protected boolean isWallpaperChangedReceiverRegistered() {
        return this.mWallpaperChangedReceiver != null;
    }

    @Override // net.oneplus.h2launcher.LauncherModel.Callbacks
    public boolean isAllAppsButtonRank(int rank) {
        return this.mHotseatController.isAllAppsButtonRank(rank);
    }

    private boolean canRunNewAppsAnimation() {
        long diff = System.currentTimeMillis() - this.mDragController.getLastGestureUpTime();
        return diff > ((long) (NEW_APPS_ANIMATION_INACTIVE_TIMEOUT_SECONDS * 1000)) && (this.mClings == null || !this.mClings.isVisible());
    }

    private ValueAnimator createNewAppBounceAnimation(View v, int i) {
        ValueAnimator bounceAnim = LauncherAnimUtils.ofPropertyValuesHolder(v, PropertyValuesHolder.ofFloat("alpha", 1.0f), PropertyValuesHolder.ofFloat("scaleX", 1.0f), PropertyValuesHolder.ofFloat("scaleY", 1.0f));
        bounceAnim.setDuration(450L);
        bounceAnim.setStartDelay(i * 85);
        bounceAnim.setInterpolator(new OvershootInterpolator(BOUNCE_ANIMATION_TENSION));
        return bounceAnim;
    }

    public boolean useVerticalBarLayout() {
        return this.mDeviceProfile.isVerticalBarLayout();
    }

    protected Rect getSearchBarBounds() {
        return this.mDeviceProfile.getSearchBarBounds(Utilities.isRtl(getResources()));
    }

    @Override // net.oneplus.h2launcher.LauncherModel.Callbacks
    public void bindSearchProviderChanged(final boolean forceBinding) {
        if (StyleManager.getInstance().showSearchBar()) {
            Utilities.getSearchWidgetProvider(getApplicationContext(), new Utilities.WidgetProviderListener() { // from class: net.oneplus.h2launcher.Launcher.52
                @Override // net.oneplus.h2launcher.Utilities.WidgetProviderListener
                public void onWidgetProviderFound(AppWidgetProviderInfo provider) {
                    if (provider != null) {
                        if (Launcher.this.mSearchProvider == null || forceBinding) {
                            Launcher.this.mSearchProvider = provider;
                        }
                        Launcher.this.runOnUiThread(new Runnable() { // from class: net.oneplus.h2launcher.Launcher.52.1
                            @Override // java.lang.Runnable
                            public void run() {
                                Launcher.this.updateSearchViewFromProvider();
                            }
                        });
                    }
                }
            });
        }
    }

    public void updateSearchViewFromProvider() {
        if (this.mSearchDropTargetBar != null) {
            if (this.mQsb != null) {
                this.mSearchDropTargetBar.removeView(this.mQsb);
                this.mQsb = null;
            }
            if (this.mQsbOverlay != null) {
                this.mSearchDropTargetBar.removeView(this.mQsbOverlay);
                this.mQsbOverlay = null;
            }
            if (this.mSearchBarVisible) {
                this.mSearchDropTargetBar.setQsbSearchBar(getOrCreateQsbBar());
                if (getOrCreateQsbBar() != null) {
                    float currentProgress = getCurrentDisplayProgress();
                    if (currentProgress == 1.0f || (this.mWorkspace != null && this.mWorkspace.isInOverviewMode())) {
                        if (this.mSearchBarTransparent) {
                            this.mQsbOverlay.setVisibility(4);
                        }
                        this.mQsb.setVisibility(4);
                    }
                }
                if (this.mQsb != null && this.mWorkspace != null) {
                    SearchDropTargetBar.State state = this.mWorkspace.getState().getSearchDropTargetBarState();
                    this.mSearchDropTargetBar.animateToState(state, 0);
                }
                if (!StyleManager.getInstance().showSearchBar()) {
                    this.mSearchDropTargetBar.animateToState(SearchDropTargetBar.State.INVISIBLE, 0);
                    this.mQsb.setVisibility(8);
                }
            }
        }
    }

    @Override // net.oneplus.h2launcher.LauncherModel.Callbacks
    public void bindAllApplications(ArrayList<AppInfo> apps) {
        if (waitUntilResume(this.mBindAllApplicationsRunnable, true)) {
            this.mTmpAppsList = apps;
            return;
        }
        this.mAllAppsViewController.setApps(apps);
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.bindAllApplications(apps);
        }
        this.mIsAllAppsLoaded = true;
    }

    @Override // net.oneplus.h2launcher.LauncherModel.Callbacks
    public void bindAppsUpdated(final ArrayList<AppInfo> apps) {
        Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.Launcher.54
            @Override // java.lang.Runnable
            public void run() {
                Launcher.this.bindAppsUpdated(apps);
            }
        };
        if (!waitUntilResume(r)) {
            this.mAllAppsViewController.updateApps(apps);
        }
    }

    @Override // net.oneplus.h2launcher.LauncherModel.Callbacks
    public void bindWidgetsRestored(final ArrayList<LauncherAppWidgetInfo> widgets) {
        Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.Launcher.55
            @Override // java.lang.Runnable
            public void run() {
                Launcher.this.bindWidgetsRestored(widgets);
            }
        };
        if (!waitUntilResume(r)) {
            this.mWorkspace.widgetsRestored(widgets);
        }
    }

    @Override // net.oneplus.h2launcher.LauncherModel.Callbacks
    public void bindShortcutsChanged(final ArrayList<ShortcutInfo> updated, final ArrayList<ShortcutInfo> removed, final UserHandleCompat user) {
        Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.Launcher.56
            @Override // java.lang.Runnable
            public void run() {
                Launcher.this.bindShortcutsChanged(updated, removed, user);
            }
        };
        if (!waitUntilResume(r)) {
            Iterator<ShortcutInfo> it = removed.iterator();
            while (it.hasNext()) {
                ShortcutInfo info = it.next();
                if (info.getTargetComponent() != null && LauncherModel.STK_PACKAGE_NAME.equals(info.getTargetComponent().getPackageName())) {
                    Logger.d(TAG, "STK remove WorkspaceItem enter waitUntilResume, shortcut id = " + info.id);
                }
            }
            if (!updated.isEmpty()) {
                this.mWorkspace.updateShortcuts(updated);
            }
            if (!removed.isEmpty()) {
                HashSet<ComponentName> removedComponents = new HashSet<>();
                Iterator<ShortcutInfo> it2 = removed.iterator();
                while (it2.hasNext()) {
                    ShortcutInfo si = it2.next();
                    removedComponents.add(si.getTargetComponent());
                }
                this.mWorkspace.removeItemsByComponentName(removedComponents, user);
                this.mDragController.onAppsRemoved(new ArrayList<>(), removedComponents);
            }
        }
    }

    @Override // net.oneplus.h2launcher.LauncherModel.Callbacks
    public void bindRestoreItemsChange(final HashSet<ItemInfo> updates) {
        Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.Launcher.57
            @Override // java.lang.Runnable
            public void run() {
                Launcher.this.bindRestoreItemsChange(updates);
            }
        };
        if (!waitUntilResume(r)) {
            this.mWorkspace.updateRestoreItems(updates);
        }
    }

    @Override // net.oneplus.h2launcher.LauncherModel.Callbacks
    public void bindComponentsRemoved(final ArrayList<String> packageNames, final ArrayList<AppInfo> appInfos, final ArrayList<ShortcutInfo> shortcutInfos, final UserHandleCompat user, final int reason) {
        Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.Launcher.58
            @Override // java.lang.Runnable
            public void run() {
                Launcher.this.bindComponentsRemoved(packageNames, appInfos, shortcutInfos, user, reason);
            }
        };
        if (!waitUntilResume(r)) {
            if (appInfos != null) {
                Iterator<AppInfo> it = appInfos.iterator();
                while (it.hasNext()) {
                    AppInfo a = it.next();
                    if (a.componentName != null && a.componentName.getPackageName().equals(LauncherModel.STK_PACKAGE_NAME)) {
                        Logger.d(TAG, "bindComponentsRemoved for delete STK AppInfo enter waitUtilsResume, reason = " + reason);
                    }
                }
            }
            if (shortcutInfos != null) {
                Iterator<ShortcutInfo> it2 = shortcutInfos.iterator();
                while (it2.hasNext()) {
                    ShortcutInfo a2 = it2.next();
                    if (a2.getTargetComponent() != null && a2.getTargetComponent().getPackageName().equals(LauncherModel.STK_PACKAGE_NAME)) {
                        Logger.d(TAG, "bindComponentsRemoved for delete STK ShortcutInfo enter waitUtilsResume, reason = " + reason);
                    }
                }
            }
            if (reason == 0) {
                HashSet<ComponentName> removedComponents = new HashSet<>();
                if (appInfos != null) {
                    Iterator<AppInfo> it3 = appInfos.iterator();
                    while (it3.hasNext()) {
                        AppInfo info = it3.next();
                        removedComponents.add(info.componentName);
                    }
                }
                if (shortcutInfos != null) {
                    Iterator<ShortcutInfo> it4 = shortcutInfos.iterator();
                    while (it4.hasNext()) {
                        ShortcutInfo info2 = it4.next();
                        removedComponents.add(info2.getTargetComponent());
                    }
                }
                if (packageNames != null && !packageNames.isEmpty()) {
                    this.mWorkspace.removeItemsByPackageName(packageNames, user);
                    if (this.mIconRearrangementHelper != null) {
                        this.mIconRearrangementHelper.removeItemsByPackageName(packageNames, user);
                    }
                }
                if (!removedComponents.isEmpty()) {
                    this.mWorkspace.removeItemsByComponentName(removedComponents, user);
                    if (this.mIconRearrangementHelper != null) {
                        this.mIconRearrangementHelper.removeItemsByComponentName(removedComponents, user);
                    }
                }
                this.mDragController.onAppsRemoved(packageNames, removedComponents);
            } else if (packageNames != null && !packageNames.isEmpty()) {
                this.mWorkspace.disableShortcutsByPackageName(packageNames, user, reason);
            }
            if (appInfos != null && !appInfos.isEmpty()) {
                this.mAllAppsViewController.removeApps(appInfos);
            }
        }
    }

    @Override // net.oneplus.h2launcher.LauncherModel.Callbacks
    public void bindAllPackages(WidgetsModel model) {
        if (waitUntilResume(this.mBindPackagesUpdatedRunnable, true)) {
            this.mWidgetsModel = model;
        } else if (this.mWidgetsView != null && model != null) {
            this.mWidgetsView.addWidgets(model);
            this.mWidgetsModel = null;
        }
    }

    @SuppressLint({"SwitchIntDef"})
    private int mapConfigurationOriActivityInfoOri(int configOri) {
        Display d = getWindowManager().getDefaultDisplay();
        int naturalOri = 2;
        switch (d.getRotation()) {
            case 0:
            case 2:
                naturalOri = configOri;
                break;
            case 1:
            case 3:
                if (configOri != 2) {
                    naturalOri = 2;
                    break;
                } else {
                    naturalOri = 1;
                    break;
                }
        }
        int[] oriMap = {1, 0, 9, 8};
        int indexOffset = 0;
        if (naturalOri == 2) {
            indexOffset = 1;
        }
        return oriMap[(d.getRotation() + indexOffset) % 4];
    }

    @TargetApi(18)
    public void lockScreenOrientation() {
        if (this.mRotationEnabled) {
            if (Utilities.ATLEAST_JB_MR2) {
                setRequestedOrientation(14);
            } else {
                setRequestedOrientation(mapConfigurationOriActivityInfoOri(getResources().getConfiguration().orientation));
            }
        }
    }

    public void unlockScreenOrientation(boolean immediate) {
        if (this.mRotationEnabled) {
            if (immediate) {
                setRequestedOrientation(-1);
            } else {
                this.mHandler.postDelayed(new Runnable() { // from class: net.oneplus.h2launcher.Launcher.60
                    @Override // java.lang.Runnable
                    public void run() {
                        Launcher.this.setRequestedOrientation(-1);
                    }
                }, 500L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isLauncherPreinstalled() {
        if (this.mLauncherCallbacks != null) {
            return this.mLauncherCallbacks.isLauncherPreinstalled();
        }
        PackageManager pm = getPackageManager();
        try {
            ApplicationInfo ai = pm.getApplicationInfo(getComponentName().getPackageName(), 0);
            return (ai.flags & 1) != 0;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean overrideWallpaperDimensions() {
        return this.mLauncherCallbacks == null || this.mLauncherCallbacks.overrideWallpaperDimensions();
    }

    protected boolean hasFirstRunActivity() {
        return this.mLauncherCallbacks != null && this.mLauncherCallbacks.hasFirstRunActivity();
    }

    protected Intent getFirstRunActivity() {
        if (this.mLauncherCallbacks != null) {
            return this.mLauncherCallbacks.getFirstRunActivity();
        }
        return null;
    }

    private boolean shouldRunFirstRunActivity() {
        return (ActivityManager.isRunningInTestHarness() || this.mSharedPrefs.getBoolean(FIRST_RUN_ACTIVITY_DISPLAYED, false)) ? false : true;
    }

    protected boolean hasRunFirstRunActivity() {
        return this.mSharedPrefs.getBoolean(FIRST_RUN_ACTIVITY_DISPLAYED, false);
    }

    public boolean doubleTabToLockEnabled(Context context) {
        return this.mGestureSharedPrefs.getBoolean(CustomizationSettingsFragment.DOUBLE_TAP_ENABLED_SAVED, true);
    }

    public boolean showFirstRunActivity() {
        Intent firstRunIntent;
        if (!shouldRunFirstRunActivity() || !hasFirstRunActivity() || (firstRunIntent = getFirstRunActivity()) == null) {
            return false;
        }
        startActivity(firstRunIntent);
        markFirstRunActivityShown();
        return true;
    }

    private void markFirstRunActivityShown() {
        SharedPreferences.Editor editor = this.mSharedPrefs.edit();
        editor.putBoolean(FIRST_RUN_ACTIVITY_DISPLAYED, true);
        editor.apply();
    }

    protected boolean hasDismissableIntroScreen() {
        return this.mLauncherCallbacks != null && this.mLauncherCallbacks.hasDismissableIntroScreen();
    }

    protected View getIntroScreen() {
        if (this.mLauncherCallbacks != null) {
            return this.mLauncherCallbacks.getIntroScreen();
        }
        return null;
    }

    private boolean shouldShowIntroScreen() {
        return hasDismissableIntroScreen() && !this.mSharedPrefs.getBoolean(INTRO_SCREEN_DISMISSED, false);
    }

    protected void showIntroScreen() {
        View introScreen = getIntroScreen();
        changeWallpaperVisiblity(false);
        if (introScreen != null) {
            this.mDragLayer.showOverlayView(introScreen);
        }
    }

    public void dismissIntroScreen() {
        markIntroScreenDismissed();
        if (showFirstRunActivity()) {
            this.mWorkspace.postDelayed(new Runnable() { // from class: net.oneplus.h2launcher.Launcher.61
                @Override // java.lang.Runnable
                public void run() {
                    Launcher.this.mDragLayer.dismissOverlayView();
                    Launcher.this.showFirstRunClings();
                }
            }, 1000L);
        } else {
            this.mDragLayer.dismissOverlayView();
            showFirstRunClings();
        }
        changeWallpaperVisiblity(true);
    }

    private void markIntroScreenDismissed() {
        SharedPreferences.Editor editor = this.mSharedPrefs.edit();
        editor.putBoolean(INTRO_SCREEN_DISMISSED, true);
        editor.apply();
    }

    void showFirstRunClings() {
        this.mClings = new LauncherClings(this);
        if (this.mClings.shouldShowFirstRunOrMigrationClings()) {
            if (getHeaderFile().delete()) {
                Logger.w(TAG, "delete the header file failed");
            }
            if (this.mModel.canMigrateFromOldLauncherDb(this)) {
                this.mClings.showMigrationCling();
            } else {
                this.mClings.showLongPressCling(true);
            }
        }
    }

    public void showFolderTutorial() {
        if (this.mClings == null) {
            this.mClings = new LauncherClings(this);
        }
        this.mClings.showFolderTutorial();
    }

    public void dismissFolderTutorial() {
        if (this.mClings == null) {
            this.mClings = new LauncherClings(this);
        }
        this.mClings.dismissFolderTutorial();
    }

    public void showCustomizationsClingIfNecessary() {
        if (this.mClings != null && this.mClings.shouldShowWallpapersCling()) {
            this.mClings.showWallpapersCling();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void showWorkspaceSearchAndHotseat() {
        if (this.mWorkspace != null) {
            this.mWorkspace.setAlpha(1.0f);
        }
        this.mHotseatController.setAlpha(1.0f);
        if (this.mPageIndicators != null) {
            this.mPageIndicators.setAlpha(1.0f);
        }
        if (this.mSearchDropTargetBar != null) {
            this.mSearchDropTargetBar.animateToState(SearchDropTargetBar.State.SEARCH_BAR, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void hideWorkspaceSearchAndHotseat() {
        if (this.mWorkspace != null) {
            this.mWorkspace.setAlpha(0.0f);
        }
        this.mHotseatController.setAlpha(0.0f);
        if (this.mPageIndicators != null) {
            this.mPageIndicators.setAlpha(0.0f);
        }
        if (this.mSearchDropTargetBar != null) {
            this.mSearchDropTargetBar.animateToState(SearchDropTargetBar.State.INVISIBLE, 0);
        }
    }

    @TargetApi(21)
    public AppInfo createAppDragInfo(Intent appLaunchIntent) {
        UserHandle userHandle;
        UserHandleCompat user = null;
        if (Utilities.ATLEAST_LOLLIPOP && (userHandle = (UserHandle) appLaunchIntent.getParcelableExtra("android.intent.extra.USER")) != null) {
            user = UserHandleCompat.fromUser(userHandle);
        }
        return createAppDragInfo(appLaunchIntent, user);
    }

    public AppInfo createAppDragInfo(Intent intent, UserHandleCompat user) {
        if (user == null) {
            user = UserHandleCompat.myUserHandle();
        }
        LauncherAppsCompat launcherApps = LauncherAppsCompat.getInstance(this);
        LauncherActivityInfoCompat activityInfo = launcherApps.resolveActivity(intent, user);
        if (activityInfo == null) {
            return null;
        }
        return new AppInfo(this, activityInfo, user, this.mAssetCache);
    }

    public ItemInfo createShortcutDragInfo(Intent shortcutIntent, CharSequence caption, Bitmap icon) {
        if (StyleManager.getInstance().showDynamicIcon() && DynamicIconManager.getInstance().isDynamicIcon(shortcutIntent)) {
            return DynamicIconManager.getInstance().createShortcutInfo(shortcutIntent, caption, caption, icon, UserHandleCompat.myUserHandle());
        }
        return new ShortcutInfo(shortcutIntent, caption, caption, icon, UserHandleCompat.myUserHandle());
    }

    public void startDrag(View dragView, ItemInfo dragInfo, DragSource source) {
        dragView.setTag(dragInfo);
        this.mWorkspace.onExternalDragStartedWithItem(dragView);
        this.mWorkspace.beginExternalDragShared(dragView, source);
    }

    protected void moveWorkspaceToDefaultScreen() {
        this.mWorkspace.moveToDefaultScreen(false);
    }

    @Override // net.oneplus.h2launcher.PagedView.PageSwitchListener
    public void onPageSwitch(View newPage, int newPageIndex) {
        Logger.d(TAG, "onPageSwitch: mLastPageIndex=%d, newPageIndex=%d, hasCustomContent=%b", Integer.valueOf(this.mLastPageIndex), Integer.valueOf(newPageIndex), Boolean.valueOf(this.mWorkspace.hasCustomContent()));
        if (StyleManager.getInstance().showDynamicIcon()) {
            this.mWorkspace.updateCurrentPageIconState();
        }
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onPageSwitch(newPage, newPageIndex);
        }
        if (!this.mIsReordering && newPageIndex != this.mLastPageIndex) {
            Logger.d(TAG, "commit pending action: page switched");
            executePendingAction(true);
            this.mUtilsButtonClicked = new boolean[2];
        }
        updateUtilsButtonVisibility();
        this.mLastPageIndex = newPageIndex;
    }

    @Override // net.oneplus.h2launcher.PagedView.PageReorderListener
    public void onStartReordering() {
        this.mIsReordering = true;
    }

    @Override // net.oneplus.h2launcher.PagedView.PageReorderListener
    public void onEndReordering() {
        if (this.mNextAction != 0 && this.mCurrentLayout != this.mReorderingLayout) {
            Logger.d(TAG, "commit pending action: end reorder");
            executePendingAction(true);
            this.mUtilsButtonClicked = new boolean[2];
            updateUtilsButtonVisibility();
        } else {
            Logger.d(TAG, "onEndReordering");
        }
        this.mIsReordering = false;
    }

    public FastBitmapDrawable createIconDrawable(Bitmap icon) {
        FastBitmapDrawable d = new FastBitmapDrawable(icon);
        d.setFilterBitmap(true);
        resizeIconDrawable(d);
        return d;
    }

    public void resizeIconDrawable(Drawable icon) {
        int iconSizePx = (int) (Utilities.getIconScaleValue(this) * this.mDeviceProfile.iconSizePx);
        icon.setBounds(0, 0, iconSizePx, iconSizePx);
    }

    public void dumpState() {
        Log.d(TAG, "BEGIN launcher dump state for launcher " + this);
        Log.d(TAG, "mSavedState=" + this.mSavedState);
        Log.d(TAG, "mWorkspaceLoading=" + this.mWorkspaceLoading);
        Log.d(TAG, "mRestoring=" + this.mRestoring);
        Log.d(TAG, "mWaitingForResult=" + this.mWaitingForResult);
        Log.d(TAG, "mSavedInstanceState=" + this.mSavedInstanceState);
        Log.d(TAG, "sFolders.size=" + sFolders.size());
        this.mModel.dumpState();
        Log.d(TAG, "END launcher dump state");
    }

    @Override // android.app.Activity
    public void dump(String prefix, FileDescriptor fd, PrintWriter writer, String[] args) {
        super.dump(prefix, fd, writer, args);
        synchronized (sDumpLogs) {
            writer.println(HanziToPinyin.Token.SEPARATOR);
            writer.println("Debug logs: ");
            for (int i = 0; i < sDumpLogs.size(); i++) {
                writer.println("  " + sDumpLogs.get(i));
            }
        }
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.dump(prefix, fd, writer, args);
        }
    }

    public static void dumpDebugLogsToConsole() {
    }

    public static void addDumpLog(String tag, String log, boolean debugLog) {
        addDumpLog(tag, log, null, debugLog);
    }

    public static void addDumpLog(String tag, String log, Exception e, boolean debugLog) {
        if (debugLog) {
            if (e != null) {
                Log.d(tag, log, e);
            } else {
                Log.d(tag, log);
            }
        }
    }

    @Override // net.oneplus.h2launcher.LauncherModel.Callbacks
    public void dumpLogsToLocalData() {
    }

    @Override // net.oneplus.h2launcher.LauncherModel.Callbacks
    public void finishLoaderTask() {
        this.mIsLoaderTaskFinished = true;
    }

    @Override // net.oneplus.h2launcher.LauncherModel.Callbacks
    public void resetLoaderTask() {
        this.mIsLoaderTaskFinished = false;
    }

    private boolean isSwitchingLayout() {
        if (this.mSharedPrefs == null) {
            this.mSharedPrefs = getSharedPreferences(LauncherAppState.getSharedPreferencesKey(), 0);
        }
        return this.mSharedPrefs.getBoolean(SwitchLayoutFragment.SHOW_SWITCHING_VIEW, false);
    }

    public void showSwitchingLoadingView(boolean show) {
        if (show) {
            TaskWorker.get().post(new Runnable() { // from class: net.oneplus.h2launcher.Launcher.63
                @Override // java.lang.Runnable
                public void run() {
                    Launcher.this.mSwitchingProgressDialog = ProgressDialog.show(Launcher.this, null, Launcher.this.getText(R.string.state_loading));
                }
            });
            return;
        }
        if (this.mSharedPrefs == null) {
            this.mSharedPrefs = getSharedPreferences(LauncherAppState.getSharedPreferencesKey(), 0);
        }
        SharedPreferences.Editor editor = this.mSharedPrefs.edit();
        editor.putBoolean(SwitchLayoutFragment.SHOW_SWITCHING_VIEW, false);
        editor.apply();
        if (this.mSwitchingProgressDialog == null) {
            Logger.i(TAG, "Switching dialog is null");
        } else {
            this.mSwitchingProgressDialog.dismiss();
            this.mSwitchingProgressDialog = null;
        }
    }

    public void setLauncherViewAlpha(float alpha) {
        this.mLauncherView.setAlpha(alpha);
    }

    public void setInSearchMode() {
        this.mState = State.SEARCH;
    }

    public void setOutSearchMode() {
        this.mState = State.WORKSPACE;
    }

    public boolean isInSearchMode() {
        return this.mState == State.SEARCH;
    }

    public boolean isInWorkspaceMode() {
        return this.mState == State.WORKSPACE;
    }

    public State getState() {
        return this.mState;
    }

    public boolean isAllAppsLoaded() {
        return this.mIsAllAppsLoaded;
    }

    public boolean isLoaderTaskFinished() {
        return this.mIsLoaderTaskFinished;
    }

    public boolean isNeedUpdateContactDb() {
        return this.mNeedUpdateContactDb;
    }

    public void setNeedUpdateContactDb(boolean needUpdateContactDb) {
        this.mNeedUpdateContactDb = needUpdateContactDb;
    }

    public IconRearrangementHelper getIconRearrangementHelper() {
        return this.mIconRearrangementHelper;
    }

    public boolean isIconRearrangementMode() {
        return !isDestroyed() && this.mWorkspace.isIconRearrangementMode();
    }

    public boolean shouldUpdateDynamicIconState() {
        return !isDestroyed() && this.mWorkspace.isInNormalMode();
    }

    private boolean checkNeedExistOverviewModeOnClickEmptyCell() {
        CellLayout layout = (CellLayout) this.mWorkspace.getChildAt(this.mWorkspace.getCurrentPage());
        return checkNeedExistOverviewModeOnClickEmptyCell(layout);
    }

    private boolean checkNeedExistOverviewModeOnClickEmptyCell(CellLayout layout) {
        return layout.isTouchDownCellEmpty();
    }

    public LauncherClings getClings() {
        return this.mClings;
    }

    public static Launcher getLauncher(Context context) {
        if (context instanceof Launcher) {
            return (Launcher) context;
        }
        LauncherAppState appState = LauncherAppState.getInstanceNoCreate();
        if (appState != null && (appState.getLauncher() instanceof Launcher)) {
            return appState.getLauncher();
        }
        return (Launcher) ((ContextWrapper) context).getBaseContext();
    }
}

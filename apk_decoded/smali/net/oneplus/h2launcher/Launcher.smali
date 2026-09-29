.class public Lnet/oneplus/h2launcher/Launcher;
.super Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
.implements Landroid/view/View$OnTouchListener;
.implements Lnet/oneplus/h2launcher/PagedView$PageSwitchListener;
.implements Lnet/oneplus/h2launcher/PagedView$PageReorderListener;
.implements Lnet/oneplus/h2launcher/LauncherProviderChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/Launcher$NavigationBarObserver;,
        Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;,
        Lnet/oneplus/h2launcher/Launcher$CloseSystemDialogsIntentReceiver;,
        Lnet/oneplus/h2launcher/Launcher$ContactsObserver;,
        Lnet/oneplus/h2launcher/Launcher$LauncherOverlayCallbacksImpl;,
        Lnet/oneplus/h2launcher/Launcher$LauncherOverlayCallbacks;,
        Lnet/oneplus/h2launcher/Launcher$LauncherSearchCallbacks;,
        Lnet/oneplus/h2launcher/Launcher$LauncherOverlay;,
        Lnet/oneplus/h2launcher/Launcher$CustomContentCallbacks;,
        Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;,
        Lnet/oneplus/h2launcher/Launcher$State;
    }
.end annotation


# static fields
.field public static final ACTION_BLUR_WALLPAPER_WALLPAPER_CHANGED:Ljava/lang/String; = "net.oneplus.h2launcher.action.BLUR_WALLPAPER_WALLPAPER_CHANGED"

.field private static final ACTION_CLEAR:I = 0x2

.field public static final ACTION_FIRST_BLUR_WALLPAPER_FRAME_DRAWN:Ljava/lang/String; = "net.oneplus.h2launcher.action.FIRST_FRAME_DRAWN"

.field static final ACTION_FIRST_LOAD_COMPLETE:Ljava/lang/String; = "net.oneplus.h2launcher.action.FIRST_LOAD_COMPLETE"

.field protected static final ACTION_KEYGUARD_WALLPAPER_CHANGED:Ljava/lang/String; = "android.intent.action.KEYGUARD_WALLPAPER_CHANGED"

.field private static final ACTION_NONE:I = 0x0

.field private static final ACTION_SORT:I = 0x1

.field protected static final ACTION_WALLPAPER_CHANGED:Ljava/lang/String; = "android.intent.action.WALLPAPER_CHANGED"

.field private static final ACTIVITY_START_DELAY:I = 0x3e8

.field private static final APPLY_ICON_PACK_TASK_CALLER:Ljava/lang/String;

.field public static final APPWIDGET_HOST_ID:I = 0x400

.field private static final BOUNCE_ANIMATION_TENSION:F = 1.3f

.field private static final CALL_PHONE_PERMISSION_REQUEST:I = 0xc9

.field static final DEBUG_DUMP_LOG:Z = false

.field static final DEBUG_RESUME_TIME:Z = false

.field static final DEBUG_STRICT_MODE:Z = false

.field static final DEBUG_WIDGETS:Z = true

.field private static final DISABLE_ALPHA:F = 0.3f

.field private static final DISABLE_SYNCHRONOUS_BINDING_CURRENT_PAGE:Z = false

.field static final DUMP_STATE_PROPERTY:Ljava/lang/String; = "launcher_dump_state"

.field static final ENABLE_DEBUG_INTENTS:Z = false

.field public static final EXIT_SPRINGLOADED_MODE_SHORT_TIMEOUT:I = 0x12c

.field static final FIRST_LOAD_COMPLETE:Ljava/lang/String; = "launcher.first_load_complete"

.field static final FIRST_RUN_ACTIVITY_DISPLAYED:Ljava/lang/String; = "launcher.first_run_activity_displayed"

.field public static final INTENT_EXTRA_APP_PACKAGE:Ljava/lang/String; = "app_package"

.field public static final INTENT_EXTRA_ICON_PACK_PACKAGE:Ljava/lang/String; = "icon_pack_package"

.field static final INTENT_EXTRA_IGNORE_LAUNCH_ANIMATION:Ljava/lang/String; = "net.oneplus.h2launcher.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION"

.field public static final INTENT_EXTRA_PREVIEW_ONLY:Ljava/lang/String; = "preview"

.field public static final INTENT_ICON_PACK_CHANGED:Ljava/lang/String; = "icon_pack_changed"

.field static final INTRO_SCREEN_DISMISSED:Ljava/lang/String; = "launcher.intro_screen_dismissed"

.field static final LOGD:Z = false

.field private static final MAX_SHOW_EDIT_ICON_PACKS_LENGTH:I = 0x3

.field static NEW_APPS_ANIMATION_DELAY:I = 0x0

.field private static NEW_APPS_ANIMATION_INACTIVE_TIMEOUT_SECONDS:I = 0x0

.field private static NEW_APPS_PAGE_MOVE_DELAY:I = 0x0

.field private static final ON_ACTIVITY_RESULT_ANIMATION_DELAY:I = 0x1f4

.field public static final OVERVIEW_ADD_SCREEN:Ljava/lang/String; = "overview_add_screen"

.field public static final OVERVIEW_ADD_SCREEN_DEFAULT:Z = true

.field public static final PICK_WALLPAPER_THIRD_PARTY_ACTIVITY:I = 0x1a

.field static final PROFILE_STARTUP:Z = false

.field private static final QSB_WIDGET_ID:Ljava/lang/String; = "qsb_widget_id"

.field private static final QSB_WIDGET_PROVIDER:Ljava/lang/String; = "qsb_widget_provider"

.field private static final READ_CONTACTS_PERMISSIONS_REQUEST:I = 0xca

.field private static final REQUEST_BIND_APPWIDGET:I = 0xb

.field private static final REQUEST_CREATE_APPWIDGET:I = 0x5

.field private static final REQUEST_CREATE_SHORTCUT:I = 0x1

.field public static final REQUEST_CROP_LOCKSCREEN_WALLPAPER:I = 0x10

.field public static final REQUEST_CROP_WALLPAPER:I = 0xf

.field private static final REQUEST_PERMISSION_CALL_PHONE:I = 0xd

.field private static final REQUEST_PICK_APPWIDGET:I = 0x9

.field private static final REQUEST_PICK_CUSTOM_APP_ICON:I = 0xe

.field public static final REQUEST_PICK_LOCKSCREEN_WALLPAPER:I = 0x19

.field public static final REQUEST_PICK_WALLPAPER:I = 0xa

.field private static final REQUEST_RECONFIGURE_APPWIDGET:I = 0xc

.field private static final RUNTIME_STATE:Ljava/lang/String; = "launcher.state"

.field private static final RUNTIME_STATE_CURRENT_SCREEN:Ljava/lang/String; = "launcher.current_screen"

.field private static final RUNTIME_STATE_PENDING_ADD_CELL_X:Ljava/lang/String; = "launcher.add_cell_x"

.field private static final RUNTIME_STATE_PENDING_ADD_CELL_Y:Ljava/lang/String; = "launcher.add_cell_y"

.field private static final RUNTIME_STATE_PENDING_ADD_CONTAINER:Ljava/lang/String; = "launcher.add_container"

.field private static final RUNTIME_STATE_PENDING_ADD_SCREEN:Ljava/lang/String; = "launcher.add_screen"

.field private static final RUNTIME_STATE_PENDING_ADD_SPAN_X:Ljava/lang/String; = "launcher.add_span_x"

.field private static final RUNTIME_STATE_PENDING_ADD_SPAN_Y:Ljava/lang/String; = "launcher.add_span_y"

.field private static final RUNTIME_STATE_PENDING_ADD_WIDGET_ID:Ljava/lang/String; = "launcher.add_widget_id"

.field private static final RUNTIME_STATE_PENDING_ADD_WIDGET_INFO:Ljava/lang/String; = "launcher.add_widget_info"

.field private static final RUNTIME_STATE_VIEW_IDS:Ljava/lang/String; = "launcher.view_ids"

.field static final SCREEN_COUNT:I = 0x5

.field public static final SHOW_WEIGHT_WATCHER:Ljava/lang/String; = "debug.show_mem"

.field public static final SHOW_WEIGHT_WATCHER_DEFAULT:Z = false

.field static final TAG:Ljava/lang/String; = "Launcher"

.field public static final USER_HAS_MIGRATED:Ljava/lang/String; = "launcher.user_migrated_from_old_data"

.field private static final WORKSPACE_BACKGROUND_BLACK:I = 0x2

.field private static final WORKSPACE_BACKGROUND_GRADIENT:I = 0x0

.field private static final WORKSPACE_BACKGROUND_TRANSPARENT:I = 0x1

.field static sDateFormat:Ljava/text/DateFormat;

.field static sDateStamp:Ljava/util/Date;

.field static final sDumpLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFolders:Lnet/oneplus/h2launcher/util/LongArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/oneplus/h2launcher/util/LongArrayMap",
            "<",
            "Lnet/oneplus/h2launcher/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sPendingAddItem:Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;

.field static sRunStart:J


# instance fields
.field private final MSG_ADVANCE:I

.field private final MSG_DISMISS_SWITCHLAYOUT_LOADING:I

.field private final mAdvanceInterval:I

.field private final mAdvanceStagger:I

.field private mAllAppsButton:Landroid/view/View;

.field mAllAppsViewController:Lnet/oneplus/h2launcher/AllAppsViewController;

.field private mAppEditComponent:Ljava/lang/String;

.field private mAppEditComponentName:Landroid/content/ComponentName;

.field private mAppEditDialog:Landroid/app/Dialog;

.field private mAppEditHasReset:Z

.field private mAppEditIcon:Landroid/widget/ImageView;

.field private mAppEditResourceName:Ljava/lang/String;

.field private mAppEditResourcePackage:Ljava/lang/String;

.field private mAppEditResourceShowListPackage:Ljava/lang/String;

.field private mAppWidgetManager:Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

.field private mApplyIconPackTask:Landroid/os/AsyncTask;

.field mAppsView:Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

.field private mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

.field private mAttached:Z

.field private mAutoAdvanceRunning:Z

.field private mAutoAdvanceSentTime:J

.field private mAutoAdvanceTimeLeft:J

.field private mBindAllApplicationsRunnable:Ljava/lang/Runnable;

.field private mBindOnResumeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mBindPackagesUpdatedRunnable:Ljava/lang/Runnable;

.field mBuildLayersRunnable:Ljava/lang/Runnable;

.field private mClearButton:Landroid/view/View;

.field private mClings:Lnet/oneplus/h2launcher/LauncherClings;

.field private final mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

.field private mContactsObserver:Lnet/oneplus/h2launcher/Launcher$ContactsObserver;

.field private mCurrentLayout:Lnet/oneplus/h2launcher/CellLayout;

.field mCustomizationsView:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

.field mCustomizationsViewStub:Landroid/view/ViewStub;

.field private mData:Landroid/content/Intent;

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mDeviceProfile:Lnet/oneplus/h2launcher/DeviceProfile;

.field private mDoubleTapEnabled:Z

.field private mDoubleTapSettingsChangeListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/DoubleTapTouchListener$OnDoubleTapSettingsChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDragController:Lnet/oneplus/h2launcher/DragController;

.field mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

.field private mExtractedColors:Lnet/oneplus/h2launcher/dynamicui/ExtractedColors;

.field mFocusHandler:Lnet/oneplus/h2launcher/FocusIndicatorView;

.field private mFolderIconBitmap:Landroid/graphics/Bitmap;

.field private mFolderIconCanvas:Landroid/graphics/Canvas;

.field mFolderIconImageView:Landroid/widget/ImageView;

.field mFoldersController:Lnet/oneplus/h2launcher/FoldersTransitionController;

.field mFoldersView:Lnet/oneplus/h2launcher/FoldersContainerView;

.field private mGesturePrefChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mGestureSharedPrefs:Landroid/content/SharedPreferences;

.field private mGlobalSearchController:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;

.field mGlobalSearchViewStub:Landroid/view/ViewStub;

.field private mGrid:Lnet/oneplus/h2launcher/DeviceProfile;

.field final mHandler:Landroid/os/Handler;

.field private mHapticFeedbackTouchListener:Landroid/view/View$OnTouchListener;

.field private mHasFocus:Z

.field mHotseat:Lnet/oneplus/h2launcher/Hotseat;

.field mHotseatController:Lnet/oneplus/h2launcher/HotseatController;

.field private mIconPackNeedChangeToDefault:Z

.field private final mIconPackReceiver:Landroid/content/BroadcastReceiver;

.field mIconRearrangementHelper:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

.field mIconRearrangementView:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsAllAppsLoaded:Z

.field private mIsLeavingForSelectingIconPack:Z

.field private mIsLoaderTaskFinished:Z

.field private mIsReordering:Z

.field private mIsSafeModeEnabled:Z

.field private mItemIdToViewId:Lnet/oneplus/h2launcher/util/SerializableSparseIntArray;

.field private mLastPageIndex:I

.field private mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

.field private mLauncherView:Landroid/view/View;

.field private mLeftUndoButton:Landroid/view/View;

.field private mModel:Lnet/oneplus/h2launcher/LauncherModel;

.field private final mNavigationObserver:Landroid/database/ContentObserver;

.field private mNeedUpdateContactDb:Z

.field private mNextAction:I

.field private mOnLeaveCustomizationsCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mOnResumeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mOnResumeNeedsLoad:Z

.field private mOnResumeState:Lnet/oneplus/h2launcher/Launcher$State;

.field private mOverviewPanel:Landroid/view/ViewGroup;

.field private mPageIndicators:Landroid/view/View;

.field private mPaused:Z

.field mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

.field private mPendingAddWidgetId:I

.field private mPendingAddWidgetInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

.field private mPendingRequestArgs:Lnet/oneplus/h2launcher/util/PendingRequestArgs;

.field private mPreferencesHelper:Lnet/oneplus/h2launcher/config/PreferencesHelper;

.field private mQsb:Landroid/appwidget/AppWidgetHostView;

.field private mQsbOverlay:Landroid/view/View;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRectForFolderAnimation:Landroid/graphics/Rect;

.field private mReorderingLayout:Lnet/oneplus/h2launcher/CellLayout;

.field private mRequestCode:I

.field private final mRestoreScreenOrientationDelay:I

.field private mRestoring:Z

.field private mResultCode:I

.field private mRightUndoButton:Landroid/view/View;

.field private mRotationEnabled:Z

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSavedState:Landroid/os/Bundle;

.field private mScreenshotTask:Landroid/os/AsyncTask;

.field private mSearchBarTransparent:Z

.field private mSearchBarVisible:Z

.field private mSearchDropTargetBar:Lnet/oneplus/h2launcher/SearchDropTargetBar;

.field private mSearchProvider:Landroid/appwidget/AppWidgetProviderInfo;

.field private mSettingsButton:Landroid/view/View;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mShouldRefreshQsbSearchBarOnLeaveOverviewMode:Z

.field private mShowPermissionRationale:Z

.field private mShowWorkspaceFromNewIntent:Z

.field private mShowWorkspaceWithoutSaveWallpaper:Z

.field private mSortButton:Landroid/view/View;

.field mState:Lnet/oneplus/h2launcher/Launcher$State;

.field mStateTransitionAnimation:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

.field private mStats:Lnet/oneplus/h2launcher/Stats;

.field private mSwipeDownEnabled:Z

.field private mSwipeUpEnabled:Z

.field private mSwitchingProgressDialog:Landroid/app/ProgressDialog;

.field private final mSynchronouslyBoundPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpAddItemCellCoordinates:[I

.field mTmpAppsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUndoAction:Z

.field private mUpdateOrientationRunnable:Ljava/lang/Runnable;

.field mUserPresent:Z

.field private mUtilsButtonClicked:[Z

.field private mUtilsPanel:Landroid/view/ViewGroup;

.field private mVisible:Z

.field private mWaitingForPermissionResult:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Landroid/view/View;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitingForResult:Z

.field private mWaitingForResume:Lnet/oneplus/h2launcher/BubbleTextView;

.field private mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mWallpaperPrefChangListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mWallpaperPreferences:Landroid/content/SharedPreferences;

.field mWallpapersView:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

.field mWallpapersViewStub:Landroid/view/ViewStub;

.field private mWeatherProvider:Lnet/oneplus/h2launcher/WeatherProvider;

.field private mWeightWatcher:Landroid/view/View;

.field private mWidgetsButton:Landroid/view/View;

.field mWidgetsModel:Lnet/oneplus/h2launcher/model/WidgetsModel;

.field mWidgetsToAdvance:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field mWidgetsView:Lnet/oneplus/h2launcher/widget/WidgetsContainerView;

.field private mWillResetWallpaper:Z

.field mWorkspace:Lnet/oneplus/h2launcher/Workspace;

.field mWorkspaceBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field mWorkspaceLoading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x1f4

    const/4 v2, 0x3

    .line 282
    const-class v0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/Launcher;->APPLY_ICON_PACK_TASK_CALLER:Ljava/lang/String;

    .line 319
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lnet/oneplus/h2launcher/Launcher;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 322
    sput v3, Lnet/oneplus/h2launcher/Launcher;->NEW_APPS_PAGE_MOVE_DELAY:I

    .line 323
    const/4 v0, 0x5

    sput v0, Lnet/oneplus/h2launcher/Launcher;->NEW_APPS_ANIMATION_INACTIVE_TIMEOUT_SECONDS:I

    .line 324
    sput v3, Lnet/oneplus/h2launcher/Launcher;->NEW_APPS_ANIMATION_DELAY:I

    .line 449
    new-instance v0, Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/util/LongArrayMap;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/Launcher;->sFolders:Lnet/oneplus/h2launcher/util/LongArrayMap;

    .line 473
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    .line 474
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/Launcher;->sDateStamp:Ljava/util/Date;

    .line 476
    invoke-static {v2, v2}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/Launcher;->sDateFormat:Ljava/text/DateFormat;

    .line 477
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lnet/oneplus/h2launcher/Launcher;->sRunStart:J

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 191
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;-><init>()V

    .line 302
    sget-object v0, Lnet/oneplus/h2launcher/Launcher$State;->WORKSPACE:Lnet/oneplus/h2launcher/Launcher$State;

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    .line 310
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Launcher;->mIconPackNeedChangeToDefault:Z

    .line 311
    iput-object v4, p0, Lnet/oneplus/h2launcher/Launcher;->mSwitchingProgressDialog:Landroid/app/ProgressDialog;

    .line 318
    new-instance v0, Lnet/oneplus/h2launcher/util/SerializableSparseIntArray;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/util/SerializableSparseIntArray;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mItemIdToViewId:Lnet/oneplus/h2launcher/util/SerializableSparseIntArray;

    .line 326
    new-instance v0, Lnet/oneplus/h2launcher/Launcher$CloseSystemDialogsIntentReceiver;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/Launcher$CloseSystemDialogsIntentReceiver;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    .line 328
    new-instance v0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;

    invoke-direct {v0, p0, v4}, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;-><init>(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/Launcher$1;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mIconPackReceiver:Landroid/content/BroadcastReceiver;

    .line 330
    new-instance v0, Lnet/oneplus/h2launcher/Launcher$NavigationBarObserver;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/Launcher$NavigationBarObserver;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mNavigationObserver:Landroid/database/ContentObserver;

    .line 331
    new-instance v0, Lnet/oneplus/h2launcher/Launcher$ContactsObserver;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/Launcher$ContactsObserver;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mContactsObserver:Lnet/oneplus/h2launcher/Launcher$ContactsObserver;

    .line 345
    new-instance v0, Lnet/oneplus/h2launcher/ItemInfo;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/ItemInfo;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    .line 347
    iput v5, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddWidgetId:I

    .line 349
    new-array v0, v1, [I

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 360
    new-array v0, v1, [Z

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mUtilsButtonClicked:[Z

    .line 364
    iput v2, p0, Lnet/oneplus/h2launcher/Launcher;->mNextAction:I

    .line 368
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Launcher;->mIsReordering:Z

    .line 369
    iput v5, p0, Lnet/oneplus/h2launcher/Launcher;->mLastPageIndex:I

    .line 411
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Launcher;->mAutoAdvanceRunning:Z

    .line 421
    sget-object v0, Lnet/oneplus/h2launcher/Launcher$State;->NONE:Lnet/oneplus/h2launcher/Launcher$State;

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mOnResumeState:Lnet/oneplus/h2launcher/Launcher$State;

    .line 423
    iput-object v4, p0, Lnet/oneplus/h2launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 425
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspaceLoading:Z

    .line 427
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/Launcher;->mPaused:Z

    .line 432
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    .line 433
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    .line 434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mOnLeaveCustomizationsCallbacks:Ljava/util/ArrayList;

    .line 442
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/Launcher;->mUserPresent:Z

    .line 443
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Launcher;->mVisible:Z

    .line 444
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Launcher;->mHasFocus:Z

    .line 445
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Launcher;->mAttached:Z

    .line 453
    iput v3, p0, Lnet/oneplus/h2launcher/Launcher;->MSG_ADVANCE:I

    .line 454
    iput v1, p0, Lnet/oneplus/h2launcher/Launcher;->MSG_DISMISS_SWITCHLAYOUT_LOADING:I

    .line 457
    const/16 v0, 0x4e20

    iput v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAdvanceInterval:I

    .line 458
    const/16 v0, 0xfa

    iput v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAdvanceStagger:I

    .line 460
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAutoAdvanceTimeLeft:J

    .line 461
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    .line 466
    const/16 v0, 0x1f4

    iput v0, p0, Lnet/oneplus/h2launcher/Launcher;->mRestoreScreenOrientationDelay:I

    .line 470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mSynchronouslyBoundPages:Ljava/util/ArrayList;

    .line 495
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mRectForFolderAnimation:Landroid/graphics/Rect;

    .line 508
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Launcher;->mShowPermissionRationale:Z

    .line 513
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Launcher;->mShowWorkspaceFromNewIntent:Z

    .line 514
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Launcher;->mShowWorkspaceWithoutSaveWallpaper:Z

    .line 516
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Launcher;->mIsAllAppsLoaded:Z

    .line 517
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Launcher;->mIsLoaderTaskFinished:Z

    .line 522
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/Launcher;->mNeedUpdateContactDb:Z

    .line 524
    new-instance v0, Lnet/oneplus/h2launcher/Launcher$1;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/Launcher$1;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    .line 554
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Launcher;->mRotationEnabled:Z

    .line 565
    new-instance v0, Lnet/oneplus/h2launcher/Launcher$2;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/Launcher$2;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mUpdateOrientationRunnable:Ljava/lang/Runnable;

    .line 575
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mDoubleTapSettingsChangeListener:Ljava/util/List;

    .line 2620
    new-instance v0, Lnet/oneplus/h2launcher/Launcher$23;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/Launcher$23;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2789
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lnet/oneplus/h2launcher/Launcher$25;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/Launcher$25;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mHandler:Landroid/os/Handler;

    .line 6713
    new-instance v0, Lnet/oneplus/h2launcher/Launcher$53;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/Launcher$53;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mBindAllApplicationsRunnable:Ljava/lang/Runnable;

    .line 6905
    new-instance v0, Lnet/oneplus/h2launcher/Launcher$59;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/Launcher$59;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mBindPackagesUpdatedRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private acceptFilter()Z
    .locals 2

    .prologue
    .line 2047
    const-string v1, "input_method"

    .line 2048
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2049
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$1002(Lnet/oneplus/h2launcher/Launcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Launcher;
    .param p1, "x1"    # Z

    .prologue
    .line 191
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/Launcher;->mShouldRefreshQsbSearchBarOnLeaveOverviewMode:Z

    return p1
.end method

.method static synthetic access$102(Lnet/oneplus/h2launcher/Launcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Launcher;
    .param p1, "x1"    # Z

    .prologue
    .line 191
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/Launcher;->mSwipeUpEnabled:Z

    return p1
.end method

.method static synthetic access$1100(Lnet/oneplus/h2launcher/Launcher;)Lnet/oneplus/h2launcher/dynamicui/ExtractedColors;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 191
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mExtractedColors:Lnet/oneplus/h2launcher/dynamicui/ExtractedColors;

    return-object v0
.end method

.method static synthetic access$1300(Lnet/oneplus/h2launcher/Launcher;)Lnet/oneplus/h2launcher/LauncherClings;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 191
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mClings:Lnet/oneplus/h2launcher/LauncherClings;

    return-object v0
.end method

.method static synthetic access$1400(Lnet/oneplus/h2launcher/Launcher;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 191
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mQsbOverlay:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lnet/oneplus/h2launcher/Launcher;)Landroid/appwidget/AppWidgetHostView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 191
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mQsb:Landroid/appwidget/AppWidgetHostView;

    return-object v0
.end method

.method static synthetic access$1700(Lnet/oneplus/h2launcher/Launcher;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 191
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mGlobalSearchController:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;

    return-object v0
.end method

.method static synthetic access$1800(Lnet/oneplus/h2launcher/Launcher;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 191
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->restoreKeyguardClockStyleForUser()V

    return-void
.end method

.method static synthetic access$1902(Lnet/oneplus/h2launcher/Launcher;[Z)[Z
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Launcher;
    .param p1, "x1"    # [Z

    .prologue
    .line 191
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher;->mUtilsButtonClicked:[Z

    return-object p1
.end method

.method static synthetic access$2000(Lnet/oneplus/h2launcher/Launcher;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 191
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->updateUtilsButtonVisibility()V

    return-void
.end method

.method static synthetic access$202(Lnet/oneplus/h2launcher/Launcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Launcher;
    .param p1, "x1"    # Z

    .prologue
    .line 191
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/Launcher;->mSwipeDownEnabled:Z

    return p1
.end method

.method static synthetic access$2100(Lnet/oneplus/h2launcher/Launcher;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Launcher;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/Launcher;->showIconPackListPopupWindow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lnet/oneplus/h2launcher/Launcher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 191
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAppEditResourceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2202(Lnet/oneplus/h2launcher/Launcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Launcher;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher;->mAppEditResourceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2300(Lnet/oneplus/h2launcher/Launcher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 191
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAppEditResourcePackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2302(Lnet/oneplus/h2launcher/Launcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Launcher;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher;->mAppEditResourcePackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lnet/oneplus/h2launcher/Launcher;)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 191
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAppEditHasReset:Z

    return v0
.end method

.method static synthetic access$2402(Lnet/oneplus/h2launcher/Launcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Launcher;
    .param p1, "x1"    # Z

    .prologue
    .line 191
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/Launcher;->mAppEditHasReset:Z

    return p1
.end method

.method static synthetic access$2500(Lnet/oneplus/h2launcher/Launcher;)Lnet/oneplus/h2launcher/AssetCache;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 191
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    return-object v0
.end method

.method static synthetic access$2600(Lnet/oneplus/h2launcher/Launcher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 191
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAppEditComponent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lnet/oneplus/h2launcher/Launcher;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 191
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAppEditIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2800(Lnet/oneplus/h2launcher/Launcher;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 191
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAppEditComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$2900(Lnet/oneplus/h2launcher/Launcher;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 191
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAppEditDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$300(Lnet/oneplus/h2launcher/Launcher;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 191
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mOverviewPanel:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3002(Lnet/oneplus/h2launcher/Launcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Launcher;
    .param p1, "x1"    # Z

    .prologue
    .line 191
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/Launcher;->mIsLeavingForSelectingIconPack:Z

    return p1
.end method

.method static synthetic access$3102(Lnet/oneplus/h2launcher/Launcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Launcher;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher;->mAppEditResourceShowListPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3202(Lnet/oneplus/h2launcher/Launcher;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Launcher;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 191
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher;->mApplyIconPackTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$3300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lnet/oneplus/h2launcher/Launcher;->APPLY_ICON_PACK_TASK_CALLER:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lnet/oneplus/h2launcher/Launcher;)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 191
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mSearchProvider:Landroid/appwidget/AppWidgetProviderInfo;

    return-object v0
.end method

.method static synthetic access$3502(Lnet/oneplus/h2launcher/Launcher;Landroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Launcher;
    .param p1, "x1"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 191
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher;->mSearchProvider:Landroid/appwidget/AppWidgetProviderInfo;

    return-object p1
.end method

.method static synthetic access$3602(Lnet/oneplus/h2launcher/Launcher;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Launcher;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 191
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher;->mSwitchingProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$400(Lnet/oneplus/h2launcher/Launcher;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 191
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWidgetsButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$502(Lnet/oneplus/h2launcher/Launcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Launcher;
    .param p1, "x1"    # Z

    .prologue
    .line 191
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/Launcher;->mDoubleTapEnabled:Z

    return p1
.end method

.method static synthetic access$600(Lnet/oneplus/h2launcher/Launcher;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 191
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->callOnDoubleTapSettingsChange()V

    return-void
.end method

.method static synthetic access$702(Lnet/oneplus/h2launcher/Launcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Launcher;
    .param p1, "x1"    # Z

    .prologue
    .line 191
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/Launcher;->mWillResetWallpaper:Z

    return p1
.end method

.method static synthetic access$802(Lnet/oneplus/h2launcher/Launcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Launcher;
    .param p1, "x1"    # Z

    .prologue
    .line 191
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/Launcher;->mSearchBarVisible:Z

    return p1
.end method

.method static synthetic access$900(Lnet/oneplus/h2launcher/Launcher;)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 191
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher;->mSearchBarTransparent:Z

    return v0
.end method

.method static synthetic access$902(Lnet/oneplus/h2launcher/Launcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Launcher;
    .param p1, "x1"    # Z

    .prologue
    .line 191
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/Launcher;->mSearchBarTransparent:Z

    return p1
.end method

.method private addAppWidgetFromDrop(Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;JJ[I[I)V
    .locals 8
    .param p1, "info"    # Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cell"    # [I
    .param p7, "span"    # [I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 3604
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->resetAddInfo()V

    .line 3605
    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    iput-wide p2, p1, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->container:J

    iput-wide p2, v3, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    .line 3606
    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    iput-wide p4, p1, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->screenId:J

    iput-wide p4, v3, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    .line 3607
    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    iput-object v5, v3, Lnet/oneplus/h2launcher/ItemInfo;->dropPos:[I

    .line 3608
    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    iget v4, p1, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->minSpanX:I

    iput v4, v3, Lnet/oneplus/h2launcher/ItemInfo;->minSpanX:I

    .line 3609
    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    iget v4, p1, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->minSpanY:I

    iput v4, v3, Lnet/oneplus/h2launcher/ItemInfo;->minSpanY:I

    .line 3611
    if-eqz p6, :cond_0

    .line 3612
    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    aget v4, p6, v6

    iput v4, v3, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    .line 3613
    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    aget v4, p6, v7

    iput v4, v3, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    .line 3615
    :cond_0
    if-eqz p7, :cond_1

    .line 3616
    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    aget v4, p7, v6

    iput v4, v3, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    .line 3617
    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    aget v4, p7, v7

    iput v4, v3, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    .line 3620
    :cond_1
    iget-object v1, p1, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    .line 3622
    .local v1, "hostView":Landroid/appwidget/AppWidgetHostView;
    if-eqz v1, :cond_2

    .line 3623
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v0

    .line 3624
    .local v0, "appWidgetId":I
    iget-object v3, p1, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->info:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    invoke-virtual {p0, v0, p1, v1, v3}, Lnet/oneplus/h2launcher/Launcher;->addAppWidgetImpl(ILnet/oneplus/h2launcher/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;)V

    .line 3627
    iput-object v5, p1, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    .line 3636
    :goto_0
    return-void

    .line 3630
    .end local v0    # "appWidgetId":I
    :cond_2
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/LauncherAppState;->getAppWidgetHost()Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 3631
    .restart local v0    # "appWidgetId":I
    iget-object v2, p1, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->bindOptions:Landroid/os/Bundle;

    .line 3633
    .local v2, "options":Landroid/os/Bundle;
    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher;->mAppWidgetManager:Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    iget-object v4, p1, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->info:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    invoke-virtual {v3, v0, v4, v2}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    .line 3634
    iget-object v3, p1, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->info:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    invoke-virtual {p0, v0, p1, v5, v3}, Lnet/oneplus/h2launcher/Launcher;->addAppWidgetImpl(ILnet/oneplus/h2launcher/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;)V

    goto :goto_0
.end method

.method public static addDumpLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "debugLog"    # Z

    .prologue
    .line 7339
    if-eqz p3, :cond_0

    .line 7340
    if-eqz p2, :cond_1

    .line 7341
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7353
    :cond_0
    :goto_0
    return-void

    .line 7343
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;
    .param p2, "debugLog"    # Z

    .prologue
    .line 7335
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V

    .line 7336
    return-void
.end method

.method private bindSearchProviderChangedOnLeaveOverviewMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3794
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher;->mShouldRefreshQsbSearchBarOnLeaveOverviewMode:Z

    if-eqz v0, :cond_0

    .line 3795
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/Launcher;->bindSearchProviderChanged(Z)V

    .line 3796
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/Launcher;->mShouldRefreshQsbSearchBarOnLeaveOverviewMode:Z

    .line 3798
    :cond_0
    return-void
.end method

.method private callOnDoubleTapSettingsChange()V
    .locals 3

    .prologue
    .line 2355
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mDoubleTapSettingsChangeListener:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/DoubleTapTouchListener$OnDoubleTapSettingsChangeListener;

    .line 2356
    .local v0, "l":Lnet/oneplus/h2launcher/DoubleTapTouchListener$OnDoubleTapSettingsChangeListener;
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/Launcher;->mDoubleTapEnabled:Z

    invoke-interface {v0, v2}, Lnet/oneplus/h2launcher/DoubleTapTouchListener$OnDoubleTapSettingsChangeListener;->onDoubleTapSettingsChange(Z)V

    goto :goto_0

    .line 2358
    .end local v0    # "l":Lnet/oneplus/h2launcher/DoubleTapTouchListener$OnDoubleTapSettingsChangeListener;
    :cond_0
    return-void
.end method

.method private canRunNewAppsAnimation()Z
    .locals 6

    .prologue
    .line 6619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher;->mDragController:Lnet/oneplus/h2launcher/DragController;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/DragController;->getLastGestureUpTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 6620
    .local v0, "diff":J
    sget v2, Lnet/oneplus/h2launcher/Launcher;->NEW_APPS_ANIMATION_INACTIVE_TIMEOUT_SECONDS:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mClings:Lnet/oneplus/h2launcher/LauncherClings;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mClings:Lnet/oneplus/h2launcher/LauncherClings;

    .line 6621
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/LauncherClings;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkNeedExistOverviewModeOnClickEmptyCell()Z
    .locals 3

    .prologue
    .line 7511
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CellLayout;

    .line 7512
    .local v0, "layout":Lnet/oneplus/h2launcher/CellLayout;
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/Launcher;->checkNeedExistOverviewModeOnClickEmptyCell(Lnet/oneplus/h2launcher/CellLayout;)Z

    move-result v1

    return v1
.end method

.method private checkNeedExistOverviewModeOnClickEmptyCell(Lnet/oneplus/h2launcher/CellLayout;)Z
    .locals 1
    .param p1, "layout"    # Lnet/oneplus/h2launcher/CellLayout;

    .prologue
    .line 7516
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/CellLayout;->isTouchDownCellEmpty()Z

    move-result v0

    return v0
.end method

.method private clearTypedText()V
    .locals 2

    .prologue
    .line 2095
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2096
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2097
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 2098
    return-void
.end method

.method private completeAdd(Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;)J
    .locals 8
    .param p1, "args"    # Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;

    .prologue
    const/4 v6, 0x0

    .line 1153
    iget-wide v4, p1, Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;->screenId:J

    .line 1154
    .local v4, "screenId":J
    iget-wide v0, p1, Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1157
    iget-wide v0, p1, Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;->screenId:J

    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/Launcher;->ensurePendingDropLayoutExists(J)J

    move-result-wide v4

    .line 1160
    :cond_0
    iget v0, p1, Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;->requestCode:I

    sparse-switch v0, :sswitch_data_0

    .line 1175
    :goto_0
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->resetAddInfo()V

    .line 1176
    return-wide v4

    .line 1162
    :sswitch_0
    iget-object v1, p1, Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    iget-wide v2, p1, Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;->container:J

    iget v6, p1, Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;->cellX:I

    iget v7, p1, Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;->cellY:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lnet/oneplus/h2launcher/Launcher;->completeAddShortcut(Landroid/content/Intent;JJII)V

    goto :goto_0

    .line 1166
    :sswitch_1
    iget v1, p1, Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;->appWidgetId:I

    iget-wide v2, p1, Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;->container:J

    move-object v0, p0

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lnet/oneplus/h2launcher/Launcher;->completeAddAppWidget(IJJLandroid/appwidget/AppWidgetHostView;Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;)V

    goto :goto_0

    .line 1169
    :sswitch_2
    iget v0, p1, Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;->appWidgetId:I

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/Launcher;->completeRestoreAppWidget(I)V

    goto :goto_0

    .line 1160
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
        0xc -> :sswitch_2
    .end sparse-switch
.end method

.method private completeAddShortcut(Landroid/content/Intent;JJII)V
    .locals 30
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I

    .prologue
    .line 2522
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/oneplus/h2launcher/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 2523
    .local v11, "cellXY":[I
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    iget-object v0, v6, Lnet/oneplus/h2launcher/ItemInfo;->dropPos:[I

    move-object/from16 v28, v0

    .line 2524
    .local v28, "touchXY":[I
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/oneplus/h2launcher/Launcher;->getCellLayout(JJ)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v10

    .line 2526
    .local v10, "layout":Lnet/oneplus/h2launcher/CellLayout;
    invoke-static/range {p0 .. p1}, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->fromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lnet/oneplus/h2launcher/ShortcutInfo;

    move-result-object v26

    .line 2527
    .local v26, "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    if-nez v26, :cond_1

    .line 2568
    :cond_0
    :goto_0
    return-void

    .line 2530
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Launcher;->createShortcut(Lnet/oneplus/h2launcher/ShortcutInfo;)Landroid/view/View;

    move-result-object v7

    .line 2533
    .local v7, "view":Landroid/view/View;
    if-ltz p6, :cond_2

    if-ltz p7, :cond_2

    .line 2534
    const/4 v6, 0x0

    aput p6, v11, v6

    .line 2535
    const/4 v6, 0x1

    aput p7, v11, v6

    .line 2536
    const/16 v25, 0x1

    .line 2539
    .local v25, "foundCellSpan":Z
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-wide/from16 v8, p2

    invoke-virtual/range {v6 .. v15}, Lnet/oneplus/h2launcher/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLnet/oneplus/h2launcher/CellLayout;[IFZLnet/oneplus/h2launcher/DragView;Ljava/lang/Runnable;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2543
    new-instance v13, Lnet/oneplus/h2launcher/DropTarget$DragObject;

    invoke-direct {v13}, Lnet/oneplus/h2launcher/DropTarget$DragObject;-><init>()V

    .line 2544
    .local v13, "dragObject":Lnet/oneplus/h2launcher/DropTarget$DragObject;
    move-object/from16 v0, v26

    iput-object v0, v13, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 2545
    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    const/4 v12, 0x0

    const/4 v14, 0x1

    move-object v9, v7

    invoke-virtual/range {v8 .. v14}, Lnet/oneplus/h2launcher/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lnet/oneplus/h2launcher/CellLayout;[IFLnet/oneplus/h2launcher/DropTarget$DragObject;Z)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2557
    .end local v13    # "dragObject":Lnet/oneplus/h2launcher/DropTarget$DragObject;
    :goto_1
    if-nez v25, :cond_5

    .line 2558
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lnet/oneplus/h2launcher/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lnet/oneplus/h2launcher/Launcher;->showOutOfSpaceMessage(Z)V

    goto :goto_0

    .line 2549
    .end local v25    # "foundCellSpan":Z
    :cond_2
    if-eqz v28, :cond_4

    .line 2551
    const/4 v6, 0x0

    aget v15, v28, v6

    const/4 v6, 0x1

    aget v16, v28, v6

    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object v14, v10

    move-object/from16 v19, v11

    invoke-virtual/range {v14 .. v19}, Lnet/oneplus/h2launcher/CellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v27

    .line 2552
    .local v27, "result":[I
    if-eqz v27, :cond_3

    const/16 v25, 0x1

    .line 2553
    .restart local v25    # "foundCellSpan":Z
    :goto_2
    goto :goto_1

    .line 2552
    .end local v25    # "foundCellSpan":Z
    :cond_3
    const/16 v25, 0x0

    goto :goto_2

    .line 2554
    .end local v27    # "result":[I
    :cond_4
    const/4 v6, 0x1

    const/4 v8, 0x1

    invoke-virtual {v10, v11, v6, v8}, Lnet/oneplus/h2launcher/CellLayout;->findCellForSpan([III)Z

    move-result v25

    .restart local v25    # "foundCellSpan":Z
    goto :goto_1

    .line 2562
    :cond_5
    const/4 v6, 0x0

    aget v20, v11, v6

    const/4 v6, 0x1

    aget v21, v11, v6

    move-object/from16 v14, p0

    move-object/from16 v15, v26

    move-wide/from16 v16, p2

    move-wide/from16 v18, p4

    invoke-static/range {v14 .. v21}, Lnet/oneplus/h2launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;JJII)V

    .line 2564
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lnet/oneplus/h2launcher/Launcher;->mRestoring:Z

    if-nez v6, :cond_0

    .line 2565
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    const/4 v6, 0x0

    aget v20, v11, v6

    const/4 v6, 0x1

    aget v21, v11, v6

    const/16 v22, 0x1

    const/16 v23, 0x1

    .line 2566
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/Launcher;->isWorkspaceLocked()Z

    move-result v24

    move-object v15, v7

    move-wide/from16 v16, p2

    move-wide/from16 v18, p4

    .line 2565
    invoke-virtual/range {v14 .. v24}, Lnet/oneplus/h2launcher/Workspace;->addInScreen(Landroid/view/View;JJIIIIZ)V

    goto/16 :goto_0
.end method

.method private completeRestoreAppWidget(I)V
    .locals 4
    .param p1, "appWidgetId"    # I

    .prologue
    .line 6494
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v2, p1}, Lnet/oneplus/h2launcher/Workspace;->getWidgetForAppWidgetId(I)Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;

    move-result-object v1

    .line 6495
    .local v1, "view":Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;

    if-nez v2, :cond_1

    .line 6496
    :cond_0
    const-string v2, "Launcher"

    const-string v3, "Widget update called, when the widget no longer exists."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6505
    :goto_0
    return-void

    .line 6500
    :cond_1
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    .line 6501
    .local v0, "info":Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;
    const/4 v2, 0x0

    iput v2, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->restoreStatus:I

    .line 6503
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Workspace;->reinflateWidgetsIfNecessary()V

    .line 6504
    invoke-static {p0, v0}, Lnet/oneplus/h2launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;)V

    goto :goto_0
.end method

.method private copyFolderIconToImage(Lnet/oneplus/h2launcher/FolderIcon;)V
    .locals 7
    .param p1, "fi"    # Lnet/oneplus/h2launcher/FolderIcon;

    .prologue
    .line 4879
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/FolderIcon;->getMeasuredWidth()I

    move-result v3

    .line 4880
    .local v3, "width":I
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/FolderIcon;->getMeasuredHeight()I

    move-result v0

    .line 4883
    .local v0, "height":I
    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    if-nez v4, :cond_0

    .line 4884
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lnet/oneplus/h2launcher/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    .line 4886
    :cond_0
    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, v3, :cond_1

    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    .line 4887
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v4, v0, :cond_2

    .line 4888
    :cond_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lnet/oneplus/h2launcher/Launcher;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    .line 4889
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lnet/oneplus/h2launcher/Launcher;->mFolderIconCanvas:Landroid/graphics/Canvas;

    .line 4893
    :cond_2
    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;

    if-eqz v4, :cond_6

    .line 4894
    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;

    .line 4901
    .local v1, "lp":Lnet/oneplus/h2launcher/DragLayer$LayoutParams;
    :goto_0
    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mRectForFolderAnimation:Landroid/graphics/Rect;

    invoke-virtual {v4, p1, v5}, Lnet/oneplus/h2launcher/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v2

    .line 4902
    .local v2, "scale":F
    const/4 v4, 0x1

    iput-boolean v4, v1, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->customPosition:Z

    .line 4903
    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher;->mRectForFolderAnimation:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iput v4, v1, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->x:I

    .line 4904
    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher;->mRectForFolderAnimation:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iput v4, v1, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->y:I

    .line 4905
    int-to-float v4, v3

    mul-float/2addr v4, v2

    float-to-int v4, v4

    iput v4, v1, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->width:I

    .line 4906
    int-to-float v4, v0

    mul-float/2addr v4, v2

    float-to-int v4, v4

    iput v4, v1, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->height:I

    .line 4908
    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher;->mFolderIconCanvas:Landroid/graphics/Canvas;

    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 4909
    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher;->mFolderIconCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v4}, Lnet/oneplus/h2launcher/FolderIcon;->draw(Landroid/graphics/Canvas;)V

    .line 4910
    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4911
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/FolderIcon;->getFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 4912
    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/FolderIcon;->getFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v5

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Folder;->getPivotXForIconAnimation()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 4913
    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/FolderIcon;->getFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v5

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Folder;->getPivotYForIconAnimation()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 4917
    :cond_3
    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/DragLayer;->indexOfChild(Landroid/view/View;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 4918
    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/DragLayer;->removeView(Landroid/view/View;)V

    .line 4920
    :cond_4
    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v1}, Lnet/oneplus/h2launcher/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4921
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/FolderIcon;->getFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 4922
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/FolderIcon;->getFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v4

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Folder;->bringToFront()V

    .line 4924
    :cond_5
    return-void

    .line 4896
    .end local v1    # "lp":Lnet/oneplus/h2launcher/DragLayer$LayoutParams;
    .end local v2    # "scale":F
    :cond_6
    new-instance v1, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;

    invoke-direct {v1, v3, v0}, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;-><init>(II)V

    .restart local v1    # "lp":Lnet/oneplus/h2launcher/DragLayer$LayoutParams;
    goto/16 :goto_0
.end method

.method private createNewAppBounceAnimation(Landroid/view/View;I)Landroid/animation/ValueAnimator;
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "i"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 6625
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const-string v2, "alpha"

    new-array v3, v4, [F

    aput v6, v3, v5

    .line 6626
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "scaleX"

    new-array v3, v4, [F

    aput v6, v3, v5

    .line 6627
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "scaleY"

    new-array v4, v4, [F

    aput v6, v4, v5

    .line 6628
    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v1, v2

    .line 6625
    invoke-static {p1, v1}, Lnet/oneplus/h2launcher/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 6629
    .local v0, "bounceAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6630
    mul-int/lit8 v1, p2, 0x55

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 6631
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x3fa66666    # 1.3f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6632
    return-object v0
.end method

.method private disableNewScreenInOverview()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 6088
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v1

    .line 6089
    .local v1, "spKey":Ljava/lang/String;
    invoke-virtual {p0, v1, v4}, Lnet/oneplus/h2launcher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 6090
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "overview_add_screen"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6091
    return-void
.end method

.method public static dumpDebugLogsToConsole()V
    .locals 0

    .prologue
    .line 7332
    return-void
.end method

.method private ensurePendingDropLayoutExists(J)J
    .locals 3
    .param p1, "screenId"    # J

    .prologue
    .line 1549
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1, p1, p2}, Lnet/oneplus/h2launcher/Workspace;->getScreenWithId(J)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v0

    .line 1550
    .local v0, "dropLayout":Lnet/oneplus/h2launcher/CellLayout;
    if-nez v0, :cond_0

    .line 1553
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->addExtraEmptyScreen()Z

    .line 1554
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->commitExtraEmptyScreen()J

    move-result-wide p1

    .line 1556
    .end local p1    # "screenId":J
    :cond_0
    return-wide p1
.end method

.method private executePendingAction(Z)V
    .locals 8
    .param p1, "stillOverviewMode"    # Z

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 4345
    iget v3, p0, Lnet/oneplus/h2launcher/Launcher;->mNextAction:I

    packed-switch v3, :pswitch_data_0

    .line 4378
    :goto_0
    :pswitch_0
    iput v4, p0, Lnet/oneplus/h2launcher/Launcher;->mNextAction:I

    .line 4379
    iput-boolean v4, p0, Lnet/oneplus/h2launcher/Launcher;->mUndoAction:Z

    .line 4380
    if-eqz p1, :cond_3

    .line 4390
    :goto_1
    return-void

    .line 4349
    :pswitch_1
    iget-boolean v3, p0, Lnet/oneplus/h2launcher/Launcher;->mUndoAction:Z

    if-eqz v3, :cond_0

    .line 4350
    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher;->mCurrentLayout:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/CellLayout;->revertSortAllChildrens()V

    .line 4351
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->updateUtilsButtonVisibility()V

    .line 4352
    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher;->mUtilsButtonClicked:[Z

    aput-boolean v4, v3, v4

    goto :goto_0

    .line 4354
    :cond_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher;->mCurrentLayout:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/CellLayout;->commitTempPlacement()V

    goto :goto_0

    .line 4358
    :pswitch_2
    iget-boolean v3, p0, Lnet/oneplus/h2launcher/Launcher;->mUndoAction:Z

    if-eqz v3, :cond_1

    .line 4359
    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher;->mCurrentLayout:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 4360
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->updateUtilsButtonVisibility()V

    .line 4361
    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher;->mUtilsButtonClicked:[Z

    aput-boolean v4, v3, v6

    goto :goto_0

    .line 4363
    :cond_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher;->mCurrentLayout:Lnet/oneplus/h2launcher/CellLayout;

    .line 4364
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v1

    .line 4365
    .local v1, "container":Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 4366
    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4367
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/ItemInfo;

    invoke-static {p0, v3}, Lnet/oneplus/h2launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;)V

    .line 4365
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4369
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher;->mCurrentLayout:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/CellLayout;->removeAllViews()V

    .line 4371
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 4372
    invoke-virtual {v1, v5}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->setScaleX(F)V

    .line 4373
    invoke-virtual {v1, v5}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->setScaleY(F)V

    .line 4374
    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v3, v6, v6}, Lnet/oneplus/h2launcher/Workspace;->removeExtraEmptyScreen(ZZ)V

    goto :goto_0

    .line 4383
    .end local v1    # "container":Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;
    .end local v2    # "i":I
    :cond_3
    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v4, Lnet/oneplus/h2launcher/Launcher$31;

    invoke-direct {v4, p0}, Lnet/oneplus/h2launcher/Launcher$31;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    const-wide/16 v6, 0x12c

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 4345
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static generateViewId()I
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 1120
    sget-boolean v2, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_JB_MR1:Z

    if-eqz v2, :cond_0

    .line 1121
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    .line 1131
    .local v0, "newValue":I
    .local v1, "result":I
    :goto_0
    return v1

    .line 1126
    :cond_0
    sget-object v2, Lnet/oneplus/h2launcher/Launcher;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 1128
    add-int/lit8 v0, v1, 0x1

    .line 1129
    const v2, 0xffffff

    if-le v0, v2, :cond_1

    const/4 v0, 0x1

    .line 1130
    :cond_1
    sget-object v2, Lnet/oneplus/h2launcher/Launcher;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public static getLauncher(Landroid/content/Context;)Lnet/oneplus/h2launcher/Launcher;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 7525
    instance-of v1, p0, Lnet/oneplus/h2launcher/Launcher;

    if-eqz v1, :cond_0

    .line 7526
    check-cast p0, Lnet/oneplus/h2launcher/Launcher;

    .line 7531
    .end local p0    # "context":Landroid/content/Context;
    .local v0, "appState":Lnet/oneplus/h2launcher/LauncherAppState;
    :goto_0
    return-object p0

    .line 7527
    .end local v0    # "appState":Lnet/oneplus/h2launcher/LauncherAppState;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstanceNoCreate()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    .restart local v0    # "appState":Lnet/oneplus/h2launcher/LauncherAppState;
    if-eqz v0, :cond_1

    .line 7528
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncher()Lnet/oneplus/h2launcher/Launcher;

    move-result-object v1

    instance-of v1, v1, Lnet/oneplus/h2launcher/Launcher;

    if-eqz v1, :cond_1

    .line 7529
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncher()Lnet/oneplus/h2launcher/Launcher;

    move-result-object p0

    goto :goto_0

    .line 7531
    :cond_1
    check-cast p0, Landroid/content/ContextWrapper;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/Launcher;

    move-object p0, v1

    goto :goto_0
.end method

.method private getTypedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2091
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private growAndFadeOutFolderIcon(Lnet/oneplus/h2launcher/FolderIcon;)V
    .locals 14
    .param p1, "fi"    # Lnet/oneplus/h2launcher/FolderIcon;

    .prologue
    const/high16 v10, 0x3fc00000    # 1.5f

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 4927
    if-nez p1, :cond_0

    .line 4950
    :goto_0
    return-void

    .line 4928
    :cond_0
    const-string v7, "alpha"

    new-array v8, v13, [F

    const/4 v9, 0x0

    aput v9, v8, v12

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 4929
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    const-string v7, "scaleX"

    new-array v8, v13, [F

    aput v10, v8, v12

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 4930
    .local v5, "scaleX":Landroid/animation/PropertyValuesHolder;
    const-string v7, "scaleY"

    new-array v8, v13, [F

    aput v10, v8, v12

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 4932
    .local v6, "scaleY":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/FolderInfo;

    .line 4933
    .local v2, "info":Lnet/oneplus/h2launcher/FolderInfo;
    iget-wide v8, v2, Lnet/oneplus/h2launcher/FolderInfo;->container:J

    const-wide/16 v10, -0x65

    cmp-long v7, v8, v10

    if-nez v7, :cond_1

    .line 4934
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/CellLayout;

    .line 4935
    .local v1, "cl":Lnet/oneplus/h2launcher/CellLayout;
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    .line 4936
    .local v3, "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    iget v7, v3, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    iget v8, v3, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v1, v7, v8}, Lnet/oneplus/h2launcher/CellLayout;->setFolderLeaveBehindCell(II)V

    .line 4940
    .end local v1    # "cl":Lnet/oneplus/h2launcher/CellLayout;
    .end local v3    # "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    :cond_1
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/Launcher;->copyFolderIconToImage(Lnet/oneplus/h2launcher/FolderIcon;)V

    .line 4941
    const/4 v7, 0x4

    invoke-virtual {p1, v7}, Lnet/oneplus/h2launcher/FolderIcon;->setVisibility(I)V

    .line 4943
    iget-object v7, p0, Lnet/oneplus/h2launcher/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v8, v12

    aput-object v5, v8, v13

    const/4 v9, 0x2

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Lnet/oneplus/h2launcher/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 4945
    .local v4, "oa":Landroid/animation/ObjectAnimator;
    sget-boolean v7, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_LOLLIPOP:Z

    if-eqz v7, :cond_2

    .line 4946
    new-instance v7, Lnet/oneplus/h2launcher/LogDecelerateInterpolator;

    const/16 v8, 0x64

    invoke-direct {v7, v8, v12}, Lnet/oneplus/h2launcher/LogDecelerateInterpolator;-><init>(II)V

    invoke-virtual {v4, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4948
    :cond_2
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f002d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4949
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private handleActivityResult(IILandroid/content/Intent;)V
    .locals 19
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1182
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lnet/oneplus/h2launcher/Launcher;->setWaitingForResult(Z)V

    .line 1183
    move-object/from16 v0, p0

    iget v15, v0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddWidgetId:I

    .line 1184
    .local v15, "pendingAddWidgetId":I
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddWidgetId:I

    .line 1186
    new-instance v12, Lnet/oneplus/h2launcher/Launcher$9;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v12, v0, v1}, Lnet/oneplus/h2launcher/Launcher$9;-><init>(Lnet/oneplus/h2launcher/Launcher;I)V

    .line 1194
    .local v12, "exitSpringLoaded":Ljava/lang/Runnable;
    const/16 v4, 0xe

    move/from16 v0, p1

    if-ne v0, v4, :cond_2

    .line 1195
    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_2

    .line 1196
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Launcher;->mAppEditComponent:Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Launcher;->mAppEditResourceShowListPackage:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 1362
    :cond_0
    :goto_0
    return-void

    .line 1197
    :cond_1
    const-string v4, "res_name"

    .line 1198
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lnet/oneplus/h2launcher/Launcher;->mAppEditResourceName:Ljava/lang/String;

    .line 1199
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Launcher;->mAppEditResourceShowListPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lnet/oneplus/h2launcher/Launcher;->mAppEditResourcePackage:Ljava/lang/String;

    .line 1200
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Launcher;->mAppEditIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Launcher;->mAppEditResourcePackage:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/oneplus/h2launcher/Launcher;->mAppEditResourceName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Lnet/oneplus/h2launcher/config/CustomInfoHelper;->getCustomIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1202
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lnet/oneplus/h2launcher/Launcher;->mAppEditHasReset:Z

    goto :goto_0

    .line 1207
    :cond_2
    const/16 v4, 0xb

    move/from16 v0, p1

    if-ne v0, v4, :cond_5

    .line 1209
    if-eqz p3, :cond_3

    const-string v4, "appWidgetId"

    const/4 v6, -0x1

    .line 1210
    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1211
    .local v5, "appWidgetId":I
    :goto_1
    if-nez p2, :cond_4

    .line 1212
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lnet/oneplus/h2launcher/Launcher;->completeTwoStageWidgetDrop(II)V

    .line 1213
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    const/4 v6, 0x1

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v12, v7, v8}, Lnet/oneplus/h2launcher/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    goto :goto_0

    .line 1210
    .end local v5    # "appWidgetId":I
    :cond_3
    const/4 v5, -0x1

    goto :goto_1

    .line 1215
    .restart local v5    # "appWidgetId":I
    :cond_4
    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_0

    .line 1216
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddWidgetInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    const/16 v9, 0x1f4

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lnet/oneplus/h2launcher/Launcher;->addAppWidgetImpl(ILnet/oneplus/h2launcher/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;I)V

    .line 1221
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/Launcher;->getOrCreateQsbBar()Landroid/view/View;

    goto :goto_0

    .line 1224
    .end local v5    # "appWidgetId":I
    :cond_5
    const/16 v4, 0xa

    move/from16 v0, p1

    if-eq v0, v4, :cond_6

    const/16 v4, 0x19

    move/from16 v0, p1

    if-ne v0, v4, :cond_8

    .line 1226
    :cond_6
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v4

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/oos/StyleManager;->isWallpaperScrollable()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1227
    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_0

    if-eqz p3, :cond_0

    .line 1228
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/Launcher;->startCropActivity(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 1231
    :cond_7
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/Launcher;->mRequestCode:I

    .line 1232
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/Launcher;->mResultCode:I

    .line 1233
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/oneplus/h2launcher/Launcher;->mData:Landroid/content/Intent;

    goto/16 :goto_0

    .line 1236
    :cond_8
    const/16 v4, 0xf

    move/from16 v0, p1

    if-eq v0, v4, :cond_9

    const/16 v4, 0x10

    move/from16 v0, p1

    if-ne v0, v4, :cond_a

    .line 1238
    :cond_9
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/Launcher;->mRequestCode:I

    .line 1239
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lnet/oneplus/h2launcher/Launcher;->mResultCode:I

    .line 1240
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/oneplus/h2launcher/Launcher;->mData:Landroid/content/Intent;

    goto/16 :goto_0

    .line 1242
    :cond_a
    const/16 v4, 0x1a

    move/from16 v0, p1

    if-ne v0, v4, :cond_b

    .line 1243
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lnet/oneplus/h2launcher/Launcher;->mShowWorkspaceWithoutSaveWallpaper:Z

    .line 1244
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lnet/oneplus/h2launcher/Launcher;->showWorkspace(Z)V

    goto/16 :goto_0

    .line 1248
    :cond_b
    const/16 v4, 0x9

    move/from16 v0, p1

    if-eq v0, v4, :cond_c

    const/4 v4, 0x5

    move/from16 v0, p1

    if-ne v0, v4, :cond_e

    :cond_c
    const/4 v13, 0x1

    .line 1251
    .local v13, "isWidgetDrop":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/Launcher;->isWorkspaceLocked()Z

    move-result v18

    .line 1253
    .local v18, "workspaceLocked":Z
    if-eqz v13, :cond_15

    .line 1255
    if-eqz p3, :cond_f

    const-string v4, "appWidgetId"

    const/4 v6, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 1257
    .local v17, "widgetId":I
    :goto_3
    if-gez v17, :cond_10

    .line 1258
    move v5, v15

    .line 1264
    .restart local v5    # "appWidgetId":I
    :goto_4
    if-ltz v5, :cond_d

    if-nez p2, :cond_12

    .line 1265
    :cond_d
    const-string v4, "Launcher"

    const-string v6, "Error: appWidgetId (EXTRA_APPWIDGET_ID) was not returned from the widget configuration activity."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    const/16 v16, 0x0

    .line 1268
    .local v16, "result":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v5}, Lnet/oneplus/h2launcher/Launcher;->completeTwoStageWidgetDrop(II)V

    .line 1269
    new-instance v14, Lnet/oneplus/h2launcher/Launcher$10;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lnet/oneplus/h2launcher/Launcher$10;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    .line 1275
    .local v14, "onComplete":Ljava/lang/Runnable;
    if-eqz v18, :cond_11

    .line 1278
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v14, v6, v7}, Lnet/oneplus/h2launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1248
    .end local v5    # "appWidgetId":I
    .end local v13    # "isWidgetDrop":Z
    .end local v14    # "onComplete":Ljava/lang/Runnable;
    .end local v16    # "result":I
    .end local v17    # "widgetId":I
    .end local v18    # "workspaceLocked":Z
    :cond_e
    const/4 v13, 0x0

    goto :goto_2

    .line 1255
    .restart local v13    # "isWidgetDrop":Z
    .restart local v18    # "workspaceLocked":Z
    :cond_f
    const/16 v17, -0x1

    goto :goto_3

    .line 1260
    .restart local v17    # "widgetId":I
    :cond_10
    move/from16 v5, v17

    .restart local v5    # "appWidgetId":I
    goto :goto_4

    .line 1280
    .restart local v14    # "onComplete":Ljava/lang/Runnable;
    .restart local v16    # "result":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    const/4 v6, 0x1

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v14, v7, v8}, Lnet/oneplus/h2launcher/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    goto/16 :goto_0

    .line 1284
    .end local v14    # "onComplete":Ljava/lang/Runnable;
    .end local v16    # "result":I
    :cond_12
    if-nez v18, :cond_14

    .line 1285
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    iget-wide v6, v4, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    const-wide/16 v8, -0x64

    cmp-long v4, v6, v8

    if-nez v4, :cond_13

    .line 1288
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    iget-wide v6, v6, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    .line 1289
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lnet/oneplus/h2launcher/Launcher;->ensurePendingDropLayoutExists(J)J

    move-result-wide v6

    iput-wide v6, v4, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    .line 1291
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    iget-wide v6, v6, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    invoke-virtual {v4, v6, v7}, Lnet/oneplus/h2launcher/Workspace;->getScreenWithId(J)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v11

    .line 1293
    .local v11, "dropLayout":Lnet/oneplus/h2launcher/CellLayout;
    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Lnet/oneplus/h2launcher/CellLayout;->setDropPending(Z)V

    .line 1294
    new-instance v14, Lnet/oneplus/h2launcher/Launcher$11;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v14, v0, v1, v5, v11}, Lnet/oneplus/h2launcher/Launcher$11;-><init>(Lnet/oneplus/h2launcher/Launcher;IILnet/oneplus/h2launcher/CellLayout;)V

    .line 1301
    .restart local v14    # "onComplete":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    const/4 v6, 0x1

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v14, v7, v8}, Lnet/oneplus/h2launcher/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    goto/16 :goto_0

    .line 1304
    .end local v11    # "dropLayout":Lnet/oneplus/h2launcher/CellLayout;
    .end local v14    # "onComplete":Ljava/lang/Runnable;
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    .line 1305
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v5, v4}, Lnet/oneplus/h2launcher/Launcher;->preparePendingAddArgs(ILandroid/content/Intent;ILnet/oneplus/h2launcher/ItemInfo;)Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;

    move-result-object v4

    sput-object v4, Lnet/oneplus/h2launcher/Launcher;->sPendingAddItem:Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;

    goto/16 :goto_0

    .line 1311
    .end local v5    # "appWidgetId":I
    .end local v17    # "widgetId":I
    :cond_15
    const/16 v4, 0xc

    move/from16 v0, p1

    if-ne v0, v4, :cond_17

    .line 1312
    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_0

    .line 1314
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v15, v4}, Lnet/oneplus/h2launcher/Launcher;->preparePendingAddArgs(ILandroid/content/Intent;ILnet/oneplus/h2launcher/ItemInfo;)Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;

    move-result-object v10

    .line 1316
    .local v10, "args":Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;
    if-eqz v18, :cond_16

    .line 1317
    sput-object v10, Lnet/oneplus/h2launcher/Launcher;->sPendingAddItem:Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;

    goto/16 :goto_0

    .line 1319
    :cond_16
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lnet/oneplus/h2launcher/Launcher;->completeAdd(Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;)J

    goto/16 :goto_0

    .line 1326
    .end local v10    # "args":Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;
    :cond_17
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_18

    .line 1328
    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Launcher;->mPendingRequestArgs:Lnet/oneplus/h2launcher/util/PendingRequestArgs;

    iget-wide v6, v4, Lnet/oneplus/h2launcher/util/PendingRequestArgs;->container:J

    const-wide/16 v8, -0x1

    cmp-long v4, v6, v8

    if-eqz v4, :cond_1a

    .line 1329
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Launcher;->mPendingRequestArgs:Lnet/oneplus/h2launcher/util/PendingRequestArgs;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v4, v6}, Lnet/oneplus/h2launcher/Launcher;->preparePendingAddArgs(ILandroid/content/Intent;ILnet/oneplus/h2launcher/ItemInfo;)Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;

    move-result-object v4

    sput-object v4, Lnet/oneplus/h2launcher/Launcher;->sPendingAddItem:Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;

    .line 1331
    sget-object v4, Lnet/oneplus/h2launcher/Launcher;->sPendingAddItem:Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lnet/oneplus/h2launcher/Launcher;->completeAdd(Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;)J

    .line 1332
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    const/4 v6, 0x1

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v12, v7, v8}, Lnet/oneplus/h2launcher/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    .line 1346
    :cond_18
    :goto_5
    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    iget-wide v6, v4, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    const-wide/16 v8, -0x1

    cmp-long v4, v6, v8

    if-eqz v4, :cond_1c

    .line 1347
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v4, v6}, Lnet/oneplus/h2launcher/Launcher;->preparePendingAddArgs(ILandroid/content/Intent;ILnet/oneplus/h2launcher/ItemInfo;)Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;

    move-result-object v10

    .line 1349
    .restart local v10    # "args":Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/Launcher;->isWorkspaceLocked()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1350
    sput-object v10, Lnet/oneplus/h2launcher/Launcher;->sPendingAddItem:Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;

    .line 1360
    .end local v10    # "args":Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;
    :cond_19
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Launcher;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/DragLayer;->clearAnimatedView()V

    goto/16 :goto_0

    .line 1335
    :cond_1a
    if-nez p2, :cond_18

    .line 1336
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    const/4 v6, 0x1

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v12, v7, v8}, Lnet/oneplus/h2launcher/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    goto :goto_5

    .line 1352
    .restart local v10    # "args":Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;
    :cond_1b
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lnet/oneplus/h2launcher/Launcher;->completeAdd(Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;)J

    .line 1353
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    const/4 v6, 0x1

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v12, v7, v8}, Lnet/oneplus/h2launcher/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    goto :goto_6

    .line 1356
    .end local v10    # "args":Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;
    :cond_1c
    if-nez p2, :cond_19

    .line 1357
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    const/4 v6, 0x1

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v12, v7, v8}, Lnet/oneplus/h2launcher/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    goto :goto_6
.end method

.method private handleOnPrepareOptionsMenu()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3452
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isOnCustomContent()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isAllAppsVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3454
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->closeFolder()V

    .line 3456
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->exitWidgetResizeMode()V

    .line 3458
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3459
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mGlobalSearchController:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->hideGlobalSearchWithoutAnimation()V

    .line 3462
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->isInOverviewMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3463
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/Launcher;->showOverviewMode(Z)V

    .line 3468
    :cond_1
    :goto_0
    return-void

    .line 3465
    :cond_2
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/Launcher;->showWorkspace(Z)V

    goto :goto_0
.end method

.method private static intToState(I)Lnet/oneplus/h2launcher/Launcher$State;
    .locals 6
    .param p0, "stateOrdinal"    # I

    .prologue
    .line 2105
    sget-object v0, Lnet/oneplus/h2launcher/Launcher$State;->WORKSPACE:Lnet/oneplus/h2launcher/Launcher$State;

    .line 2106
    .local v0, "state":Lnet/oneplus/h2launcher/Launcher$State;
    invoke-static {}, Lnet/oneplus/h2launcher/Launcher$State;->values()[Lnet/oneplus/h2launcher/Launcher$State;

    move-result-object v2

    .line 2107
    .local v2, "stateValues":[Lnet/oneplus/h2launcher/Launcher$State;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v2, v3

    .line 2108
    .local v1, "stateValue":Lnet/oneplus/h2launcher/Launcher$State;
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher$State;->ordinal()I

    move-result v5

    if-ne v5, p0, :cond_1

    .line 2109
    move-object v0, v1

    .line 2113
    .end local v1    # "stateValue":Lnet/oneplus/h2launcher/Launcher$State;
    :cond_0
    return-object v0

    .line 2107
    .restart local v1    # "stateValue":Lnet/oneplus/h2launcher/Launcher$State;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private isFromPickOrCrop()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1836
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/oos/StyleManager;->isWallpaperScrollable()Z

    move-result v0

    .line 1837
    .local v0, "isWallpaperScrollable":Z
    if-nez v0, :cond_2

    iget v3, p0, Lnet/oneplus/h2launcher/Launcher;->mRequestCode:I

    const/16 v4, 0xf

    if-eq v3, v4, :cond_0

    iget v3, p0, Lnet/oneplus/h2launcher/Launcher;->mRequestCode:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget v3, p0, Lnet/oneplus/h2launcher/Launcher;->mRequestCode:I

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    iget v3, p0, Lnet/oneplus/h2launcher/Launcher;->mRequestCode:I

    const/16 v4, 0x19

    if-ne v3, v4, :cond_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private isSwitchingLayout()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7419
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 7421
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    .line 7420
    invoke-virtual {p0, v0, v2}, Lnet/oneplus/h2launcher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 7424
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "show_switching_view"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private loadExtractedColorsAndColorItems()V
    .locals 2

    .prologue
    .line 866
    sget-boolean v0, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_NOUGAT:Z

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->getPageIndicator()Lnet/oneplus/h2launcher/PageIndicator;

    move-result-object v0

    if-nez v0, :cond_1

    .line 887
    :cond_0
    :goto_0
    return-void

    .line 869
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mExtractedColors:Lnet/oneplus/h2launcher/dynamicui/ExtractedColors;

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/dynamicui/ExtractedColors;->load(Landroid/content/Context;)V

    .line 870
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->getPageIndicator()Lnet/oneplus/h2launcher/PageIndicator;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mExtractedColors:Lnet/oneplus/h2launcher/dynamicui/ExtractedColors;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/PageIndicator;->updateColor(Lnet/oneplus/h2launcher/dynamicui/ExtractedColors;)V

    .line 871
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v0

    new-instance v1, Lnet/oneplus/h2launcher/Launcher$6;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/Launcher$6;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/util/TaskWorker;->post(Ljava/lang/Runnable;)V

    .line 879
    invoke-static {p0}, Lnet/oneplus/h2launcher/Utilities;->isDarkModeThemeByGlobal(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 885
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isAllAppsVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Launcher;->activateLightStatusBar(Z)V

    goto :goto_0
.end method

.method private mapConfigurationOriActivityInfoOri(I)I
    .locals 6
    .param p1, "configOri"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 6926
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 6927
    .local v0, "d":Landroid/view/Display;
    const/4 v2, 0x2

    .line 6928
    .local v2, "naturalOri":I
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 6942
    :goto_0
    const/4 v5, 0x4

    new-array v3, v5, [I

    fill-array-data v3, :array_0

    .line 6950
    .local v3, "oriMap":[I
    const/4 v1, 0x0

    .line 6951
    .local v1, "indexOffset":I
    if-ne v2, v4, :cond_0

    .line 6952
    const/4 v1, 0x1

    .line 6954
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v4

    add-int/2addr v4, v1

    rem-int/lit8 v4, v4, 0x4

    aget v4, v3, v4

    return v4

    .line 6932
    .end local v1    # "indexOffset":I
    .end local v3    # "oriMap":[I
    :pswitch_0
    move v2, p1

    .line 6933
    goto :goto_0

    .line 6937
    :pswitch_1
    if-ne p1, v4, :cond_1

    const/4 v2, 0x1

    :goto_1
    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    .line 6928
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 6942
    :array_0
    .array-data 4
        0x1
        0x0
        0x9
        0x8
    .end array-data
.end method

.method private markFirstRunActivityShown()V
    .locals 3

    .prologue
    .line 7053
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 7054
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "launcher.first_run_activity_displayed"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 7055
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7056
    return-void
.end method

.method private markIntroScreenDismissed()V
    .locals 3

    .prologue
    .line 7114
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 7115
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "launcher.intro_screen_dismissed"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 7116
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7117
    return-void
.end method

.method private onStartForResult(I)V
    .locals 1
    .param p1, "requestCode"    # I

    .prologue
    .line 3332
    if-ltz p1, :cond_0

    .line 3333
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Launcher;->setWaitingForResult(Z)V

    .line 3335
    :cond_0
    return-void
.end method

.method private preparePendingAddArgs(ILandroid/content/Intent;ILnet/oneplus/h2launcher/ItemInfo;)Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "data"    # Landroid/content/Intent;
    .param p3, "appWidgetId"    # I
    .param p4, "info"    # Lnet/oneplus/h2launcher/ItemInfo;

    .prologue
    .line 1531
    new-instance v0, Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;-><init>(Lnet/oneplus/h2launcher/Launcher$1;)V

    .line 1532
    .local v0, "args":Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;
    iput p1, v0, Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;->requestCode:I

    .line 1533
    iput-object p2, v0, Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    .line 1534
    iget-wide v2, p4, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    iput-wide v2, v0, Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;->container:J

    .line 1535
    iget-wide v2, p4, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    iput-wide v2, v0, Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;->screenId:J

    .line 1536
    iget v1, p4, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    iput v1, v0, Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;->cellX:I

    .line 1537
    iget v1, p4, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    iput v1, v0, Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;->cellY:I

    .line 1538
    iput p3, v0, Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;->appWidgetId:I

    .line 1539
    return-object v0
.end method

.method private processShortcutFromDrop(Lnet/oneplus/h2launcher/PendingAddItemInfo;JJ[I)V
    .locals 4
    .param p1, "info"    # Lnet/oneplus/h2launcher/PendingAddItemInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cell"    # [I

    .prologue
    const/4 v3, 0x1

    .line 3580
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->resetAddInfo()V

    .line 3581
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    iput-wide p2, v1, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    .line 3582
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    iput-wide p4, v1, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    .line 3583
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Lnet/oneplus/h2launcher/ItemInfo;->dropPos:[I

    .line 3585
    if-eqz p6, :cond_0

    .line 3586
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    const/4 v2, 0x0

    aget v2, p6, v2

    iput v2, v1, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    .line 3587
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    aget v2, p6, v3

    iput v2, v1, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    .line 3590
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lnet/oneplus/h2launcher/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 3591
    .local v0, "createShortcutIntent":Landroid/content/Intent;
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    invoke-static {v3, v0, v1}, Lnet/oneplus/h2launcher/util/PendingRequestArgs;->forIntent(ILandroid/content/Intent;Lnet/oneplus/h2launcher/ItemInfo;)Lnet/oneplus/h2launcher/util/PendingRequestArgs;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingRequestArgs:Lnet/oneplus/h2launcher/util/PendingRequestArgs;

    .line 3592
    invoke-static {p0, v0, v3}, Lnet/oneplus/h2launcher/Utilities;->startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 3593
    return-void
.end method

.method private registerContentObservers()V
    .locals 4

    .prologue
    .line 3689
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3692
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "buttons_show_on_screen_navkeys"

    .line 3693
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3694
    .local v1, "settingUri":Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 3696
    const-string v2, "dev_force_show_navbar"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3699
    :cond_0
    if-eqz v1, :cond_1

    .line 3700
    const/4 v2, 0x1

    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher;->mNavigationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3703
    :cond_1
    const-string v2, "android.permission.READ_CONTACTS"

    const/16 v3, 0xca

    invoke-static {p0, v2, v3}, Lnet/oneplus/h2launcher/util/PermissionUtils;->requestPermission(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 3706
    new-instance v2, Lnet/oneplus/h2launcher/WeatherProvider;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/WeatherProvider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mWeatherProvider:Lnet/oneplus/h2launcher/WeatherProvider;

    .line 3707
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mWeatherProvider:Lnet/oneplus/h2launcher/WeatherProvider;

    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/WeatherProvider;->registerContentObserver(Landroid/content/ContentResolver;)V

    .line 3708
    return-void
.end method

.method private registerWallpaperChangedReceiver()V
    .locals 3

    .prologue
    .line 6583
    invoke-static {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    move-result-object v1

    invoke-virtual {v1, p0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->updateWallpaperId(Landroid/content/Context;)V

    .line 6586
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 6587
    const-string v1, "Launcher"

    const-string v2, "Wallpaper changed receiver is registered twice, unregister it..."

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6588
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->unregisterWallpaperChangedReceiver()V

    .line 6591
    :cond_0
    new-instance v1, Lnet/oneplus/h2launcher/WallpaperChangedReceiver;

    invoke-direct {v1}, Lnet/oneplus/h2launcher/WallpaperChangedReceiver;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 6592
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 6593
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6594
    const-string v1, "android.intent.action.KEYGUARD_WALLPAPER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6595
    const-string v1, "net.oneplus.h2launcher.action.BLUR_WALLPAPER_WALLPAPER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6596
    const-string v1, "net.oneplus.h2launcher.action.FIRST_FRAME_DRAWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6597
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lnet/oneplus/h2launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6598
    return-void
.end method

.method private resetAddInfo()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, -0x1

    .line 3508
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    iput-wide v4, v0, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    .line 3509
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    iput-wide v4, v0, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    .line 3510
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    iput v2, v1, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    iput v2, v0, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    .line 3511
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    iput v2, v1, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    iput v2, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    .line 3512
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    const/4 v2, 0x1

    iput v2, v1, Lnet/oneplus/h2launcher/ItemInfo;->minSpanY:I

    iput v2, v0, Lnet/oneplus/h2launcher/ItemInfo;->minSpanX:I

    .line 3513
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lnet/oneplus/h2launcher/ItemInfo;->dropPos:[I

    .line 3514
    return-void
.end method

.method private restoreKeyguardClockStyleForUser()V
    .locals 7

    .prologue
    .line 1674
    invoke-static {p0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->getKeyguardClockStyle(Landroid/content/Context;)I

    move-result v0

    .line 1675
    .local v0, "preferencesStyle":I
    invoke-static {p0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->getKeyguardClockStyleInSettings(Landroid/content/Context;)I

    move-result v1

    .line 1676
    .local v1, "settingsStyle":I
    if-eq v0, v1, :cond_0

    .line 1677
    const-string v2, "Launcher"

    const-string v3, "Restore keyguard clock style setting: preferencesStyle=%d, settingsStyle=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1678
    invoke-static {p0, v0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->setKeyguardClockStyleInSettings(Landroid/content/Context;I)V

    .line 1680
    :cond_0
    return-void
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x1

    const/16 v9, -0x3e9

    const-wide/16 v10, -0x1

    .line 2123
    if-nez p1, :cond_0

    .line 2160
    :goto_0
    return-void

    .line 2127
    :cond_0
    const-string v7, "launcher.state"

    sget-object v8, Lnet/oneplus/h2launcher/Launcher$State;->WORKSPACE:Lnet/oneplus/h2launcher/Launcher$State;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Launcher$State;->ordinal()I

    move-result v8

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Lnet/oneplus/h2launcher/Launcher;->intToState(I)Lnet/oneplus/h2launcher/Launcher$State;

    move-result-object v6

    .line 2128
    .local v6, "state":Lnet/oneplus/h2launcher/Launcher$State;
    sget-object v7, Lnet/oneplus/h2launcher/Launcher$State;->APPS:Lnet/oneplus/h2launcher/Launcher$State;

    if-eq v6, v7, :cond_1

    sget-object v7, Lnet/oneplus/h2launcher/Launcher$State;->WIDGETS:Lnet/oneplus/h2launcher/Launcher$State;

    if-ne v6, v7, :cond_2

    .line 2129
    :cond_1
    iput-object v6, p0, Lnet/oneplus/h2launcher/Launcher;->mOnResumeState:Lnet/oneplus/h2launcher/Launcher$State;

    .line 2132
    :cond_2
    const-string v7, "launcher.current_screen"

    invoke-virtual {p1, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2134
    .local v0, "currentScreen":I
    if-eq v0, v9, :cond_3

    .line 2135
    iget-object v7, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v7, v0}, Lnet/oneplus/h2launcher/Workspace;->setRestorePage(I)V

    .line 2138
    :cond_3
    const-string v7, "launcher.add_container"

    invoke-virtual {p1, v7, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2139
    .local v2, "pendingAddContainer":J
    const-string v7, "launcher.add_screen"

    invoke-virtual {p1, v7, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 2141
    .local v4, "pendingAddScreen":J
    cmp-long v7, v2, v10

    if-eqz v7, :cond_4

    cmp-long v7, v4, v10

    if-lez v7, :cond_4

    .line 2142
    iget-object v7, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    iput-wide v2, v7, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    .line 2143
    iget-object v7, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    iput-wide v4, v7, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    .line 2144
    iget-object v7, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    const-string v8, "launcher.add_cell_x"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    .line 2145
    iget-object v7, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    const-string v8, "launcher.add_cell_y"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    .line 2146
    iget-object v7, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    const-string v8, "launcher.add_span_x"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    .line 2147
    iget-object v7, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    const-string v8, "launcher.add_span_y"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    .line 2148
    const-string v7, "launcher.add_widget_info"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    .line 2150
    .local v1, "info":Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v1, :cond_5

    const/4 v7, 0x0

    .line 2151
    :goto_1
    iput-object v7, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddWidgetInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    .line 2153
    const-string v7, "launcher.add_widget_id"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddWidgetId:I

    .line 2154
    invoke-virtual {p0, v12}, Lnet/oneplus/h2launcher/Launcher;->setWaitingForResult(Z)V

    .line 2155
    iput-boolean v12, p0, Lnet/oneplus/h2launcher/Launcher;->mRestoring:Z

    .line 2158
    .end local v1    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_4
    const-string v7, "launcher.view_ids"

    .line 2159
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lnet/oneplus/h2launcher/util/SerializableSparseIntArray;

    iput-object v7, p0, Lnet/oneplus/h2launcher/Launcher;->mItemIdToViewId:Lnet/oneplus/h2launcher/util/SerializableSparseIntArray;

    goto/16 :goto_0

    .line 2151
    .restart local v1    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_5
    invoke-static {p0, v1}, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    move-result-object v7

    goto :goto_1
.end method

.method private sendLoadingCompleteBroadcastIfNecessary()V
    .locals 6

    .prologue
    .line 6570
    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v4, "launcher.first_load_complete"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6572
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0128

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 6573
    .local v2, "permission":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "net.oneplus.h2launcher.action.FIRST_LOAD_COMPLETE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6574
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1, v2}, Lnet/oneplus/h2launcher/Launcher;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 6575
    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6576
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "launcher.first_load_complete"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 6577
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6579
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "permission":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setUtilsButtonEnabled(Landroid/view/View;Z)V
    .locals 3
    .param p1, "button"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 4329
    if-eqz p1, :cond_0

    .line 4330
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 4331
    if-eqz p2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4332
    if-eqz p2, :cond_0

    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Workspace;->isInOverviewMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mSortButton:Landroid/view/View;

    if-ne p1, v2, :cond_0

    .line 4333
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Workspace;->getNearestLayout()Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v0

    .line 4334
    .local v0, "nearest":Lnet/oneplus/h2launcher/CellLayout;
    if-eqz v0, :cond_0

    .line 4335
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CellLayout;->hasSortableChild()Z

    move-result v1

    .line 4336
    .local v1, "sortableChild":Z
    if-eqz v1, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 4337
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getHapticFeedbackTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v2

    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4338
    invoke-virtual {p1, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 4342
    .end local v0    # "nearest":Lnet/oneplus/h2launcher/CellLayout;
    .end local v1    # "sortableChild":Z
    :cond_0
    return-void

    .line 4331
    :cond_1
    const/16 v2, 0x8

    goto :goto_0

    .line 4336
    .restart local v0    # "nearest":Lnet/oneplus/h2launcher/CellLayout;
    .restart local v1    # "sortableChild":Z
    :cond_2
    const v2, 0x3e851eb8    # 0.26f

    goto :goto_1

    .line 4337
    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private setWorkspaceBackground(I)V
    .locals 3
    .param p1, "background"    # I

    .prologue
    .line 5206
    packed-switch p1, :pswitch_data_0

    .line 5214
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspaceBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5216
    :goto_0
    return-void

    .line 5208
    :pswitch_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 5211
    :pswitch_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 5206
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setWorkspaceLoading(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 3486
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isWorkspaceLocked()Z

    move-result v0

    .line 3487
    .local v0, "isLocked":Z
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspaceLoading:Z

    .line 3488
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isWorkspaceLocked()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3489
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->onWorkspaceLockedChanged()V

    .line 3491
    :cond_0
    return-void
.end method

.method private setupTransparentSystemBarsForLollipop()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2694
    sget-boolean v1, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_LOLLIPOP:Z

    if-eqz v1, :cond_0

    .line 2695
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2696
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit16 v2, v2, 0x700

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 2700
    const/high16 v1, 0xc000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2702
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2703
    invoke-virtual {v0, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 2704
    invoke-virtual {v0, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 2706
    .end local v0    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method private setupViews()V
    .locals 13

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x8

    .line 2166
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mDragController:Lnet/oneplus/h2launcher/DragController;

    .line 2168
    .local v1, "dragController":Lnet/oneplus/h2launcher/DragController;
    const v5, 0x7f110149

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherView:Landroid/view/View;

    .line 2169
    const v5, 0x7f11014b

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lnet/oneplus/h2launcher/FocusIndicatorView;

    iput-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mFocusHandler:Lnet/oneplus/h2launcher/FocusIndicatorView;

    .line 2170
    const v5, 0x7f11014a

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lnet/oneplus/h2launcher/DragLayer;

    iput-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    .line 2171
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    const v8, 0x7f11003a

    invoke-virtual {v5, v8}, Lnet/oneplus/h2launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lnet/oneplus/h2launcher/Workspace;

    iput-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    .line 2172
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    if-eqz v5, :cond_0

    .line 2173
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v5, p0}, Lnet/oneplus/h2launcher/Workspace;->setPageSwitchListener(Lnet/oneplus/h2launcher/PagedView$PageSwitchListener;)V

    .line 2174
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v5, p0}, Lnet/oneplus/h2launcher/Workspace;->setPageReorderListener(Lnet/oneplus/h2launcher/PagedView$PageReorderListener;)V

    .line 2177
    :cond_0
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    const v8, 0x7f11014c

    invoke-virtual {v5, v8}, Lnet/oneplus/h2launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mPageIndicators:Landroid/view/View;

    .line 2178
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherView:Landroid/view/View;

    const/16 v8, 0x700

    invoke-virtual {v5, v8}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 2181
    const v5, 0x7f020268

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/Launcher;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspaceBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2184
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mFoldersController:Lnet/oneplus/h2launcher/FoldersTransitionController;

    invoke-virtual {v5, p0, v1, v8}, Lnet/oneplus/h2launcher/DragLayer;->setup(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/DragController;Lnet/oneplus/h2launcher/FoldersTransitionController;)V

    .line 2187
    const v5, 0x7f110158

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lnet/oneplus/h2launcher/Hotseat;

    iput-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mHotseat:Lnet/oneplus/h2launcher/Hotseat;

    .line 2188
    new-instance v5, Lnet/oneplus/h2launcher/HotseatController;

    invoke-direct {v5, p0}, Lnet/oneplus/h2launcher/HotseatController;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    iput-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mHotseatController:Lnet/oneplus/h2launcher/HotseatController;

    .line 2189
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mHotseatController:Lnet/oneplus/h2launcher/HotseatController;

    invoke-virtual {v5, p0}, Lnet/oneplus/h2launcher/HotseatController;->setOnLongClickListener(Lnet/oneplus/h2launcher/Launcher;)V

    .line 2191
    const v5, 0x7f11014d

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mUtilsPanel:Landroid/view/ViewGroup;

    .line 2193
    const v5, 0x7f1101d7

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mSortButton:Landroid/view/View;

    .line 2194
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mSortButton:Landroid/view/View;

    new-instance v8, Lnet/oneplus/h2launcher/Launcher$14;

    invoke-direct {v8, p0}, Lnet/oneplus/h2launcher/Launcher$14;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2205
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v4

    .line 2206
    .local v4, "styleManager":Lnet/oneplus/h2launcher/oos/StyleManager;
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/oos/StyleManager;->showClearButton()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2207
    const v5, 0x7f1101d8

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mClearButton:Landroid/view/View;

    .line 2208
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mClearButton:Landroid/view/View;

    new-instance v8, Lnet/oneplus/h2launcher/Launcher$15;

    invoke-direct {v8, p0}, Lnet/oneplus/h2launcher/Launcher$15;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2216
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mClearButton:Landroid/view/View;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getHapticFeedbackTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2219
    :cond_1
    const v5, 0x7f1101d9

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mLeftUndoButton:Landroid/view/View;

    .line 2220
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mLeftUndoButton:Landroid/view/View;

    new-instance v8, Lnet/oneplus/h2launcher/Launcher$16;

    invoke-direct {v8, p0}, Lnet/oneplus/h2launcher/Launcher$16;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2230
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mLeftUndoButton:Landroid/view/View;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getHapticFeedbackTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2231
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mLeftUndoButton:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2233
    const v5, 0x7f1101da

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mRightUndoButton:Landroid/view/View;

    .line 2234
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mRightUndoButton:Landroid/view/View;

    new-instance v8, Lnet/oneplus/h2launcher/Launcher$17;

    invoke-direct {v8, p0}, Lnet/oneplus/h2launcher/Launcher$17;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2242
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mRightUndoButton:Landroid/view/View;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getHapticFeedbackTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2243
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mRightUndoButton:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2245
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mUtilsPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2247
    const v5, 0x7f11014e

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mOverviewPanel:Landroid/view/ViewGroup;

    .line 2248
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mOverviewPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2250
    const v5, 0x7f11018d

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mWidgetsButton:Landroid/view/View;

    .line 2251
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mWidgetsButton:Landroid/view/View;

    new-instance v8, Lnet/oneplus/h2launcher/Launcher$18;

    invoke-direct {v8, p0}, Lnet/oneplus/h2launcher/Launcher$18;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2259
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mWidgetsButton:Landroid/view/View;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getHapticFeedbackTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2260
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mWidgetsButton:Landroid/view/View;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/oos/StyleManager;->showWidgetsButton()Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2262
    const v5, 0x7f110190

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mSettingsButton:Landroid/view/View;

    .line 2263
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mSettingsButton:Landroid/view/View;

    new-instance v8, Lnet/oneplus/h2launcher/Launcher$19;

    invoke-direct {v8, p0}, Lnet/oneplus/h2launcher/Launcher$19;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2271
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mSettingsButton:Landroid/view/View;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getHapticFeedbackTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2273
    const v5, 0x7f11018e

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2275
    .local v2, "mIconRearrangementButton":Landroid/view/View;
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/oos/StyleManager;->showIconRearrangement()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2276
    new-instance v5, Lnet/oneplus/h2launcher/Launcher$20;

    invoke-direct {v5, p0}, Lnet/oneplus/h2launcher/Launcher$20;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2284
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getHapticFeedbackTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2290
    :goto_1
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v5, v6}, Lnet/oneplus/h2launcher/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 2291
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v5, p0}, Lnet/oneplus/h2launcher/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2292
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v5, v1}, Lnet/oneplus/h2launcher/Workspace;->setup(Lnet/oneplus/h2launcher/DragController;)V

    .line 2293
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1, v5}, Lnet/oneplus/h2launcher/DragController;->addDragListener(Lnet/oneplus/h2launcher/DragController$DragListener;)V

    .line 2296
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    const v8, 0x7f11014f

    invoke-virtual {v5, v8}, Lnet/oneplus/h2launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lnet/oneplus/h2launcher/SearchDropTargetBar;

    iput-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mSearchDropTargetBar:Lnet/oneplus/h2launcher/SearchDropTargetBar;

    .line 2299
    invoke-static {p0}, Lnet/oneplus/h2launcher/Utilities;->getAppsViewNumCols(Landroid/content/Context;)I

    move-result v0

    .line 2300
    .local v0, "appsViewNumCols":I
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mDeviceProfile:Lnet/oneplus/h2launcher/DeviceProfile;

    invoke-virtual {v5, v0}, Lnet/oneplus/h2launcher/DeviceProfile;->updateAppsViewNumCols(I)V

    .line 2303
    const v5, 0x7f1100ba

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    iput-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mAppsView:Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    .line 2304
    const v5, 0x7f110150

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;

    iput-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mWidgetsView:Lnet/oneplus/h2launcher/widget/WidgetsContainerView;

    .line 2305
    const v5, 0x7f110151

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mCustomizationsViewStub:Landroid/view/ViewStub;

    .line 2306
    const v5, 0x7f110153

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mWallpapersViewStub:Landroid/view/ViewStub;

    .line 2307
    const v5, 0x7f11013a

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;

    iput-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mIconRearrangementView:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;

    .line 2308
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mIconRearrangementView:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/oos/StyleManager;->showIconRearrangement()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2309
    new-instance v5, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mIconRearrangementView:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;

    invoke-direct {v5, p0, v8}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;-><init>(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;)V

    iput-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mIconRearrangementHelper:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    .line 2312
    :cond_2
    new-instance v5, Lnet/oneplus/h2launcher/AllAppsViewController;

    invoke-direct {v5, p0}, Lnet/oneplus/h2launcher/AllAppsViewController;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    iput-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mAllAppsViewController:Lnet/oneplus/h2launcher/AllAppsViewController;

    .line 2313
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mAllAppsViewController:Lnet/oneplus/h2launcher/AllAppsViewController;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/AllAppsViewController;->setSearchBarController()V

    .line 2316
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1, v5}, Lnet/oneplus/h2launcher/DragController;->setDragScoller(Lnet/oneplus/h2launcher/DragScroller;)V

    .line 2317
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    invoke-virtual {v1, v5}, Lnet/oneplus/h2launcher/DragController;->setScrollView(Landroid/view/View;)V

    .line 2318
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1, v5}, Lnet/oneplus/h2launcher/DragController;->setMoveTarget(Landroid/view/View;)V

    .line 2319
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1, v5}, Lnet/oneplus/h2launcher/DragController;->addDropTarget(Lnet/oneplus/h2launcher/DropTarget;)V

    .line 2320
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mSearchDropTargetBar:Lnet/oneplus/h2launcher/SearchDropTargetBar;

    if-eqz v5, :cond_3

    .line 2321
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mSearchDropTargetBar:Lnet/oneplus/h2launcher/SearchDropTargetBar;

    invoke-virtual {v5, p0, v1}, Lnet/oneplus/h2launcher/SearchDropTargetBar;->setup(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/DragController;)V

    .line 2322
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mSearchDropTargetBar:Lnet/oneplus/h2launcher/SearchDropTargetBar;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getOrCreateQsbBar()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v5, v8}, Lnet/oneplus/h2launcher/SearchDropTargetBar;->setQsbSearchBar(Landroid/view/View;)V

    .line 2326
    :cond_3
    const v5, 0x7f11011d

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lnet/oneplus/h2launcher/FoldersContainerView;

    iput-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mFoldersView:Lnet/oneplus/h2launcher/FoldersContainerView;

    .line 2327
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mFoldersController:Lnet/oneplus/h2launcher/FoldersTransitionController;

    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mFoldersView:Lnet/oneplus/h2launcher/FoldersContainerView;

    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v5, v8, v9}, Lnet/oneplus/h2launcher/FoldersTransitionController;->setupViews(Lnet/oneplus/h2launcher/FoldersContainerView;Lnet/oneplus/h2launcher/Workspace;)V

    .line 2329
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f10000d

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2330
    const-string v5, "Launcher"

    const-string v8, "adding WeightWatcher"

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    new-instance v5, Lnet/oneplus/h2launcher/WeightWatcher;

    invoke-direct {v5, p0}, Lnet/oneplus/h2launcher/WeightWatcher;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mWeightWatcher:Landroid/view/View;

    .line 2332
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mWeightWatcher:Landroid/view/View;

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-virtual {v5, v8}, Landroid/view/View;->setAlpha(F)V

    .line 2333
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherView:Landroid/view/View;

    check-cast v5, Landroid/widget/FrameLayout;

    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mWeightWatcher:Landroid/view/View;

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    const/16 v12, 0x50

    invoke-direct {v9, v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2340
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->shouldShowWeightWatcher()Z

    move-result v3

    .line 2341
    .local v3, "show":Z
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mWeightWatcher:Landroid/view/View;

    if-eqz v3, :cond_8

    :goto_2
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2344
    .end local v3    # "show":Z
    :cond_4
    const v5, 0x7f110155

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mGlobalSearchViewStub:Landroid/view/ViewStub;

    .line 2347
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mDoubleTapSettingsChangeListener:Ljava/util/List;

    iget-object v6, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2348
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mHotseat:Lnet/oneplus/h2launcher/Hotseat;

    if-eqz v5, :cond_5

    .line 2349
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mDoubleTapSettingsChangeListener:Ljava/util/List;

    iget-object v6, p0, Lnet/oneplus/h2launcher/Launcher;->mHotseat:Lnet/oneplus/h2launcher/Hotseat;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2351
    :cond_5
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->callOnDoubleTapSettingsChange()V

    .line 2352
    return-void

    .end local v0    # "appsViewNumCols":I
    .end local v2    # "mIconRearrangementButton":Landroid/view/View;
    :cond_6
    move v5, v7

    .line 2260
    goto/16 :goto_0

    .line 2286
    .restart local v2    # "mIconRearrangementButton":Landroid/view/View;
    :cond_7
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .restart local v0    # "appsViewNumCols":I
    .restart local v3    # "show":Z
    :cond_8
    move v6, v7

    .line 2341
    goto :goto_2
.end method

.method private shouldRunFirstRunActivity()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 7025
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "launcher.first_run_activity_displayed"

    .line 7026
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private shouldShowIntroScreen()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 7081
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->hasDismissableIntroScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "launcher.intro_screen_dismissed"

    .line 7082
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private shouldShowNewScreenInOverview()Z
    .locals 4

    .prologue
    .line 6081
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v1

    .line 6082
    .local v1, "spKey":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lnet/oneplus/h2launcher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 6083
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v2, "overview_add_screen"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method private shouldShowWeightWatcher()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6062
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v1

    .line 6063
    .local v1, "spKey":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lnet/oneplus/h2launcher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 6065
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v2, "debug.show_mem"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method private showAppsOrWidgetsOrCustomizationsOrWallpaper(Lnet/oneplus/h2launcher/Launcher$State;ZZ)Z
    .locals 8
    .param p1, "toState"    # Lnet/oneplus/h2launcher/Launcher$State;
    .param p2, "animated"    # Z
    .param p3, "focusSearchBar"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 5531
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v1, Lnet/oneplus/h2launcher/Launcher$State;->WORKSPACE:Lnet/oneplus/h2launcher/Launcher$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v1, Lnet/oneplus/h2launcher/Launcher$State;->APPS_SPRING_LOADED:Lnet/oneplus/h2launcher/Launcher$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v1, Lnet/oneplus/h2launcher/Launcher$State;->WIDGETS_SPRING_LOADED:Lnet/oneplus/h2launcher/Launcher$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v1, Lnet/oneplus/h2launcher/Launcher$State;->CUSTOMIZATIONS:Lnet/oneplus/h2launcher/Launcher$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v1, Lnet/oneplus/h2launcher/Launcher$State;->SHRUNKEN_ALLAPPS:Lnet/oneplus/h2launcher/Launcher$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v1, Lnet/oneplus/h2launcher/Launcher$State;->WALLPAPER:Lnet/oneplus/h2launcher/Launcher$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v1, Lnet/oneplus/h2launcher/Launcher$State;->ICON_REARRANGEMENT:Lnet/oneplus/h2launcher/Launcher$State;

    if-eq v0, v1, :cond_0

    move v0, v6

    .line 5576
    :goto_0
    return v0

    .line 5537
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/Launcher$State;->APPS:Lnet/oneplus/h2launcher/Launcher$State;

    if-eq p1, v0, :cond_1

    sget-object v0, Lnet/oneplus/h2launcher/Launcher$State;->WIDGETS:Lnet/oneplus/h2launcher/Launcher$State;

    if-eq p1, v0, :cond_1

    sget-object v0, Lnet/oneplus/h2launcher/Launcher$State;->CUSTOMIZATIONS:Lnet/oneplus/h2launcher/Launcher$State;

    if-eq p1, v0, :cond_1

    sget-object v0, Lnet/oneplus/h2launcher/Launcher$State;->SHRUNKEN_ALLAPPS:Lnet/oneplus/h2launcher/Launcher$State;

    if-eq p1, v0, :cond_1

    sget-object v0, Lnet/oneplus/h2launcher/Launcher$State;->WALLPAPER:Lnet/oneplus/h2launcher/Launcher$State;

    if-eq p1, v0, :cond_1

    sget-object v0, Lnet/oneplus/h2launcher/Launcher$State;->ICON_REARRANGEMENT:Lnet/oneplus/h2launcher/Launcher$State;

    if-eq p1, v0, :cond_1

    move v0, v6

    .line 5540
    goto :goto_0

    .line 5543
    :cond_1
    const-string v0, "Launcher"

    const-string v1, "launcher state change: fromState=%s, toState=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    .line 5544
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Workspace;->getState()Lnet/oneplus/h2launcher/Workspace$State;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object p1, v2, v7

    .line 5543
    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5546
    sget-object v0, Lnet/oneplus/h2launcher/Launcher$State;->APPS:Lnet/oneplus/h2launcher/Launcher$State;

    if-ne p1, v0, :cond_2

    .line 5547
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mStateTransitionAnimation:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->getState()Lnet/oneplus/h2launcher/Workspace$State;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToAllApps(Lnet/oneplus/h2launcher/Workspace$State;ZZ)V

    .line 5566
    :goto_1
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    .line 5569
    iput-boolean v6, p0, Lnet/oneplus/h2launcher/Launcher;->mUserPresent:Z

    .line 5570
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->updateAutoAdvanceState()V

    .line 5571
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->closeFolder()V

    .line 5574
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x20

    .line 5575
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    move v0, v7

    .line 5576
    goto :goto_0

    .line 5549
    :cond_2
    sget-object v0, Lnet/oneplus/h2launcher/Launcher$State;->WIDGETS:Lnet/oneplus/h2launcher/Launcher$State;

    if-ne p1, v0, :cond_3

    .line 5550
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mStateTransitionAnimation:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->getState()Lnet/oneplus/h2launcher/Workspace$State;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToWidgets(Lnet/oneplus/h2launcher/Workspace$State;Z)V

    goto :goto_1

    .line 5551
    :cond_3
    sget-object v0, Lnet/oneplus/h2launcher/Launcher$State;->CUSTOMIZATIONS:Lnet/oneplus/h2launcher/Launcher$State;

    if-ne p1, v0, :cond_4

    .line 5552
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mStateTransitionAnimation:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->getState()Lnet/oneplus/h2launcher/Workspace$State;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToCustomizations(Lnet/oneplus/h2launcher/Workspace$State;Z)V

    goto :goto_1

    .line 5554
    :cond_4
    sget-object v0, Lnet/oneplus/h2launcher/Launcher$State;->SHRUNKEN_ALLAPPS:Lnet/oneplus/h2launcher/Launcher$State;

    if-ne p1, v0, :cond_5

    .line 5555
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mStateTransitionAnimation:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->getState()Lnet/oneplus/h2launcher/Workspace$State;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToShrunkenAllApps(Lnet/oneplus/h2launcher/Workspace$State;Z)V

    goto :goto_1

    .line 5557
    :cond_5
    sget-object v0, Lnet/oneplus/h2launcher/Launcher$State;->WALLPAPER:Lnet/oneplus/h2launcher/Launcher$State;

    if-ne p1, v0, :cond_6

    .line 5558
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mStateTransitionAnimation:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->getState()Lnet/oneplus/h2launcher/Workspace$State;

    move-result-object v1

    iget v3, p0, Lnet/oneplus/h2launcher/Launcher;->mRequestCode:I

    iget v4, p0, Lnet/oneplus/h2launcher/Launcher;->mResultCode:I

    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mData:Landroid/content/Intent;

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToWallpapers(Lnet/oneplus/h2launcher/Workspace$State;ZIILandroid/content/Intent;)V

    goto :goto_1

    .line 5561
    :cond_6
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mStateTransitionAnimation:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->getState()Lnet/oneplus/h2launcher/Workspace$State;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToIconRearrangement(Lnet/oneplus/h2launcher/Workspace$State;Z)V

    goto :goto_1
.end method

.method private showBrokenAppInstallDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "onSearchClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 3979
    new-instance v0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0017

    .line 3980
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0016

    .line 3981
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setMessage(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0018

    .line 3982
    invoke-virtual {v0, v1, p2}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0015

    new-instance v2, Lnet/oneplus/h2launcher/Launcher$29;

    invoke-direct {v2, p0, p1}, Lnet/oneplus/h2launcher/Launcher$29;-><init>(Lnet/oneplus/h2launcher/Launcher;Ljava/lang/String;)V

    .line 3983
    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v0

    .line 3990
    invoke-virtual {v0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->create()Lcom/oneplus/lib/app/OPAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/app/OPAlertDialog;->show()V

    .line 3991
    return-void
.end method

.method private showIconPackListPopupWindow(Ljava/lang/String;)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 4635
    const-string v7, "Launcher"

    const-string v8, "[edit app] showIconPackListPopupWindow"

    invoke-static {v7, v8}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4636
    invoke-static {p0, v9}, Lnet/oneplus/h2launcher/IconPackHelper;->getIconPackList(Landroid/content/Context;Z)[[Ljava/lang/CharSequence;

    move-result-object v2

    .line 4637
    .local v2, "iconPackList":[[Ljava/lang/CharSequence;
    new-instance v3, Ljava/util/ArrayList;

    aget-object v7, v2, v9

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4638
    .local v3, "itemNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v4, Landroid/widget/ListPopupWindow;

    invoke-direct {v4, p0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 4639
    .local v4, "listPopupWindow":Landroid/widget/ListPopupWindow;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c006a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 4640
    .local v1, "contentWidth":I
    new-instance v7, Landroid/widget/ArrayAdapter;

    const v8, 0x7f040069

    invoke-direct {v7, p0, v8, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v4, v7}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4641
    iget-object v7, p0, Lnet/oneplus/h2launcher/Launcher;->mAppEditIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 4642
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 4643
    invoke-virtual {v4, v1}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 4645
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c02a2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 4646
    .local v0, "contentHeight":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 4647
    .local v6, "showItemCount":I
    const/4 v7, 0x3

    if-le v6, v7, :cond_0

    .line 4648
    const/4 v6, 0x3

    .line 4650
    :cond_0
    mul-int v5, v6, v0

    .line 4651
    .local v5, "popupWindowHeight":I
    invoke-virtual {v4, v5}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 4652
    const v7, 0x7f0201ae

    invoke-virtual {p0, v7}, Lnet/oneplus/h2launcher/Launcher;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/ListPopupWindow;->setListSelector(Landroid/graphics/drawable/Drawable;)V

    .line 4653
    new-instance v7, Lnet/oneplus/h2launcher/Launcher$37;

    invoke-direct {v7, p0, v2, p1, v4}, Lnet/oneplus/h2launcher/Launcher$37;-><init>(Lnet/oneplus/h2launcher/Launcher;[[Ljava/lang/CharSequence;Ljava/lang/String;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v4, v7}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 4669
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4670
    const v7, 0x7f0b004e

    invoke-static {p0, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 4674
    :goto_0
    return-void

    .line 4672
    :cond_1
    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method

.method private shrinkAndFadeInFolderIcon(Lnet/oneplus/h2launcher/FolderIcon;)V
    .locals 10
    .param p1, "fi"    # Lnet/oneplus/h2launcher/FolderIcon;

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 4953
    if-nez p1, :cond_0

    .line 4978
    :goto_0
    return-void

    .line 4954
    :cond_0
    const-string v5, "alpha"

    new-array v6, v8, [F

    aput v9, v6, v7

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 4955
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    const-string v5, "scaleX"

    new-array v6, v8, [F

    aput v9, v6, v7

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 4956
    .local v3, "scaleX":Landroid/animation/PropertyValuesHolder;
    const-string v5, "scaleY"

    new-array v6, v8, [F

    aput v9, v6, v7

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 4958
    .local v4, "scaleY":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/CellLayout;

    .line 4961
    .local v1, "cl":Lnet/oneplus/h2launcher/CellLayout;
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    iget-object v6, p0, Lnet/oneplus/h2launcher/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Lnet/oneplus/h2launcher/DragLayer;->removeView(Landroid/view/View;)V

    .line 4962
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/Launcher;->copyFolderIconToImage(Lnet/oneplus/h2launcher/FolderIcon;)V

    .line 4963
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v6, v7

    aput-object v3, v6, v8

    const/4 v7, 0x2

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 4965
    .local v2, "oa":Landroid/animation/ObjectAnimator;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f002d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4966
    new-instance v5, Lnet/oneplus/h2launcher/Launcher$38;

    invoke-direct {v5, p0, v1, p1}, Lnet/oneplus/h2launcher/Launcher$38;-><init>(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/CellLayout;Lnet/oneplus/h2launcher/FolderIcon;)V

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4977
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private startActivity(Lnet/oneplus/h2launcher/compat/UserHandleCompat;Landroid/content/Intent;Landroid/os/Bundle;Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;)V
    .locals 2
    .param p1, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "optsBundle"    # Landroid/os/Bundle;
    .param p4, "launcherApps"    # Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    .prologue
    .line 4751
    if-eqz p1, :cond_0

    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4753
    :cond_0
    invoke-virtual {p0, p2, p3}, Lnet/oneplus/h2launcher/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 4759
    :goto_0
    return-void

    .line 4756
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 4757
    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 4756
    invoke-virtual {p4, v0, p1, v1, p3}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->startActivityForProfile(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private startActivity(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 25
    .param p1, "v"    # Landroid/view/View;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "tag"    # Ljava/lang/Object;

    .prologue
    .line 4677
    const/high16 v21, 0x10000000

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4681
    if-eqz p1, :cond_4

    :try_start_0
    const-string v21, "net.oneplus.h2launcher.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_4

    const/16 v17, 0x1

    .line 4682
    .local v17, "useLaunchAnimation":Z
    :goto_0
    invoke-static/range {p0 .. p0}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    move-result-object v10

    .line 4683
    .local v10, "launcherApps":Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;
    invoke-static/range {p0 .. p0}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v19

    .line 4685
    .local v19, "userManager":Lnet/oneplus/h2launcher/compat/UserManagerCompat;
    const/16 v18, 0x0

    .line 4686
    .local v18, "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    const-string v21, "profile"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 4687
    const-string v21, "profile"

    const-wide/16 v22, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .line 4688
    .local v14, "serialNumber":J
    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getUserForSerialNumber(J)Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v18

    .line 4691
    .end local v14    # "serialNumber":J
    :cond_0
    const/4 v13, 0x0

    .line 4692
    .local v13, "optsBundle":Landroid/os/Bundle;
    if-eqz v17, :cond_3

    .line 4693
    const/4 v12, 0x0

    .line 4694
    .local v12, "opts":Landroid/app/ActivityOptions;
    sget-boolean v21, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_MARSHMALLOW:Z

    if-eqz v21, :cond_5

    .line 4695
    const/4 v11, 0x0

    .local v11, "left":I
    const/16 v16, 0x0

    .line 4696
    .local v16, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .local v20, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 4697
    .local v8, "height":I
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 4699
    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lnet/oneplus/h2launcher/Workspace;->getTextViewIcon(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 4700
    .local v9, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_1

    .line 4701
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 4702
    .local v6, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v21

    sub-int v21, v20, v21

    div-int/lit8 v11, v21, 0x2

    .line 4703
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v16

    .line 4704
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v20

    .line 4705
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 4708
    .end local v6    # "bounds":Landroid/graphics/Rect;
    .end local v9    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v20

    invoke-static {v0, v11, v1, v2, v8}, Landroid/app/ActivityOptions;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v12

    .line 4720
    .end local v8    # "height":I
    .end local v11    # "left":I
    .end local v16    # "top":I
    .end local v20    # "width":I
    :cond_2
    :goto_1
    if-eqz v12, :cond_7

    invoke-virtual {v12}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v13

    .line 4723
    .end local v12    # "opts":Landroid/app/ActivityOptions;
    :cond_3
    :goto_2
    const-string v21, "android.intent.action.CALL"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 4724
    const-string v21, "android.permission.CALL_PHONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/PermissionUtils;->hasGrantedPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_8

    .line 4726
    const-string v21, "android.permission.CALL_PHONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnet/oneplus/h2launcher/Launcher;->mShowPermissionRationale:Z

    .line 4728
    new-instance v21, Landroid/util/Pair;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/oneplus/h2launcher/Launcher;->mWaitingForPermissionResult:Landroid/util/Pair;

    .line 4729
    const-string v21, "android.permission.CALL_PHONE"

    const/16 v22, 0xc9

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/util/PermissionUtils;->requestPermission(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 4731
    const/16 v21, 0x0

    .line 4747
    .end local v10    # "launcherApps":Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;
    .end local v13    # "optsBundle":Landroid/os/Bundle;
    .end local v17    # "useLaunchAnimation":Z
    .end local v18    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .end local v19    # "userManager":Lnet/oneplus/h2launcher/compat/UserManagerCompat;
    :goto_3
    return v21

    .line 4681
    :cond_4
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 4709
    .restart local v10    # "launcherApps":Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;
    .restart local v12    # "opts":Landroid/app/ActivityOptions;
    .restart local v13    # "optsBundle":Landroid/os/Bundle;
    .restart local v17    # "useLaunchAnimation":Z
    .restart local v18    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .restart local v19    # "userManager":Lnet/oneplus/h2launcher/compat/UserManagerCompat;
    :cond_5
    sget-boolean v21, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_LOLLIPOP:Z

    if-nez v21, :cond_6

    .line 4711
    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 4712
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    .line 4711
    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v12

    goto :goto_1

    .line 4713
    :cond_6
    sget-boolean v21, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_LOLLIPOP_MR1:Z

    if-eqz v21, :cond_2

    .line 4717
    const v21, 0x7f050026

    const v22, 0x7f050019

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v12

    goto/16 :goto_1

    .line 4720
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 4733
    .end local v12    # "opts":Landroid/app/ActivityOptions;
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v13, v10}, Lnet/oneplus/h2launcher/Launcher;->startActivity(Lnet/oneplus/h2launcher/compat/UserHandleCompat;Landroid/content/Intent;Landroid/os/Bundle;Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;)V

    .line 4739
    :goto_4
    const/16 v21, 0x1

    goto :goto_3

    .line 4736
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v13, v10}, Lnet/oneplus/h2launcher/Launcher;->startActivity(Lnet/oneplus/h2launcher/compat/UserHandleCompat;Landroid/content/Intent;Landroid/os/Bundle;Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 4740
    .end local v10    # "launcherApps":Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;
    .end local v13    # "optsBundle":Landroid/os/Bundle;
    .end local v17    # "useLaunchAnimation":Z
    .end local v18    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .end local v19    # "userManager":Lnet/oneplus/h2launcher/compat/UserManagerCompat;
    :catch_0
    move-exception v7

    .line 4741
    .local v7, "e":Ljava/lang/SecurityException;
    const v21, 0x7f0b002f

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    .line 4742
    const-string v21, "Launcher"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Launcher does not have the permission to launch "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "or use the exported attribute for this activity. "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "tag="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " intent="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4747
    const/16 v21, 0x0

    goto/16 :goto_3
.end method

.method private startCropActivity(ILandroid/content/Intent;)V
    .locals 16
    .param p1, "requestCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 1365
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/Launcher;->mWallpapersView:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    if-nez v14, :cond_0

    .line 1366
    const-string v14, "Launcher"

    const-string v15, "invalid wallpapers view, launcher might have been destroyed"

    invoke-static {v14, v15}, Lnet/oneplus/h2launcher/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    :goto_0
    return-void

    .line 1370
    :cond_0
    const/16 v14, 0xa

    move/from16 v0, p1

    if-ne v0, v14, :cond_2

    const/4 v5, 0x1

    .line 1371
    .local v5, "isCroppingHomescreen":Z
    :goto_1
    if-eqz v5, :cond_3

    const/16 v2, 0xf

    .line 1374
    .local v2, "cropRequestCode":I
    :goto_2
    const/4 v9, 0x0

    .line 1376
    .local v9, "output2":Ljava/io/File;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/Launcher;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 1377
    .local v3, "directory":Ljava/io/File;
    const-string v14, "crop_"

    const/4 v15, 0x0

    invoke-static {v14, v15, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v8

    .line 1378
    .local v8, "output":Ljava/io/File;
    const/16 v14, 0xf

    if-ne v2, v14, :cond_1

    .line 1379
    const-string v14, "crop_"

    const/4 v15, 0x0

    invoke-static {v14, v15, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1387
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    .line 1388
    .local v11, "source":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/Launcher;->mWallpapersView:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    invoke-virtual {v14}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->getPager()Lnet/oneplus/h2launcher/customizations/WallpaperPager;

    move-result-object v14

    invoke-virtual {v14}, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->getWallpaperCard()Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    move-result-object v13

    .line 1389
    .local v13, "wallpaperCard":Lnet/oneplus/h2launcher/customizations/WallpaperCard;
    const/16 v14, 0x10

    if-ne v2, v14, :cond_4

    .line 1390
    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v14

    invoke-static {v11, v14}, Lnet/oneplus/h2launcher/crop/UCrop;->of(Landroid/net/Uri;Landroid/net/Uri;)Lnet/oneplus/h2launcher/crop/UCrop;

    move-result-object v12

    .line 1391
    .local v12, "uCrop":Lnet/oneplus/h2launcher/crop/UCrop;
    sget v14, Lnet/oneplus/h2launcher/crop/view/CropImageView;->PORTRAIT_IMAGE_ASPECT_RATIO:F

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v12, v14, v15}, Lnet/oneplus/h2launcher/crop/UCrop;->withAspectRatio(FF)Lnet/oneplus/h2launcher/crop/UCrop;

    .line 1412
    :goto_3
    if-eqz v5, :cond_8

    const/4 v10, 0x1

    .line 1415
    .local v10, "screen":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/Launcher;->mWallpapersView:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    invoke-virtual {v14}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->getWallpaperPreview()Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    move-result-object v14

    invoke-virtual {v14, v10}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->getPreviewCover(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1416
    .local v1, "cover":Landroid/graphics/Bitmap;
    if-nez v1, :cond_9

    .line 1417
    const-string v14, "Launcher"

    const-string v15, "invalid cover bitmap"

    invoke-static {v14, v15}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1370
    .end local v1    # "cover":Landroid/graphics/Bitmap;
    .end local v2    # "cropRequestCode":I
    .end local v3    # "directory":Ljava/io/File;
    .end local v5    # "isCroppingHomescreen":Z
    .end local v8    # "output":Ljava/io/File;
    .end local v9    # "output2":Ljava/io/File;
    .end local v10    # "screen":I
    .end local v11    # "source":Landroid/net/Uri;
    .end local v12    # "uCrop":Lnet/oneplus/h2launcher/crop/UCrop;
    .end local v13    # "wallpaperCard":Lnet/oneplus/h2launcher/customizations/WallpaperCard;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 1371
    .restart local v5    # "isCroppingHomescreen":Z
    :cond_3
    const/16 v2, 0x10

    goto :goto_2

    .line 1381
    .restart local v2    # "cropRequestCode":I
    .restart local v9    # "output2":Ljava/io/File;
    :catch_0
    move-exception v4

    .line 1382
    .local v4, "e":Ljava/io/IOException;
    const-string v14, "Launcher"

    const-string v15, "failed to create temp crop file(s)"

    invoke-static {v14, v15}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1393
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v3    # "directory":Ljava/io/File;
    .restart local v8    # "output":Ljava/io/File;
    .restart local v11    # "source":Landroid/net/Uri;
    .restart local v13    # "wallpaperCard":Lnet/oneplus/h2launcher/customizations/WallpaperCard;
    :cond_4
    const/4 v7, -0x1

    .line 1394
    .local v7, "orientation":I
    if-eqz v13, :cond_5

    .line 1395
    invoke-virtual {v13}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getHomeScreenOrientation()I

    move-result v7

    .line 1398
    :cond_5
    const/4 v14, -0x1

    if-ne v7, v14, :cond_6

    .line 1399
    const-string v14, "Launcher"

    const-string v15, "failed to find current home screen orientation"

    invoke-static {v14, v15}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1403
    :cond_6
    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v14

    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v15

    invoke-static {v11, v14, v15}, Lnet/oneplus/h2launcher/crop/UCrop;->of(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lnet/oneplus/h2launcher/crop/UCrop;

    move-result-object v12

    .line 1404
    .restart local v12    # "uCrop":Lnet/oneplus/h2launcher/crop/UCrop;
    if-nez v7, :cond_7

    .line 1405
    sget v14, Lnet/oneplus/h2launcher/crop/view/CropImageView;->PORTRAIT_IMAGE_ASPECT_RATIO:F

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v12, v14, v15}, Lnet/oneplus/h2launcher/crop/UCrop;->withAspectRatio(FF)Lnet/oneplus/h2launcher/crop/UCrop;

    goto :goto_3

    .line 1407
    :cond_7
    sget v14, Lnet/oneplus/h2launcher/crop/view/CropImageView;->LANDSCAPE_IMAGE_ASPECT_RATIO:F

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v12, v14, v15}, Lnet/oneplus/h2launcher/crop/UCrop;->withAspectRatio(FF)Lnet/oneplus/h2launcher/crop/UCrop;

    goto :goto_3

    .line 1412
    .end local v7    # "orientation":I
    :cond_8
    const/4 v10, 0x0

    goto :goto_4

    .line 1421
    .restart local v1    # "cover":Landroid/graphics/Bitmap;
    .restart local v10    # "screen":I
    :cond_9
    new-instance v6, Lnet/oneplus/h2launcher/crop/UCrop$Options;

    invoke-direct {v6}, Lnet/oneplus/h2launcher/crop/UCrop$Options;-><init>()V

    .line 1422
    .local v6, "options":Lnet/oneplus/h2launcher/crop/UCrop$Options;
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Lnet/oneplus/h2launcher/crop/UCrop$Options;->setShowCropGrid(Z)V

    .line 1423
    invoke-virtual {v6, v5}, Lnet/oneplus/h2launcher/crop/UCrop$Options;->setShowCropCoverColorMask(Z)V

    .line 1424
    invoke-virtual {v6, v1}, Lnet/oneplus/h2launcher/crop/UCrop$Options;->setCropCoverImage(Landroid/graphics/Bitmap;)V

    .line 1425
    invoke-virtual {v12, v6}, Lnet/oneplus/h2launcher/crop/UCrop;->withOptions(Lnet/oneplus/h2launcher/crop/UCrop$Options;)Lnet/oneplus/h2launcher/crop/UCrop;

    .line 1426
    move-object/from16 v0, p0

    invoke-virtual {v12, v0, v2}, Lnet/oneplus/h2launcher/crop/UCrop;->start(Landroid/app/Activity;I)V

    goto/16 :goto_0
.end method

.method private startGlobalSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;
    .param p4, "sourceBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 3392
    .line 3393
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "search"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SearchManager;

    .line 3394
    .local v4, "searchManager":Landroid/app/SearchManager;
    invoke-virtual {v4}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v2

    .line 3395
    .local v2, "globalSearchActivity":Landroid/content/ComponentName;
    if-nez v2, :cond_0

    .line 3396
    const-string v5, "Launcher"

    const-string v6, "No global search activity found."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3425
    :goto_0
    return-void

    .line 3399
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3400
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3401
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3403
    if-nez p3, :cond_4

    .line 3404
    new-instance p3, Landroid/os/Bundle;

    .end local p3    # "appSearchData":Landroid/os/Bundle;
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 3409
    .restart local p3    # "appSearchData":Landroid/os/Bundle;
    :goto_1
    const-string v5, "source"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3410
    const-string v5, "source"

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3412
    :cond_1
    const-string v5, "app_data"

    invoke-virtual {v3, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3413
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 3414
    const-string v5, "query"

    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3416
    :cond_2
    if-eqz p2, :cond_3

    .line 3417
    const-string v5, "select_query"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3419
    :cond_3
    invoke-virtual {v3, p4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 3421
    :try_start_0
    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3422
    :catch_0
    move-exception v1

    .line 3423
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Global search activity not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3406
    .end local v1    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local p3    # "appSearchData":Landroid/os/Bundle;
    .local v0, "appSearchData":Landroid/os/Bundle;
    move-object p3, v0

    .end local v0    # "appSearchData":Landroid/os/Bundle;
    .restart local p3    # "appSearchData":Landroid/os/Bundle;
    goto :goto_1
.end method

.method private startShortcutIntentSafely(Landroid/content/Intent;Landroid/os/Bundle;Lnet/oneplus/h2launcher/ItemInfo;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "optsBundle"    # Landroid/os/Bundle;
    .param p3, "info"    # Lnet/oneplus/h2launcher/ItemInfo;

    .prologue
    const/16 v11, 0xd

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 4827
    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 4832
    .local v8, "oldPolicy":Landroid/os/StrictMode$VmPolicy;
    :try_start_1
    new-instance v4, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v4}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v4}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v4

    .line 4833
    invoke-virtual {v4}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v4

    .line 4832
    invoke-static {v4}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 4835
    iget v4, p3, Lnet/oneplus/h2launcher/ItemInfo;->itemType:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_1

    .line 4836
    move-object v0, p3

    check-cast v0, Lnet/oneplus/h2launcher/ShortcutInfo;

    move-object v4, v0

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/ShortcutInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v3

    .line 4837
    .local v3, "id":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    .line 4839
    .local v2, "packageName":Ljava/lang/String;
    sget-boolean v4, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_ANDROID_N_MR1:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_0

    .line 4841
    :try_start_2
    const-string v4, "launcherapps"

    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps;

    .line 4842
    .local v1, "launcherApps":Landroid/content/pm/LauncherApps;
    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p3, Lnet/oneplus/h2launcher/ItemInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 4843
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    move-object v5, p2

    .line 4842
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4853
    .end local v1    # "launcherApps":Landroid/content/pm/LauncherApps;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "id":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_3
    invoke-static {v8}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    .line 4872
    .end local v8    # "oldPolicy":Landroid/os/StrictMode$VmPolicy;
    :goto_1
    return-void

    .line 4844
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v8    # "oldPolicy":Landroid/os/StrictMode$VmPolicy;
    :catch_0
    move-exception v4

    move-object v7, v4

    .line 4845
    .local v7, "e":Ljava/lang/RuntimeException;
    :goto_2
    :try_start_4
    const-string v4, "Launcher"

    const-string v5, "startShortcutIntentSafely: Failed to start shortcut"

    invoke-static {v4, v5, v7}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 4853
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "id":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    :try_start_5
    invoke-static {v8}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    throw v4
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1

    .line 4855
    .end local v8    # "oldPolicy":Landroid/os/StrictMode$VmPolicy;
    :catch_1
    move-exception v7

    .line 4859
    .local v7, "e":Ljava/lang/SecurityException;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v4, "android.intent.action.CALL"

    .line 4860
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "android.permission.CALL_PHONE"

    .line 4861
    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/Launcher;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3

    .line 4863
    invoke-static {v11, p1, p3}, Lnet/oneplus/h2launcher/util/PendingRequestArgs;->forIntent(ILandroid/content/Intent;Lnet/oneplus/h2launcher/ItemInfo;)Lnet/oneplus/h2launcher/util/PendingRequestArgs;

    move-result-object v4

    iput-object v4, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingRequestArgs:Lnet/oneplus/h2launcher/util/PendingRequestArgs;

    .line 4864
    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingRequestArgs:Lnet/oneplus/h2launcher/util/PendingRequestArgs;

    if-eqz v4, :cond_2

    move v4, v9

    :goto_3
    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/Launcher;->setWaitingForResult(Z)V

    .line 4865
    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "android.permission.CALL_PHONE"

    aput-object v5, v4, v10

    invoke-virtual {p0, v4, v11}, Lnet/oneplus/h2launcher/Launcher;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_1

    .line 4850
    .end local v7    # "e":Ljava/lang/SecurityException;
    .restart local v8    # "oldPolicy":Landroid/os/StrictMode$VmPolicy;
    :cond_1
    :try_start_6
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .end local v8    # "oldPolicy":Landroid/os/StrictMode$VmPolicy;
    .restart local v7    # "e":Ljava/lang/SecurityException;
    :cond_2
    move v4, v10

    .line 4864
    goto :goto_3

    .line 4869
    :cond_3
    throw v7

    .line 4844
    .end local v7    # "e":Ljava/lang/SecurityException;
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v8    # "oldPolicy":Landroid/os/StrictMode$VmPolicy;
    :catch_2
    move-exception v4

    move-object v7, v4

    goto :goto_2
.end method

.method private toggleShowWeightWatcher()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 6069
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    .line 6070
    .local v2, "spKey":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lnet/oneplus/h2launcher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 6071
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v4, "debug.show_mem"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 6072
    .local v0, "show":Z
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "debug.show_mem"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6074
    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher;->mWeightWatcher:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 6075
    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher;->mWeightWatcher:Landroid/view/View;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6077
    :cond_0
    return-void

    .end local v0    # "show":Z
    :cond_1
    move v0, v3

    .line 6071
    goto :goto_0

    .line 6075
    .restart local v0    # "show":Z
    :cond_2
    const/16 v3, 0x8

    goto :goto_1
.end method

.method private tryAndUpdatePredictedApps()V
    .locals 2

    .prologue
    .line 5645
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v1, :cond_0

    .line 5646
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v1}, Lnet/oneplus/h2launcher/LauncherCallbacks;->getPredictedApps()Ljava/util/List;

    move-result-object v0

    .line 5647
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/util/ComponentKey;>;"
    if-eqz v0, :cond_0

    .line 5648
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mAllAppsViewController:Lnet/oneplus/h2launcher/AllAppsViewController;

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/AllAppsViewController;->setPredictedApps(Ljava/util/List;)V

    .line 5651
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/util/ComponentKey;>;"
    :cond_0
    return-void
.end method

.method private unregisterWallpaperChangedReceiver()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 6602
    :try_start_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6606
    iput-object v6, p0, Lnet/oneplus/h2launcher/Launcher;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 6608
    :goto_0
    return-void

    .line 6603
    :catch_0
    move-exception v0

    .line 6604
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v1, "Launcher"

    const-string v2, "failed to unregister wallpaper changed receiver, error=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6606
    iput-object v6, p0, Lnet/oneplus/h2launcher/Launcher;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    iput-object v6, p0, Lnet/oneplus/h2launcher/Launcher;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    throw v1
.end method

.method private updateUtilsButtonVisibility()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4301
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher;->mUndoAction:Z

    if-nez v0, :cond_0

    iget v0, p0, Lnet/oneplus/h2launcher/Launcher;->mNextAction:I

    if-nez v0, :cond_2

    .line 4303
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLeftUndoButton:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/Launcher;->setUtilsButtonEnabled(Landroid/view/View;Z)V

    .line 4304
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mRightUndoButton:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/Launcher;->setUtilsButtonEnabled(Landroid/view/View;Z)V

    .line 4305
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mClearButton:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lnet/oneplus/h2launcher/Launcher;->setUtilsButtonEnabled(Landroid/view/View;Z)V

    .line 4306
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mUtilsButtonClicked:[Z

    aget-boolean v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mUtilsButtonClicked:[Z

    aget-boolean v0, v0, v1

    if-nez v0, :cond_1

    .line 4307
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mSortButton:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lnet/oneplus/h2launcher/Launcher;->setUtilsButtonEnabled(Landroid/view/View;Z)V

    .line 4326
    :cond_1
    :goto_0
    return-void

    .line 4310
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mUtilsButtonClicked:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_3

    .line 4312
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mSortButton:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/Launcher;->setUtilsButtonEnabled(Landroid/view/View;Z)V

    .line 4313
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLeftUndoButton:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lnet/oneplus/h2launcher/Launcher;->setUtilsButtonEnabled(Landroid/view/View;Z)V

    .line 4314
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mClearButton:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/Launcher;->setUtilsButtonEnabled(Landroid/view/View;Z)V

    .line 4315
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mRightUndoButton:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/Launcher;->setUtilsButtonEnabled(Landroid/view/View;Z)V

    .line 4318
    :cond_3
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mUtilsButtonClicked:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1

    .line 4320
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mClearButton:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/Launcher;->setUtilsButtonEnabled(Landroid/view/View;Z)V

    .line 4321
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mRightUndoButton:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lnet/oneplus/h2launcher/Launcher;->setUtilsButtonEnabled(Landroid/view/View;Z)V

    .line 4322
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mSortButton:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/Launcher;->setUtilsButtonEnabled(Landroid/view/View;Z)V

    .line 4323
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLeftUndoButton:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/Launcher;->setUtilsButtonEnabled(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private waitUntilResume(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 5965
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/oneplus/h2launcher/Launcher;->waitUntilResume(Ljava/lang/Runnable;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public activateLightStatusBar(Z)V
    .locals 6
    .param p1, "activate"    # Z

    .prologue
    .line 895
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 898
    .local v0, "lightStatusBar":Z
    :goto_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    .line 899
    .local v2, "oldSystemUiFlags":I
    move v1, v2

    .line 900
    .local v1, "newSystemUiFlags":I
    if-eqz v0, :cond_2

    .line 901
    or-int/lit16 v1, v1, 0x2000

    .line 905
    :goto_1
    if-eq v1, v2, :cond_0

    .line 906
    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mState= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mOnResumeState= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mOnResumeState:Lnet/oneplus/h2launcher/Launcher$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activateLightStatusBar setSystemUiVisibility newSystemUiFlags= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 910
    :cond_0
    return-void

    .line 895
    .end local v0    # "lightStatusBar":Z
    .end local v1    # "newSystemUiFlags":I
    .end local v2    # "oldSystemUiFlags":I
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 903
    .restart local v0    # "lightStatusBar":Z
    .restart local v1    # "newSystemUiFlags":I
    .restart local v2    # "oldSystemUiFlags":I
    :cond_2
    and-int/lit16 v1, v1, -0x2001

    goto :goto_1
.end method

.method addAppWidgetImpl(ILnet/oneplus/h2launcher/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;)V
    .locals 6
    .param p1, "appWidgetId"    # I
    .param p2, "info"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p3, "boundWidget"    # Landroid/appwidget/AppWidgetHostView;
    .param p4, "appWidgetInfo"    # Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    .prologue
    .line 3518
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/Launcher;->addAppWidgetImpl(ILnet/oneplus/h2launcher/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;I)V

    .line 3519
    return-void
.end method

.method addAppWidgetImpl(ILnet/oneplus/h2launcher/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;I)V
    .locals 9
    .param p1, "appWidgetId"    # I
    .param p2, "info"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p3, "boundWidget"    # Landroid/appwidget/AppWidgetHostView;
    .param p4, "appWidgetInfo"    # Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    .param p5, "delay"    # I

    .prologue
    .line 3524
    iget-object v0, p4, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 3525
    iput-object p4, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddWidgetInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    .line 3526
    iput p1, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddWidgetId:I

    .line 3529
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAppWidgetManager:Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    .line 3530
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherAppState;->getAppWidgetHost()Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    move-result-object v4

    const/4 v5, 0x5

    move-object v1, p4

    move v2, p1

    move-object v3, p0

    .line 3529
    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->startConfigActivity(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/app/Activity;Landroid/appwidget/AppWidgetHost;I)V

    .line 3546
    :goto_0
    return-void

    .line 3534
    :cond_0
    new-instance v8, Lnet/oneplus/h2launcher/Launcher$27;

    invoke-direct {v8, p0}, Lnet/oneplus/h2launcher/Launcher$27;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    .line 3542
    .local v8, "onComplete":Ljava/lang/Runnable;
    iget-wide v2, p2, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    iget-wide v4, p2, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    move-object v0, p0

    move v1, p1

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lnet/oneplus/h2launcher/Launcher;->completeAddAppWidget(IJJLandroid/appwidget/AppWidgetHostView;Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;)V

    .line 3544
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v8, p5, v2}, Lnet/oneplus/h2launcher/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    goto :goto_0
.end method

.method public addFolder(Lnet/oneplus/h2launcher/CellLayout;JJII)Lnet/oneplus/h2launcher/FolderIcon;
    .locals 14
    .param p1, "layout"    # Lnet/oneplus/h2launcher/CellLayout;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I

    .prologue
    .line 3640
    new-instance v1, Lnet/oneplus/h2launcher/FolderInfo;

    invoke-direct {v1}, Lnet/oneplus/h2launcher/FolderInfo;-><init>()V

    .line 3641
    .local v1, "folderInfo":Lnet/oneplus/h2launcher/FolderInfo;
    const v0, 0x7f0b0054

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lnet/oneplus/h2launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    move-object v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    .line 3644
    invoke-static/range {v0 .. v7}, Lnet/oneplus/h2launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;JJII)V

    .line 3647
    sget-object v0, Lnet/oneplus/h2launcher/Launcher;->sFolders:Lnet/oneplus/h2launcher/util/LongArrayMap;

    iget-wide v4, v1, Lnet/oneplus/h2launcher/FolderInfo;->id:J

    invoke-virtual {v0, v4, v5, v1}, Lnet/oneplus/h2launcher/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 3650
    const v0, 0x7f04005a

    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    .line 3651
    invoke-static {v0, p0, p1, v1, v2}, Lnet/oneplus/h2launcher/FolderIcon;->fromXml(ILnet/oneplus/h2launcher/Launcher;Landroid/view/ViewGroup;Lnet/oneplus/h2launcher/FolderInfo;Lnet/oneplus/h2launcher/AssetCache;)Lnet/oneplus/h2launcher/FolderIcon;

    move-result-object v3

    .line 3652
    .local v3, "newFolder":Lnet/oneplus/h2launcher/FolderIcon;
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    const/4 v10, 0x1

    const/4 v11, 0x1

    .line 3653
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isWorkspaceLocked()Z

    move-result v12

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    .line 3652
    invoke-virtual/range {v2 .. v12}, Lnet/oneplus/h2launcher/Workspace;->addInScreen(Landroid/view/View;JJIIIIZ)V

    .line 3655
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0, v3}, Lnet/oneplus/h2launcher/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v13

    .line 3656
    .local v13, "parent":Lnet/oneplus/h2launcher/CellLayout;
    invoke-virtual {v13}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    .line 3657
    return-object v3
.end method

.method public addOnResumeCallback(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 5969
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5970
    return-void
.end method

.method public addPendingItem(Lnet/oneplus/h2launcher/PendingAddItemInfo;JJ[III)V
    .locals 8
    .param p1, "info"    # Lnet/oneplus/h2launcher/PendingAddItemInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cell"    # [I
    .param p7, "spanX"    # I
    .param p8, "spanY"    # I

    .prologue
    .line 3557
    iget v0, p1, Lnet/oneplus/h2launcher/PendingAddItemInfo;->itemType:I

    packed-switch v0, :pswitch_data_0

    .line 3571
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown item type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lnet/oneplus/h2launcher/PendingAddItemInfo;->itemType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3560
    :pswitch_1
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 3561
    .local v7, "span":[I
    const/4 v0, 0x0

    aput p7, v7, v0

    .line 3562
    const/4 v0, 0x1

    aput p8, v7, v0

    move-object v1, p1

    .line 3563
    check-cast v1, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lnet/oneplus/h2launcher/Launcher;->addAppWidgetFromDrop(Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;JJ[I[I)V

    .line 3573
    .end local v7    # "span":[I
    :goto_0
    return-void

    .line 3568
    :pswitch_2
    invoke-direct/range {p0 .. p6}, Lnet/oneplus/h2launcher/Launcher;->processShortcutFromDrop(Lnet/oneplus/h2launcher/PendingAddItemInfo;JJ[I)V

    goto :goto_0

    .line 3557
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public addToCustomContentPage(Landroid/view/View;Lnet/oneplus/h2launcher/Launcher$CustomContentCallbacks;Ljava/lang/String;)V
    .locals 1
    .param p1, "customContent"    # Landroid/view/View;
    .param p2, "callbacks"    # Lnet/oneplus/h2launcher/Launcher$CustomContentCallbacks;
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 2026
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0, p1, p2, p3}, Lnet/oneplus/h2launcher/Workspace;->addToCustomContentPage(Landroid/view/View;Lnet/oneplus/h2launcher/Launcher$CustomContentCallbacks;Ljava/lang/String;)V

    .line 2027
    return-void
.end method

.method addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 3
    .param p1, "hostView"    # Landroid/view/View;
    .param p2, "appWidgetInfo"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 2825
    if-eqz p2, :cond_0

    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 2832
    :cond_0
    :goto_0
    return-void

    .line 2826
    :cond_1
    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2827
    .local v0, "v":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/Advanceable;

    if-eqz v1, :cond_0

    .line 2828
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2829
    check-cast v0, Landroid/widget/Advanceable;

    .end local v0    # "v":Landroid/view/View;
    invoke-interface {v0}, Landroid/widget/Advanceable;->fyiWillBeAdvancedByHostKThx()V

    .line 2830
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->updateAutoAdvanceState()V

    goto :goto_0
.end method

.method public bindAddScreens(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6040
    .local p1, "orderedScreenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6041
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 6042
    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lnet/oneplus/h2launcher/Workspace;->insertNewWorkspaceScreenBeforeEmptyScreen(J)J

    .line 6041
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6044
    :cond_0
    return-void
.end method

.method public bindAllApplications(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    const/4 v1, 0x1

    .line 6726
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mBindAllApplicationsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/Launcher;->waitUntilResume(Ljava/lang/Runnable;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6727
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher;->mTmpAppsList:Ljava/util/ArrayList;

    .line 6738
    :goto_0
    return-void

    .line 6731
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAllAppsViewController:Lnet/oneplus/h2launcher/AllAppsViewController;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/AllAppsViewController;->setApps(Ljava/util/ArrayList;)V

    .line 6733
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v0, :cond_1

    .line 6734
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v0, p1}, Lnet/oneplus/h2launcher/LauncherCallbacks;->bindAllApplications(Ljava/util/ArrayList;)V

    .line 6737
    :cond_1
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/Launcher;->mIsAllAppsLoaded:Z

    goto :goto_0
.end method

.method public bindAllPackages(Lnet/oneplus/h2launcher/model/WidgetsModel;)V
    .locals 2
    .param p1, "model"    # Lnet/oneplus/h2launcher/model/WidgetsModel;

    .prologue
    .line 6913
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mBindPackagesUpdatedRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/Launcher;->waitUntilResume(Ljava/lang/Runnable;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6914
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher;->mWidgetsModel:Lnet/oneplus/h2launcher/model/WidgetsModel;

    .line 6922
    :cond_0
    :goto_0
    return-void

    .line 6918
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWidgetsView:Lnet/oneplus/h2launcher/widget/WidgetsContainerView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 6919
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWidgetsView:Lnet/oneplus/h2launcher/widget/WidgetsContainerView;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->addWidgets(Lnet/oneplus/h2launcher/model/WidgetsModel;)V

    .line 6920
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWidgetsModel:Lnet/oneplus/h2launcher/model/WidgetsModel;

    goto :goto_0
.end method

.method public bindAppWidget(Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;)V
    .locals 26
    .param p1, "item"    # Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    .prologue
    .line 6363
    new-instance v21, Lnet/oneplus/h2launcher/Launcher$49;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/Launcher$49;-><init>(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;)V

    .line 6368
    .local v21, "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6486
    :goto_0
    return-void

    .line 6373
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    .line 6375
    .local v22, "start":J
    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bindAppWidget: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6377
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    .line 6379
    .local v4, "workspace":Lnet/oneplus/h2launcher/Workspace;
    move-object/from16 v0, p1

    iget-object v5, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v6, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 6380
    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Lnet/oneplus/h2launcher/LauncherModel;->getProviderInfo(Landroid/content/Context;Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    move-result-object v17

    .line 6381
    .local v17, "appWidgetInfo":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/LauncherAppState;->getAppWidgetHost()Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    move-result-object v15

    .line 6383
    .local v15, "appWidgetHost":Lnet/oneplus/h2launcher/LauncherAppWidgetHost;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lnet/oneplus/h2launcher/Launcher;->mIsSafeModeEnabled:Z

    if-nez v5, :cond_3

    move-object/from16 v0, p1

    iget v5, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_3

    move-object/from16 v0, p1

    iget v5, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->restoreStatus:I

    if-eqz v5, :cond_3

    .line 6387
    if-nez v17, :cond_1

    .line 6389
    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing restored widget: id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v7, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " belongs to component "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v7, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", as the povider is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6393
    invoke-static/range {p0 .. p1}, Lnet/oneplus/h2launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;)V

    goto/16 :goto_0

    .line 6398
    :cond_1
    move-object/from16 v0, p1

    iget v5, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5

    .line 6402
    new-instance v20, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;-><init>(Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;)V

    .line 6403
    .local v20, "pendingInfo":Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;
    move-object/from16 v0, p1

    iget v5, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanX:I

    move-object/from16 v0, v20

    iput v5, v0, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->spanX:I

    .line 6404
    move-object/from16 v0, p1

    iget v5, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanY:I

    move-object/from16 v0, v20

    iput v5, v0, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->spanY:I

    .line 6405
    move-object/from16 v0, p1

    iget v5, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->minSpanX:I

    move-object/from16 v0, v20

    iput v5, v0, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->minSpanX:I

    .line 6406
    move-object/from16 v0, p1

    iget v5, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->minSpanY:I

    move-object/from16 v0, v20

    iput v5, v0, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->minSpanY:I

    .line 6407
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->getDefaultOptionsForWidget(Landroid/app/Activity;Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;)Landroid/os/Bundle;

    move-result-object v19

    .line 6409
    .local v19, "options":Landroid/os/Bundle;
    invoke-virtual {v15}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v18

    .line 6410
    .local v18, "newWidgetId":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/Launcher;->mAppWidgetManager:Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    move/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v5, v0, v1, v2}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v24

    .line 6414
    .local v24, "success":Z
    if-nez v24, :cond_2

    .line 6415
    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 6417
    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing restored widget: id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v7, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " belongs to component "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v7, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", as the launcher is unable to bing a new widget id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6421
    invoke-static/range {p0 .. p1}, Lnet/oneplus/h2launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;)V

    goto/16 :goto_0

    .line 6425
    :cond_2
    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->appWidgetId:I

    .line 6429
    move-object/from16 v0, v17

    iget-object v5, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-nez v5, :cond_4

    const/4 v5, 0x0

    :goto_1
    move-object/from16 v0, p1

    iput v5, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->restoreStatus:I

    .line 6433
    invoke-static/range {p0 .. p1}, Lnet/oneplus/h2launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;)V

    .line 6442
    .end local v18    # "newWidgetId":I
    .end local v19    # "options":Landroid/os/Bundle;
    .end local v20    # "pendingInfo":Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;
    .end local v24    # "success":Z
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lnet/oneplus/h2launcher/Launcher;->mIsSafeModeEnabled:Z

    if-nez v5, :cond_8

    move-object/from16 v0, p1

    iget v5, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->restoreStatus:I

    if-nez v5, :cond_8

    .line 6443
    if-nez v17, :cond_6

    .line 6445
    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing invalid widget: id= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v7, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6447
    invoke-static/range {p0 .. p1}, Lnet/oneplus/h2launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;)V

    goto/16 :goto_0

    .line 6429
    .restart local v18    # "newWidgetId":I
    .restart local v19    # "options":Landroid/os/Bundle;
    .restart local v20    # "pendingInfo":Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;
    .restart local v24    # "success":Z
    :cond_4
    const/4 v5, 0x4

    goto :goto_1

    .line 6434
    .end local v18    # "newWidgetId":I
    .end local v19    # "options":Landroid/os/Bundle;
    .end local v20    # "pendingInfo":Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;
    .end local v24    # "success":Z
    :cond_5
    move-object/from16 v0, p1

    iget v5, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_3

    move-object/from16 v0, v17

    iget-object v5, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-nez v5, :cond_3

    .line 6437
    const/4 v5, 0x0

    move-object/from16 v0, p1

    iput v5, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->restoreStatus:I

    .line 6438
    invoke-static/range {p0 .. p1}, Lnet/oneplus/h2launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;)V

    goto :goto_2

    .line 6451
    :cond_6
    move-object/from16 v0, p1

    iget v0, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->appWidgetId:I

    move/from16 v16, v0

    .line 6453
    .local v16, "appWidgetId":I
    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bindAppWidget: id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v7, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " belongs to component "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    iget-object v7, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6457
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v15, v0, v1, v2}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v5

    move-object/from16 v0, p1

    iput-object v5, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 6458
    move-object/from16 v0, v17

    iget v5, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->minSpanX:I

    move-object/from16 v0, p1

    iput v5, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->minSpanX:I

    .line 6459
    move-object/from16 v0, v17

    iget v5, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->minSpanY:I

    move-object/from16 v0, p1

    iput v5, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->minSpanY:I

    .line 6470
    .end local v16    # "appWidgetId":I
    :goto_3
    move-object/from16 v0, p1

    iget-object v5, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 6471
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->onBindAppWidget(Lnet/oneplus/h2launcher/Launcher;)V

    .line 6473
    move-object/from16 v0, p1

    iget-object v5, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p1

    iget-wide v6, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->container:J

    move-object/from16 v0, p1

    iget-wide v8, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->screenId:J

    move-object/from16 v0, p1

    iget v10, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->cellX:I

    move-object/from16 v0, p1

    iget v11, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->cellY:I

    move-object/from16 v0, p1

    iget v12, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanX:I

    move-object/from16 v0, p1

    iget v13, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanY:I

    const/4 v14, 0x0

    invoke-virtual/range {v4 .. v14}, Lnet/oneplus/h2launcher/Workspace;->addInScreen(Landroid/view/View;JJIIIIZ)V

    .line 6475
    invoke-virtual/range {p1 .. p1}, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->isCustomWidget()Z

    move-result v5

    if-nez v5, :cond_7

    .line 6476
    move-object/from16 v0, p1

    iget-object v5, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Lnet/oneplus/h2launcher/Launcher;->addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 6479
    :cond_7
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Workspace;->requestLayout()V

    .line 6480
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/Launcher;->mModel:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/LauncherModel;->onWorkspaceBindItem()V

    .line 6483
    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bound widget id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v7, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 6484
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v22

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 6483
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6461
    :cond_8
    const/16 v17, 0x0

    .line 6462
    new-instance v25, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lnet/oneplus/h2launcher/Launcher;->mIsSafeModeEnabled:Z

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;Z)V

    .line 6464
    .local v25, "view":Lnet/oneplus/h2launcher/PendingAppWidgetHostView;
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/Launcher;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->updateIcon(Lnet/oneplus/h2launcher/AssetCache;)V

    .line 6465
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    iput-object v0, v1, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 6466
    move-object/from16 v0, p1

    iget-object v5, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 6467
    move-object/from16 v0, p1

    iget-object v5, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/appwidget/AppWidgetHostView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3
.end method

.method public bindAppsAdded(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6097
    .local p1, "newScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, "addNotAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    .local p3, "addAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    .local p4, "addedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    new-instance v0, Lnet/oneplus/h2launcher/Launcher$44;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/Launcher$44;-><init>(Lnet/oneplus/h2launcher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 6102
    .local v0, "r":Ljava/lang/Runnable;
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6192
    :cond_0
    :goto_0
    return-void

    .line 6106
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isCustomizationsViewVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6107
    const-string v1, "Launcher"

    const-string v2, "Deferring update until onLeaveCustomizations()"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6108
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mOnLeaveCustomizationsCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6112
    :cond_2
    if-eqz p3, :cond_4

    .line 6113
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/oneplus/h2launcher/ItemInfo;

    .line 6114
    .local v7, "itemInfo":Lnet/oneplus/h2launcher/ItemInfo;
    instance-of v2, v7, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v2, :cond_3

    move-object v10, v7

    .line 6115
    check-cast v10, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 6116
    .local v10, "shortcutInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-virtual {v10}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, "com.android.stk"

    invoke-virtual {v10}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6117
    const-string v2, "Launcher"

    const-string v3, "bindAppsAdded STK enter wait addAnimated"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6123
    .end local v7    # "itemInfo":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v10    # "shortcutInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_4
    if-eqz p2, :cond_6

    .line 6124
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/oneplus/h2launcher/ItemInfo;

    .line 6125
    .restart local v7    # "itemInfo":Lnet/oneplus/h2launcher/ItemInfo;
    instance-of v2, v7, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v2, :cond_5

    move-object v10, v7

    .line 6126
    check-cast v10, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 6127
    .restart local v10    # "shortcutInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-virtual {v10}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v2, "com.android.stk"

    invoke-virtual {v10}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6128
    const-string v2, "Launcher"

    const-string v3, "bindAppsAdded STK enter wait addNotAnimated"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 6135
    .end local v7    # "itemInfo":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v10    # "shortcutInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_6
    if-eqz p1, :cond_7

    .line 6136
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/Launcher;->bindAddScreens(Ljava/util/ArrayList;)V

    .line 6141
    :cond_7
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 6142
    const/4 v1, 0x0

    .line 6143
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    .line 6142
    invoke-virtual {p0, p2, v1, v2, v3}, Lnet/oneplus/h2launcher/Launcher;->bindItems(Ljava/util/ArrayList;IIZ)V

    .line 6145
    :cond_8
    if-eqz p3, :cond_9

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 6146
    const/4 v1, 0x0

    .line 6147
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    .line 6146
    invoke-virtual {p0, p3, v1, v2, v3}, Lnet/oneplus/h2launcher/Launcher;->bindItems(Ljava/util/ArrayList;IIZ)V

    .line 6151
    :cond_9
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lnet/oneplus/h2launcher/Workspace;->removeExtraEmptyScreen(ZZ)V

    .line 6153
    if-eqz p4, :cond_a

    .line 6154
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mAllAppsViewController:Lnet/oneplus/h2launcher/AllAppsViewController;

    invoke-virtual {v1, p4}, Lnet/oneplus/h2launcher/AllAppsViewController;->addApps(Ljava/util/ArrayList;)V

    .line 6157
    :cond_a
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isIconRearrangementMode()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 6158
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mIconRearrangementHelper:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->processPackagedUpdateScreenChanged()V

    .line 6161
    :cond_b
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/oos/StyleManager;->showIconRearrangement()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6163
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 6164
    .local v9, "needReplaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    if-eqz p2, :cond_e

    .line 6165
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/oneplus/h2launcher/ItemInfo;

    .line 6166
    .local v6, "info":Lnet/oneplus/h2launcher/ItemInfo;
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    iget-wide v4, v6, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    invoke-virtual {v2, v4, v5}, Lnet/oneplus/h2launcher/Workspace;->getScreenWithId(J)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v8

    .line 6167
    .local v8, "layout":Lnet/oneplus/h2launcher/CellLayout;
    if-eqz v8, :cond_d

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/CellLayout;->isDeleted()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 6168
    :cond_d
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 6173
    .end local v6    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v8    # "layout":Lnet/oneplus/h2launcher/CellLayout;
    :cond_e
    if-eqz p3, :cond_11

    .line 6174
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/oneplus/h2launcher/ItemInfo;

    .line 6175
    .restart local v6    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    iget-wide v4, v6, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    invoke-virtual {v2, v4, v5}, Lnet/oneplus/h2launcher/Workspace;->getScreenWithId(J)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v8

    .line 6176
    .restart local v8    # "layout":Lnet/oneplus/h2launcher/CellLayout;
    if-eqz v8, :cond_10

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/CellLayout;->isDeleted()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 6177
    :cond_10
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 6182
    .end local v6    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v8    # "layout":Lnet/oneplus/h2launcher/CellLayout;
    :cond_11
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 6183
    const-string v1, "Launcher"

    const-string v2, "need to rebind Items because screen be deleted, count = %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 6184
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 6183
    invoke-static {v1, v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6185
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/oneplus/h2launcher/ItemInfo;

    .line 6186
    .restart local v6    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rebind Item = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 6189
    .end local v6    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    :cond_12
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mModel:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Lnet/oneplus/h2launcher/LauncherModel;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method public bindAppsUpdated(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6746
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    new-instance v0, Lnet/oneplus/h2launcher/Launcher$54;

    invoke-direct {v0, p0, p1}, Lnet/oneplus/h2launcher/Launcher$54;-><init>(Lnet/oneplus/h2launcher/Launcher;Ljava/util/ArrayList;)V

    .line 6751
    .local v0, "r":Ljava/lang/Runnable;
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6756
    :goto_0
    return-void

    .line 6755
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mAllAppsViewController:Lnet/oneplus/h2launcher/AllAppsViewController;

    invoke-virtual {v1, p1}, Lnet/oneplus/h2launcher/AllAppsViewController;->updateApps(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public bindComponentsRemoved(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/compat/UserHandleCompat;I)V
    .locals 10
    .param p4, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p5, "reason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ShortcutInfo;",
            ">;",
            "Lnet/oneplus/h2launcher/compat/UserHandleCompat;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 6841
    .local p1, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "appInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    .local p3, "shortcutInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    new-instance v0, Lnet/oneplus/h2launcher/Launcher$58;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/Launcher$58;-><init>(Lnet/oneplus/h2launcher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/compat/UserHandleCompat;I)V

    .line 6846
    .local v0, "r":Ljava/lang/Runnable;
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6903
    :cond_0
    :goto_0
    return-void

    .line 6849
    :cond_1
    if-eqz p2, :cond_3

    .line 6850
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/oneplus/h2launcher/AppInfo;

    .line 6851
    .local v7, "a":Lnet/oneplus/h2launcher/AppInfo;
    iget-object v2, v7, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v2, :cond_2

    iget-object v2, v7, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.stk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6852
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindComponentsRemoved for delete STK AppInfo enter waitUtilsResume, reason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6857
    .end local v7    # "a":Lnet/oneplus/h2launcher/AppInfo;
    :cond_3
    if-eqz p3, :cond_5

    .line 6858
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 6859
    .local v7, "a":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-virtual {v7}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.stk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6860
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindComponentsRemoved for delete STK ShortcutInfo enter waitUtilsResume, reason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 6865
    .end local v7    # "a":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_5
    if-nez p5, :cond_b

    .line 6866
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 6867
    .local v9, "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    if-eqz p2, :cond_6

    .line 6868
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/oneplus/h2launcher/AppInfo;

    .line 6869
    .local v8, "info":Lnet/oneplus/h2launcher/AppInfo;
    iget-object v2, v8, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 6872
    .end local v8    # "info":Lnet/oneplus/h2launcher/AppInfo;
    :cond_6
    if-eqz p3, :cond_7

    .line 6873
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 6874
    .local v8, "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-virtual {v8}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 6878
    .end local v8    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 6879
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1, p1, p4}, Lnet/oneplus/h2launcher/Workspace;->removeItemsByPackageName(Ljava/util/ArrayList;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 6880
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mIconRearrangementHelper:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    if-eqz v1, :cond_8

    .line 6881
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mIconRearrangementHelper:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-virtual {v1, p1, p4}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->removeItemsByPackageName(Ljava/util/ArrayList;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 6884
    :cond_8
    invoke-virtual {v9}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 6885
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1, v9, p4}, Lnet/oneplus/h2launcher/Workspace;->removeItemsByComponentName(Ljava/util/HashSet;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 6886
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mIconRearrangementHelper:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    if-eqz v1, :cond_9

    .line 6887
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mIconRearrangementHelper:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-virtual {v1, v9, p4}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->removeItemsByComponentName(Ljava/util/HashSet;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 6891
    :cond_9
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mDragController:Lnet/oneplus/h2launcher/DragController;

    invoke-virtual {v1, p1, v9}, Lnet/oneplus/h2launcher/DragController;->onAppsRemoved(Ljava/util/ArrayList;Ljava/util/HashSet;)V

    .line 6900
    .end local v9    # "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    :cond_a
    :goto_5
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6901
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mAllAppsViewController:Lnet/oneplus/h2launcher/AllAppsViewController;

    invoke-virtual {v1, p2}, Lnet/oneplus/h2launcher/AllAppsViewController;->removeApps(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 6894
    :cond_b
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 6895
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1, p1, p4, p5}, Lnet/oneplus/h2launcher/Workspace;->disableShortcutsByPackageName(Ljava/util/ArrayList;Lnet/oneplus/h2launcher/compat/UserHandleCompat;I)V

    goto :goto_5
.end method

.method public bindFolders(Lnet/oneplus/h2launcher/util/LongArrayMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/oneplus/h2launcher/util/LongArrayMap",
            "<",
            "Lnet/oneplus/h2launcher/FolderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6346
    .local p1, "folders":Lnet/oneplus/h2launcher/util/LongArrayMap;, "Lnet/oneplus/h2launcher/util/LongArrayMap<Lnet/oneplus/h2launcher/FolderInfo;>;"
    new-instance v0, Lnet/oneplus/h2launcher/Launcher$48;

    invoke-direct {v0, p0, p1}, Lnet/oneplus/h2launcher/Launcher$48;-><init>(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/util/LongArrayMap;)V

    .line 6351
    .local v0, "r":Ljava/lang/Runnable;
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6355
    :goto_0
    return-void

    .line 6354
    :cond_0
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/util/LongArrayMap;->clone()Lnet/oneplus/h2launcher/util/LongArrayMap;

    move-result-object v1

    sput-object v1, Lnet/oneplus/h2launcher/Launcher;->sFolders:Lnet/oneplus/h2launcher/util/LongArrayMap;

    goto :goto_0
.end method

.method public bindItems(Ljava/util/ArrayList;IIZ)V
    .locals 38
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "forceAnimateIcons"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;IIZ)V"
        }
    .end annotation

    .prologue
    .line 6201
    .local p1, "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    new-instance v4, Lnet/oneplus/h2launcher/Launcher$45;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v4 .. v9}, Lnet/oneplus/h2launcher/Launcher$45;-><init>(Lnet/oneplus/h2launcher/Launcher;Ljava/util/ArrayList;IIZ)V

    .line 6206
    .local v4, "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lnet/oneplus/h2launcher/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6340
    :goto_0
    return-void

    .line 6211
    :cond_0
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v17

    .line 6212
    .local v17, "anim":Landroid/animation/AnimatorSet;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 6213
    .local v20, "bounceAnimators":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/animation/Animator;>;"
    if-eqz p4, :cond_2

    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/Launcher;->canRunNewAppsAnimation()Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v18, 0x1

    .line 6214
    .local v18, "animateIcons":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    .line 6215
    .local v6, "workspace":Lnet/oneplus/h2launcher/Workspace;
    const-wide/16 v32, -0x1

    .line 6216
    .local v32, "newShortcutsScreenId":J
    move/from16 v26, p2

    .local v26, "i":I
    :goto_2
    move/from16 v0, v26

    move/from16 v1, p3

    if-ge v0, v1, :cond_d

    .line 6217
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lnet/oneplus/h2launcher/ItemInfo;

    .line 6220
    .local v28, "item":Lnet/oneplus/h2launcher/ItemInfo;
    move-object/from16 v0, v28

    iget-wide v8, v0, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    const-wide/16 v10, -0x65

    cmp-long v5, v8, v10

    if-nez v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/Launcher;->mHotseat:Lnet/oneplus/h2launcher/Hotseat;

    if-nez v5, :cond_3

    .line 6216
    :cond_1
    :goto_3
    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    .line 6213
    .end local v6    # "workspace":Lnet/oneplus/h2launcher/Workspace;
    .end local v18    # "animateIcons":Z
    .end local v26    # "i":I
    .end local v28    # "item":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v32    # "newShortcutsScreenId":J
    :cond_2
    const/16 v18, 0x0

    goto :goto_1

    .line 6226
    .restart local v6    # "workspace":Lnet/oneplus/h2launcher/Workspace;
    .restart local v18    # "animateIcons":Z
    .restart local v26    # "i":I
    .restart local v28    # "item":Lnet/oneplus/h2launcher/ItemInfo;
    .restart local v32    # "newShortcutsScreenId":J
    :cond_3
    move-object/from16 v0, v28

    iget v5, v0, Lnet/oneplus/h2launcher/ItemInfo;->itemType:I

    packed-switch v5, :pswitch_data_0

    .line 6293
    :pswitch_0
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v8, "Invalid Item Type"

    invoke-direct {v5, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_1
    move-object/from16 v27, v28

    .line 6230
    check-cast v27, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 6232
    .local v27, "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    move-object/from16 v0, v28

    iget v5, v0, Lnet/oneplus/h2launcher/ItemInfo;->itemType:I

    invoke-virtual/range {v27 .. v27}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v8

    move-object/from16 v0, v28

    iget-object v9, v0, Lnet/oneplus/h2launcher/ItemInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-object/from16 v0, p0

    invoke-static {v0, v5, v8, v9}, Lnet/oneplus/h2launcher/Utilities;->isValidComponent(Landroid/content/Context;ILandroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 6233
    const-string v5, "Launcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[bindItems] not valid ShortcutInfo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 6237
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Launcher;->createShortcut(Lnet/oneplus/h2launcher/ShortcutInfo;)Landroid/view/View;

    move-result-object v7

    .line 6239
    .local v7, "view":Landroid/view/View;
    move-object/from16 v0, v28

    iget-wide v8, v0, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    const-wide/16 v10, -0x64

    cmp-long v5, v8, v10

    if-nez v5, :cond_c

    .line 6240
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    move-object/from16 v0, v28

    iget-wide v8, v0, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    invoke-virtual {v5, v8, v9}, Lnet/oneplus/h2launcher/Workspace;->getScreenWithId(J)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v21

    .line 6241
    .local v21, "cl":Lnet/oneplus/h2launcher/CellLayout;
    if-eqz v21, :cond_c

    move-object/from16 v0, v28

    iget v5, v0, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    move-object/from16 v0, v28

    iget v8, v0, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v8}, Lnet/oneplus/h2launcher/CellLayout;->isOccupied(II)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 6242
    move-object/from16 v0, v28

    iget v5, v0, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    move-object/from16 v0, v28

    iget v8, v0, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v8}, Lnet/oneplus/h2launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v37

    .line 6243
    .local v37, "v":Landroid/view/View;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Collision while binding workspace item: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 6244
    .local v24, "desc":Ljava/lang/String;
    if-eqz v37, :cond_5

    .line 6245
    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v36

    .line 6246
    .local v36, "tag":Ljava/lang/Object;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " Collides with "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 6248
    .end local v36    # "tag":Ljava/lang/Object;
    :cond_5
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->isDogfoodBuild()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 6249
    new-instance v5, Ljava/lang/RuntimeException;

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 6251
    :cond_6
    const-string v5, "Launcher"

    move-object/from16 v0, v24

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6255
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;)V

    .line 6256
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 6257
    .local v16, "addShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6258
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v19

    .line 6259
    .local v19, "app":Lnet/oneplus/h2launcher/LauncherAppState;
    if-eqz v19, :cond_8

    .line 6260
    invoke-virtual/range {v19 .. v19}, Lnet/oneplus/h2launcher/LauncherAppState;->getModel()Lnet/oneplus/h2launcher/LauncherModel;

    move-result-object v29

    .line 6261
    .local v29, "model":Lnet/oneplus/h2launcher/LauncherModel;
    if-eqz v29, :cond_7

    .line 6262
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/LauncherModel;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto/16 :goto_3

    .line 6264
    :cond_7
    const-string v5, "Launcher"

    const-string v8, "[bindItems] LauncherModel is null!!!"

    invoke-static {v5, v8}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 6267
    .end local v29    # "model":Lnet/oneplus/h2launcher/LauncherModel;
    :cond_8
    const-string v5, "Launcher"

    const-string v8, "[bindItems] LauncherAppState is null!!!"

    invoke-static {v5, v8}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .end local v7    # "view":Landroid/view/View;
    .end local v16    # "addShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    .end local v19    # "app":Lnet/oneplus/h2launcher/LauncherAppState;
    .end local v21    # "cl":Lnet/oneplus/h2launcher/CellLayout;
    .end local v24    # "desc":Ljava/lang/String;
    .end local v27    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    .end local v37    # "v":Landroid/view/View;
    :pswitch_2
    move-object/from16 v25, v28

    .line 6276
    check-cast v25, Lnet/oneplus/h2launcher/FolderInfo;

    .line 6277
    .local v25, "folderInfo":Lnet/oneplus/h2launcher/FolderInfo;
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 6278
    .local v31, "removeList":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    invoke-virtual/range {v25 .. v25}, Lnet/oneplus/h2launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 6279
    .local v34, "shortcutInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    move-object/from16 v0, v28

    iget v8, v0, Lnet/oneplus/h2launcher/ItemInfo;->itemType:I

    invoke-virtual/range {v34 .. v34}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v9

    move-object/from16 v0, v28

    iget-object v10, v0, Lnet/oneplus/h2launcher/ItemInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-object/from16 v0, p0

    invoke-static {v0, v8, v9, v10}, Lnet/oneplus/h2launcher/Utilities;->isValidComponent(Landroid/content/Context;ILandroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 6280
    const-string v8, "Launcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[bindItems] FolderInfo contains not valid info = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6281
    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 6284
    .end local v34    # "shortcutInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_a
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 6285
    .restart local v34    # "shortcutInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-virtual/range {v25 .. v25}, Lnet/oneplus/h2launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object v8

    move-object/from16 v0, v34

    invoke-interface {v8, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 6288
    .end local v34    # "shortcutInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_b
    const v9, 0x7f04005a

    .line 6289
    invoke-virtual {v6}, Lnet/oneplus/h2launcher/Workspace;->getCurrentPage()I

    move-result v5

    invoke-virtual {v6, v5}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    move-object/from16 v8, v28

    check-cast v8, Lnet/oneplus/h2launcher/FolderInfo;

    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/oneplus/h2launcher/Launcher;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    .line 6288
    move-object/from16 v0, p0

    invoke-static {v9, v0, v5, v8, v10}, Lnet/oneplus/h2launcher/FolderIcon;->fromXml(ILnet/oneplus/h2launcher/Launcher;Landroid/view/ViewGroup;Lnet/oneplus/h2launcher/FolderInfo;Lnet/oneplus/h2launcher/AssetCache;)Lnet/oneplus/h2launcher/FolderIcon;

    move-result-object v7

    .line 6296
    .end local v25    # "folderInfo":Lnet/oneplus/h2launcher/FolderInfo;
    .end local v31    # "removeList":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    .restart local v7    # "view":Landroid/view/View;
    :cond_c
    move-object/from16 v0, v28

    iget-wide v8, v0, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    move-object/from16 v0, v28

    iget-wide v10, v0, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    move-object/from16 v0, v28

    iget v12, v0, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    move-object/from16 v0, v28

    iget v13, v0, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual/range {v6 .. v15}, Lnet/oneplus/h2launcher/Workspace;->addInScreenFromBind(Landroid/view/View;JJIIII)V

    .line 6298
    if-eqz v18, :cond_1

    .line 6300
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroid/view/View;->setAlpha(F)V

    .line 6301
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroid/view/View;->setScaleX(F)V

    .line 6302
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroid/view/View;->setScaleY(F)V

    .line 6303
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v7, v1}, Lnet/oneplus/h2launcher/Launcher;->createNewAppBounceAnimation(Landroid/view/View;I)Landroid/animation/ValueAnimator;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 6304
    move-object/from16 v0, v28

    iget-wide v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    move-wide/from16 v32, v0

    goto/16 :goto_3

    .line 6308
    .end local v7    # "view":Landroid/view/View;
    .end local v28    # "item":Lnet/oneplus/h2launcher/ItemInfo;
    :cond_d
    if-eqz v18, :cond_e

    .line 6310
    const-wide/16 v8, -0x1

    cmp-long v5, v32, v8

    if-lez v5, :cond_e

    .line 6311
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Workspace;->getNextPage()I

    move-result v8

    invoke-virtual {v5, v8}, Lnet/oneplus/h2launcher/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v22

    .line 6312
    .local v22, "currentScreenId":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    move-wide/from16 v0, v32

    invoke-virtual {v5, v0, v1}, Lnet/oneplus/h2launcher/Workspace;->getPageIndexForScreenId(J)I

    move-result v30

    .line 6313
    .local v30, "newScreenIndex":I
    new-instance v35, Lnet/oneplus/h2launcher/Launcher$46;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/Launcher$46;-><init>(Lnet/oneplus/h2launcher/Launcher;Landroid/animation/AnimatorSet;Ljava/util/Collection;)V

    .line 6319
    .local v35, "startBounceAnimRunnable":Ljava/lang/Runnable;
    cmp-long v5, v32, v22

    if-eqz v5, :cond_f

    .line 6322
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    new-instance v8, Lnet/oneplus/h2launcher/Launcher$47;

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v35

    invoke-direct {v8, v0, v1, v2}, Lnet/oneplus/h2launcher/Launcher$47;-><init>(Lnet/oneplus/h2launcher/Launcher;ILjava/lang/Runnable;)V

    sget v9, Lnet/oneplus/h2launcher/Launcher;->NEW_APPS_PAGE_MOVE_DELAY:I

    int-to-long v10, v9

    invoke-virtual {v5, v8, v10, v11}, Lnet/oneplus/h2launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6338
    .end local v22    # "currentScreenId":J
    .end local v30    # "newScreenIndex":I
    .end local v35    # "startBounceAnimRunnable":Ljava/lang/Runnable;
    :cond_e
    :goto_6
    invoke-virtual {v6}, Lnet/oneplus/h2launcher/Workspace;->requestLayout()V

    .line 6339
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/Launcher;->mModel:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/LauncherModel;->onWorkspaceBindItem()V

    goto/16 :goto_0

    .line 6334
    .restart local v22    # "currentScreenId":J
    .restart local v30    # "newScreenIndex":I
    .restart local v35    # "startBounceAnimRunnable":Ljava/lang/Runnable;
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    sget v8, Lnet/oneplus/h2launcher/Launcher;->NEW_APPS_ANIMATION_DELAY:I

    int-to-long v8, v8

    move-object/from16 v0, v35

    invoke-virtual {v5, v0, v8, v9}, Lnet/oneplus/h2launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    .line 6226
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bindQuickPage()V
    .locals 2

    .prologue
    .line 6048
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6049
    const-string v0, "Launcher"

    const-string v1, " Is already has CustomContent no need to bindQuickPage"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6059
    :cond_0
    :goto_0
    return-void

    .line 6052
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->createQuickPage()V

    .line 6055
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->hasCustomContentToLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6056
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->createCustomContentContainer()V

    .line 6057
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->populateCustomContentContainer()V

    goto :goto_0
.end method

.method public bindRestoreItemsChange(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6816
    .local p1, "updates":Ljava/util/HashSet;, "Ljava/util/HashSet<Lnet/oneplus/h2launcher/ItemInfo;>;"
    new-instance v0, Lnet/oneplus/h2launcher/Launcher$57;

    invoke-direct {v0, p0, p1}, Lnet/oneplus/h2launcher/Launcher$57;-><init>(Lnet/oneplus/h2launcher/Launcher;Ljava/util/HashSet;)V

    .line 6821
    .local v0, "r":Ljava/lang/Runnable;
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6826
    :goto_0
    return-void

    .line 6825
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1, p1}, Lnet/oneplus/h2launcher/Workspace;->updateRestoreItems(Ljava/util/HashSet;)V

    goto :goto_0
.end method

.method public bindScreens(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6030
    .local p1, "orderedScreenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/Launcher;->bindAddScreens(Ljava/util/ArrayList;)V

    .line 6033
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 6034
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->addExtraEmptyScreen()Z

    .line 6036
    :cond_0
    return-void
.end method

.method public bindSearchProviderChanged(Z)V
    .locals 2
    .param p1, "forceBinding"    # Z

    .prologue
    .line 6646
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleManager;->showSearchBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6648
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lnet/oneplus/h2launcher/Launcher$52;

    invoke-direct {v1, p0, p1}, Lnet/oneplus/h2launcher/Launcher$52;-><init>(Lnet/oneplus/h2launcher/Launcher;Z)V

    .line 6647
    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/Utilities;->getSearchWidgetProvider(Landroid/content/Context;Lnet/oneplus/h2launcher/Utilities$WidgetProviderListener;)V

    .line 6667
    :cond_0
    return-void
.end method

.method public bindShortcutsChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 10
    .param p3, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ShortcutInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ShortcutInfo;",
            ">;",
            "Lnet/oneplus/h2launcher/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 6779
    .local p1, "updated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    .local p2, "removed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    new-instance v1, Lnet/oneplus/h2launcher/Launcher$56;

    invoke-direct {v1, p0, p1, p2, p3}, Lnet/oneplus/h2launcher/Launcher$56;-><init>(Lnet/oneplus/h2launcher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 6784
    .local v1, "r":Ljava/lang/Runnable;
    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6807
    :cond_0
    :goto_0
    return-void

    .line 6788
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 6789
    .local v0, "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v5, "com.android.stk"

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6790
    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "STK remove WorkspaceItem enter waitUntilResume, shortcut id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->id:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6794
    .end local v0    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 6795
    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v4, p1}, Lnet/oneplus/h2launcher/Workspace;->updateShortcuts(Ljava/util/ArrayList;)V

    .line 6798
    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 6799
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 6800
    .local v2, "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 6801
    .local v3, "si":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 6803
    .end local v3    # "si":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_5
    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v4, v2, p3}, Lnet/oneplus/h2launcher/Workspace;->removeItemsByComponentName(Ljava/util/HashSet;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 6805
    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher;->mDragController:Lnet/oneplus/h2launcher/DragController;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v5, v2}, Lnet/oneplus/h2launcher/DragController;->onAppsRemoved(Ljava/util/ArrayList;Ljava/util/HashSet;)V

    goto :goto_0
.end method

.method public bindWidgetsRestored(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6760
    .local p1, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;>;"
    new-instance v0, Lnet/oneplus/h2launcher/Launcher$55;

    invoke-direct {v0, p0, p1}, Lnet/oneplus/h2launcher/Launcher$55;-><init>(Lnet/oneplus/h2launcher/Launcher;Ljava/util/ArrayList;)V

    .line 6765
    .local v0, "r":Ljava/lang/Runnable;
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6769
    :goto_0
    return-void

    .line 6768
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1, p1}, Lnet/oneplus/h2launcher/Workspace;->widgetsRestored(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public cancelApplyingIconPack()V
    .locals 2

    .prologue
    .line 4207
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v0

    sget-object v1, Lnet/oneplus/h2launcher/Launcher;->APPLY_ICON_PACK_TASK_CALLER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/util/TaskWorker;->cancelTask(Ljava/lang/Object;)V

    .line 4208
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mApplyIconPackTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lnet/oneplus/h2launcher/Utilities;->isTaskUnfinished(Landroid/os/AsyncTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4209
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mApplyIconPackTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 4211
    :cond_0
    return-void
.end method

.method protected changeWallpaperVisiblity(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x100000

    .line 5219
    if-eqz p1, :cond_1

    move v1, v2

    .line 5220
    .local v1, "wpflags":I
    :goto_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v0, v4, v2

    .line 5222
    .local v0, "curflags":I
    if-eq v1, v0, :cond_0

    .line 5223
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 5225
    :cond_0
    if-eqz p1, :cond_2

    :goto_1
    invoke-direct {p0, v3}, Lnet/oneplus/h2launcher/Launcher;->setWorkspaceBackground(I)V

    .line 5227
    return-void

    .end local v0    # "curflags":I
    .end local v1    # "wpflags":I
    :cond_1
    move v1, v3

    .line 5219
    goto :goto_0

    .line 5225
    .restart local v0    # "curflags":I
    .restart local v1    # "wpflags":I
    :cond_2
    const/4 v3, 0x2

    goto :goto_1
.end method

.method public closeFolder()V
    .locals 1

    .prologue
    .line 5034
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Launcher;->closeFolder(Z)V

    .line 5035
    return-void
.end method

.method public closeFolder(Lnet/oneplus/h2launcher/Folder;Z)V
    .locals 4
    .param p1, "folder"    # Lnet/oneplus/h2launcher/Folder;
    .param p2, "animate"    # Z

    .prologue
    const/4 v3, 0x0

    .line 5048
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/Folder;->getInfo()Lnet/oneplus/h2launcher/FolderInfo;

    move-result-object v1

    iput-boolean v3, v1, Lnet/oneplus/h2launcher/FolderInfo;->opened:Z

    .line 5050
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5051
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    iget-object v2, p1, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/Workspace;->getViewForTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/FolderIcon;

    .line 5052
    .local v0, "fi":Lnet/oneplus/h2launcher/FolderIcon;
    if-eqz v0, :cond_0

    .line 5053
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->canReorder:Z

    .line 5057
    .end local v0    # "fi":Lnet/oneplus/h2launcher/FolderIcon;
    :cond_0
    invoke-virtual {p1, v3}, Lnet/oneplus/h2launcher/Folder;->close(Z)V

    .line 5058
    invoke-virtual {p0, p2}, Lnet/oneplus/h2launcher/Launcher;->hideFoldersView(Z)V

    .line 5062
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/DragLayer;->sendAccessibilityEvent(I)V

    .line 5063
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->enableLayoutTransitions()V

    .line 5064
    return-void
.end method

.method public closeFolder(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 5038
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->getOpenFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v0

    .line 5039
    .local v0, "folder":Lnet/oneplus/h2launcher/Folder;
    :goto_0
    if-eqz v0, :cond_1

    .line 5040
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Folder;->isEditingName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5041
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Folder;->dismissEditingName()V

    .line 5043
    :cond_0
    invoke-virtual {p0, v0, p1}, Lnet/oneplus/h2launcher/Launcher;->closeFolder(Lnet/oneplus/h2launcher/Folder;Z)V

    .line 5045
    :cond_1
    return-void

    .line 5038
    .end local v0    # "folder":Lnet/oneplus/h2launcher/Folder;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closeSystemDialogs()V
    .locals 1

    .prologue
    .line 2956
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 2959
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Launcher;->setWaitingForResult(Z)V

    .line 2960
    return-void
.end method

.method completeAddAppWidget(IJJLandroid/appwidget/AppWidgetHostView;Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;)V
    .locals 18
    .param p1, "appWidgetId"    # I
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "hostView"    # Landroid/appwidget/AppWidgetHostView;
    .param p7, "appWidgetInfo"    # Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    .prologue
    .line 2578
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    move-object/from16 v17, v0

    .line 2579
    .local v17, "info":Lnet/oneplus/h2launcher/ItemInfo;
    if-nez p7, :cond_0

    .line 2580
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Launcher;->mAppWidgetManager:Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    .line 2581
    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    .line 2580
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    move-result-object p7

    .line 2584
    :cond_0
    move-object/from16 v0, p7

    iget-boolean v4, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-eqz v4, :cond_1

    .line 2585
    const/16 p1, -0x64

    .line 2589
    :cond_1
    new-instance v5, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    move-object/from16 v0, p7

    iget-object v4, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move/from16 v0, p1

    invoke-direct {v5, v0, v4}, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 2590
    .local v5, "launcherInfo":Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;
    move-object/from16 v0, v17

    iget v4, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    iput v4, v5, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanX:I

    .line 2591
    move-object/from16 v0, v17

    iget v4, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    iput v4, v5, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanY:I

    .line 2592
    move-object/from16 v0, v17

    iget v4, v0, Lnet/oneplus/h2launcher/ItemInfo;->minSpanX:I

    iput v4, v5, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->minSpanX:I

    .line 2593
    move-object/from16 v0, v17

    iget v4, v0, Lnet/oneplus/h2launcher/ItemInfo;->minSpanY:I

    iput v4, v5, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->minSpanY:I

    .line 2594
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Launcher;->mAppWidgetManager:Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->getUser(Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;)Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v4

    iput-object v4, v5, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 2596
    move-object/from16 v0, v17

    iget v10, v0, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    move-object/from16 v0, v17

    iget v11, v0, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    move-object/from16 v4, p0

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    invoke-static/range {v4 .. v11}, Lnet/oneplus/h2launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;JJII)V

    .line 2599
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lnet/oneplus/h2launcher/Launcher;->mRestoring:Z

    if-nez v4, :cond_2

    .line 2600
    if-nez p6, :cond_3

    .line 2602
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/LauncherAppState;->getAppWidgetHost()Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    move-result-object v4

    .line 2603
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p7

    invoke-virtual {v4, v0, v1, v2}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v4

    iput-object v4, v5, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 2608
    :goto_0
    iget-object v4, v5, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v4, v5}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 2609
    iget-object v4, v5, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    .line 2610
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->notifyWidgetSizeChanged(Lnet/oneplus/h2launcher/Launcher;)V

    .line 2612
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    iget-object v7, v5, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, v17

    iget v12, v0, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    move-object/from16 v0, v17

    iget v13, v0, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    iget v14, v5, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanX:I

    iget v15, v5, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanY:I

    .line 2613
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/Launcher;->isWorkspaceLocked()Z

    move-result v16

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    .line 2612
    invoke-virtual/range {v6 .. v16}, Lnet/oneplus/h2launcher/Workspace;->addInScreen(Landroid/view/View;JJIIIIZ)V

    .line 2615
    iget-object v4, v5, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v4, v1}, Lnet/oneplus/h2launcher/Launcher;->addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 2617
    :cond_2
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/Launcher;->resetAddInfo()V

    .line 2618
    return-void

    .line 2606
    :cond_3
    move-object/from16 v0, p6

    iput-object v0, v5, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    goto :goto_0
.end method

.method completeTwoStageWidgetDrop(II)V
    .locals 12
    .param p1, "resultCode"    # I
    .param p2, "appWidgetId"    # I

    .prologue
    const/4 v7, 0x1

    .line 1561
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    iget-wide v10, v1, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    invoke-virtual {v0, v10, v11}, Lnet/oneplus/h2launcher/Workspace;->getScreenWithId(J)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v2

    .line 1562
    .local v2, "cellLayout":Lnet/oneplus/h2launcher/CellLayout;
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getAppWidgetHost()Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    move-result-object v9

    .line 1563
    .local v9, "widgetHost":Lnet/oneplus/h2launcher/LauncherAppWidgetHost;
    const/4 v4, 0x0

    .line 1564
    .local v4, "onCompleteRunnable":Ljava/lang/Runnable;
    const/4 v5, 0x0

    .line 1566
    .local v5, "animationType":I
    const/4 v6, 0x0

    .line 1567
    .local v6, "boundWidget":Landroid/appwidget/AppWidgetHostView;
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 1568
    const/4 v5, 0x3

    .line 1569
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddWidgetInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    .line 1570
    invoke-virtual {v9, p0, p2, v0}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v8

    .line 1571
    .local v8, "layout":Landroid/appwidget/AppWidgetHostView;
    move-object v6, v8

    .line 1572
    new-instance v4, Lnet/oneplus/h2launcher/Launcher$12;

    .end local v4    # "onCompleteRunnable":Ljava/lang/Runnable;
    invoke-direct {v4, p0, p2, v8}, Lnet/oneplus/h2launcher/Launcher$12;-><init>(Lnet/oneplus/h2launcher/Launcher;ILandroid/appwidget/AppWidgetHostView;)V

    .line 1585
    .end local v8    # "layout":Landroid/appwidget/AppWidgetHostView;
    .restart local v4    # "onCompleteRunnable":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1586
    if-eqz v2, :cond_3

    .line 1587
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    .line 1588
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/DragView;

    .line 1587
    invoke-virtual/range {v0 .. v7}, Lnet/oneplus/h2launcher/Workspace;->animateWidgetDrop(Lnet/oneplus/h2launcher/ItemInfo;Lnet/oneplus/h2launcher/CellLayout;Lnet/oneplus/h2launcher/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    .line 1601
    :cond_1
    :goto_1
    return-void

    .line 1581
    :cond_2
    if-nez p1, :cond_0

    .line 1582
    invoke-virtual {v9, p2}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 1583
    const/4 v5, 0x4

    goto :goto_0

    .line 1591
    :cond_3
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[completeTwoStageWidgetDrop] CellLayout is null. ScreenId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    iget-wide v10, v3, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", resultCode = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/DragLayer;->clearAnimatedView()V

    .line 1594
    const/16 v0, 0x12c

    const/4 v1, 0x0

    invoke-virtual {p0, v7, v0, v1}, Lnet/oneplus/h2launcher/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    goto :goto_1

    .line 1597
    :cond_4
    if-eqz v4, :cond_1

    .line 1599
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method public createAppDragInfo(Landroid/content/Intent;)Lnet/oneplus/h2launcher/AppInfo;
    .locals 3
    .param p1, "appLaunchIntent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 7178
    const/4 v0, 0x0

    .line 7179
    .local v0, "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    sget-boolean v2, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_LOLLIPOP:Z

    if-eqz v2, :cond_0

    .line 7180
    const-string v2, "android.intent.extra.USER"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 7181
    .local v1, "userHandle":Landroid/os/UserHandle;
    if-eqz v1, :cond_0

    .line 7182
    invoke-static {v1}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v0

    .line 7185
    .end local v1    # "userHandle":Landroid/os/UserHandle;
    :cond_0
    invoke-virtual {p0, p1, v0}, Lnet/oneplus/h2launcher/Launcher;->createAppDragInfo(Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Lnet/oneplus/h2launcher/AppInfo;

    move-result-object v2

    return-object v2
.end method

.method public createAppDragInfo(Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Lnet/oneplus/h2launcher/AppInfo;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 7190
    if-nez p2, :cond_0

    .line 7191
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object p2

    .line 7196
    :cond_0
    invoke-static {p0}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    move-result-object v1

    .line 7197
    .local v1, "launcherApps":Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;
    invoke-virtual {v1, p1, p2}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    move-result-object v0

    .line 7198
    .local v0, "activityInfo":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    if-nez v0, :cond_1

    .line 7199
    const/4 v2, 0x0

    .line 7201
    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lnet/oneplus/h2launcher/AppInfo;

    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-direct {v2, p0, v0, p2, v3}, Lnet/oneplus/h2launcher/AppInfo;-><init>(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Lnet/oneplus/h2launcher/AssetCache;)V

    goto :goto_0
.end method

.method public createIconDrawable(Landroid/graphics/Bitmap;)Lnet/oneplus/h2launcher/FastBitmapDrawable;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 7272
    new-instance v0, Lnet/oneplus/h2launcher/FastBitmapDrawable;

    invoke-direct {v0, p1}, Lnet/oneplus/h2launcher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 7273
    .local v0, "d":Lnet/oneplus/h2launcher/FastBitmapDrawable;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->setFilterBitmap(Z)V

    .line 7274
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Launcher;->resizeIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7275
    return-object v0
.end method

.method public createShortcut(Landroid/view/ViewGroup;Lnet/oneplus/h2launcher/ShortcutInfo;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "info"    # Lnet/oneplus/h2launcher/ShortcutInfo;

    .prologue
    const/4 v3, 0x0

    .line 2502
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/oos/StyleManager;->showDynamicIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lnet/oneplus/h2launcher/ShortcutInfo;->isDynamicIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p2

    .line 2503
    check-cast v1, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    const v2, 0x7f0a00fe

    invoke-interface {v1, p0, p1, v3, v2}, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;->createShortcutView(Landroid/content/Context;Landroid/view/ViewGroup;ZI)Lnet/oneplus/h2launcher/BubbleTextView;

    move-result-object v0

    .line 2508
    .local v0, "favorite":Lnet/oneplus/h2launcher/BubbleTextView;
    :goto_0
    invoke-virtual {v0, p2}, Lnet/oneplus/h2launcher/BubbleTextView;->applyFromShortcutInfo(Lnet/oneplus/h2launcher/ShortcutInfo;)V

    .line 2509
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mDeviceProfile:Lnet/oneplus/h2launcher/DeviceProfile;

    iget v1, v1, Lnet/oneplus/h2launcher/DeviceProfile;->iconDrawablePaddingPx:I

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/BubbleTextView;->setCompoundDrawablePadding(I)V

    .line 2510
    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2511
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mFocusHandler:Lnet/oneplus/h2launcher/FocusIndicatorView;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/BubbleTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2512
    return-object v0

    .line 2505
    .end local v0    # "favorite":Lnet/oneplus/h2launcher/BubbleTextView;
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040027

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/BubbleTextView;

    .restart local v0    # "favorite":Lnet/oneplus/h2launcher/BubbleTextView;
    goto :goto_0
.end method

.method createShortcut(Lnet/oneplus/h2launcher/ShortcutInfo;)Landroid/view/View;
    .locals 2
    .param p1, "info"    # Lnet/oneplus/h2launcher/ShortcutInfo;

    .prologue
    .line 2489
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p1}, Lnet/oneplus/h2launcher/Launcher;->createShortcut(Landroid/view/ViewGroup;Lnet/oneplus/h2launcher/ShortcutInfo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public createShortcutDragInfo(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;)Lnet/oneplus/h2launcher/ItemInfo;
    .locals 6
    .param p1, "shortcutIntent"    # Landroid/content/Intent;
    .param p2, "caption"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 7208
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleManager;->showDynamicIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->getInstance()Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->isDynamicIcon(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7209
    invoke-static {}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->getInstance()Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;

    move-result-object v0

    .line 7210
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move-object v4, p3

    .line 7209
    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->createShortcutInfo(Landroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Lnet/oneplus/h2launcher/ShortcutInfo;

    move-result-object v0

    .line 7213
    :goto_0
    return-object v0

    .line 7212
    :cond_0
    new-instance v0, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 7213
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/ShortcutInfo;-><init>(Landroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    goto :goto_0
.end method

.method protected disableVoiceButtonProxy(Z)V
    .locals 0
    .param p1, "disable"    # Z

    .prologue
    .line 5665
    return-void
.end method

.method public dismissFolderTutorial()V
    .locals 1

    .prologue
    .line 7146
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mClings:Lnet/oneplus/h2launcher/LauncherClings;

    if-nez v0, :cond_0

    .line 7147
    new-instance v0, Lnet/oneplus/h2launcher/LauncherClings;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/LauncherClings;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mClings:Lnet/oneplus/h2launcher/LauncherClings;

    .line 7149
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mClings:Lnet/oneplus/h2launcher/LauncherClings;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherClings;->dismissFolderTutorial()V

    .line 7150
    return-void
.end method

.method public dismissIntroScreen()V
    .locals 4

    .prologue
    .line 7095
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->markIntroScreenDismissed()V

    .line 7096
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->showFirstRunActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7099
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    new-instance v1, Lnet/oneplus/h2launcher/Launcher$61;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/Launcher$61;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7110
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Launcher;->changeWallpaperVisiblity(Z)V

    .line 7111
    return-void

    .line 7107
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/DragLayer;->dismissOverlayView()V

    .line 7108
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->showFirstRunClings()V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 3724
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 3725
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 3742
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    :pswitch_0
    :sswitch_0
    return v0

    .line 3729
    :sswitch_1
    const-string v1, "launcher_dump_state"

    invoke-static {v1}, Lnet/oneplus/h2launcher/Utilities;->isPropertyEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3730
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->dumpState()V

    goto :goto_1

    .line 3735
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 3736
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 3725
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x19 -> :sswitch_1
    .end sparse-switch

    .line 3736
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 5757
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 5758
    .local v0, "result":Z
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    .line 5759
    .local v1, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5761
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v3, Lnet/oneplus/h2launcher/Launcher$State;->APPS:Lnet/oneplus/h2launcher/Launcher$State;

    if-ne v2, v3, :cond_0

    .line 5762
    const v2, 0x7f0b0033

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5770
    :goto_0
    return v0

    .line 5763
    :cond_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v3, Lnet/oneplus/h2launcher/Launcher$State;->WIDGETS:Lnet/oneplus/h2launcher/Launcher$State;

    if-ne v2, v3, :cond_1

    .line 5764
    const v2, 0x7f0b00d1

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5765
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    if-eqz v2, :cond_2

    .line 5766
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Workspace;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5768
    :cond_2
    const v2, 0x7f0b0034

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public doWorkspaceOrFolderIconAnimation()V
    .locals 3

    .prologue
    .line 5018
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/oos/StyleManager;->showDynamicIcon()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->shouldUpdateDynamicIconState()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5019
    const-string v1, "Launcher"

    const-string v2, "DynamicIcon doWorkspaceOrFolderIconAnimation be enter"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5020
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->getOpenFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v0

    .line 5021
    .local v0, "folder":Lnet/oneplus/h2launcher/Folder;
    :goto_0
    if-eqz v0, :cond_0

    .line 5022
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Folder;->updateCurrentPageDynamicIconState()V

    .line 5025
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    if-eqz v1, :cond_1

    .line 5026
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->updateCurrentPageIconState()V

    .line 5031
    .end local v0    # "folder":Lnet/oneplus/h2launcher/Folder;
    :cond_1
    :goto_1
    return-void

    .line 5020
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 5029
    :cond_3
    const-string v1, "Launcher"

    const-string v2, "DynamicIcon doWorkspaceOrFolderIconAnimation be skip"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public doubleTabToLockEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 7035
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mGestureSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "double_tap_to_lock_enabled_saved"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 7305
    invoke-super {p0, p1, p2, p3, p4}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 7306
    sget-object v2, Lnet/oneplus/h2launcher/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    monitor-enter v2

    .line 7307
    :try_start_0
    const-string v1, " "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7308
    const-string v1, "Debug logs: "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7309
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lnet/oneplus/h2launcher/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 7310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v1, Lnet/oneplus/h2launcher/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7309
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7312
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7313
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v1, :cond_1

    .line 7314
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v1, p1, p2, p3, p4}, Lnet/oneplus/h2launcher/LauncherCallbacks;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 7316
    :cond_1
    return-void

    .line 7312
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public dumpLogsToLocalData()V
    .locals 0

    .prologue
    .line 7402
    return-void
.end method

.method public dumpState()V
    .locals 3

    .prologue
    .line 7290
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BEGIN launcher dump state for launcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7291
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSavedState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7292
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWorkspaceLoading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspaceLoading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7293
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRestoring="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lnet/oneplus/h2launcher/Launcher;->mRestoring:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7294
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWaitingForResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lnet/oneplus/h2launcher/Launcher;->mWaitingForResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7295
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSavedInstanceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7296
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sFolders.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lnet/oneplus/h2launcher/Launcher;->sFolders:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/util/LongArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7297
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mModel:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherModel;->dumpState()V

    .line 7300
    const-string v0, "Launcher"

    const-string v1, "END launcher dump state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7301
    return-void
.end method

.method public enterSpringLoadedDragMode()V
    .locals 7

    .prologue
    .line 5593
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v1, Lnet/oneplus/h2launcher/Launcher$State;->APPS_SPRING_LOADED:Lnet/oneplus/h2launcher/Launcher$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v1, Lnet/oneplus/h2launcher/Launcher$State;->WIDGETS_SPRING_LOADED:Lnet/oneplus/h2launcher/Launcher$State;

    if-ne v0, v1, :cond_1

    .line 5603
    :cond_0
    :goto_0
    return-void

    .line 5598
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mStateTransitionAnimation:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Workspace;->getState()Lnet/oneplus/h2launcher/Workspace$State;

    move-result-object v2

    sget-object v3, Lnet/oneplus/h2launcher/Workspace$State;->SPRING_LOADED:Lnet/oneplus/h2launcher/Workspace$State;

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToWorkspace(Lnet/oneplus/h2launcher/Launcher$State;Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;IZLjava/lang/Runnable;)V

    .line 5602
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isWidgetsViewVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lnet/oneplus/h2launcher/Launcher$State;->WIDGETS_SPRING_LOADED:Lnet/oneplus/h2launcher/Launcher$State;

    :goto_1
    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    goto :goto_0

    :cond_2
    sget-object v0, Lnet/oneplus/h2launcher/Launcher$State;->APPS_SPRING_LOADED:Lnet/oneplus/h2launcher/Launcher$State;

    goto :goto_1
.end method

.method exitSpringLoadedDragMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5628
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v1, Lnet/oneplus/h2launcher/Launcher$State;->APPS_SPRING_LOADED:Lnet/oneplus/h2launcher/Launcher$State;

    if-ne v0, v1, :cond_2

    .line 5629
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleManager;->showSearchBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5630
    invoke-virtual {p0, v3, v2, v2, v2}, Lnet/oneplus/h2launcher/Launcher;->showAppsView(ZZZZ)V

    .line 5638
    :cond_0
    :goto_0
    return-void

    .line 5633
    :cond_1
    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/Launcher;->showWorkspace(Z)V

    goto :goto_0

    .line 5635
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v1, Lnet/oneplus/h2launcher/Launcher$State;->WIDGETS_SPRING_LOADED:Lnet/oneplus/h2launcher/Launcher$State;

    if-ne v0, v1, :cond_0

    .line 5636
    invoke-virtual {p0, v3, v2}, Lnet/oneplus/h2launcher/Launcher;->showWidgetsView(ZZ)V

    goto :goto_0
.end method

.method public exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V
    .locals 4
    .param p1, "successfulDrop"    # Z
    .param p2, "delay"    # I
    .param p3, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 5607
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v1, Lnet/oneplus/h2launcher/Launcher$State;->APPS_SPRING_LOADED:Lnet/oneplus/h2launcher/Launcher$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v1, Lnet/oneplus/h2launcher/Launcher$State;->WIDGETS_SPRING_LOADED:Lnet/oneplus/h2launcher/Launcher$State;

    if-eq v0, v1, :cond_0

    .line 5625
    :goto_0
    return-void

    .line 5609
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnet/oneplus/h2launcher/Launcher$43;

    invoke-direct {v1, p0, p1, p3}, Lnet/oneplus/h2launcher/Launcher$43;-><init>(Lnet/oneplus/h2launcher/Launcher;ZLjava/lang/Runnable;)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public finishBindingItems()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 6517
    new-instance v0, Lnet/oneplus/h2launcher/Launcher$50;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/Launcher$50;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    .line 6522
    .local v0, "r":Ljava/lang/Runnable;
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6567
    :cond_0
    :goto_0
    return-void

    .line 6526
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    .line 6527
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6528
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Workspace;->getCurrentPage()I

    move-result v4

    invoke-virtual {v1, v4}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 6530
    :cond_2
    iput-object v6, p0, Lnet/oneplus/h2launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 6533
    :cond_3
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->restoreInstanceStateForRemainingPages()V

    .line 6535
    invoke-direct {p0, v5}, Lnet/oneplus/h2launcher/Launcher;->setWorkspaceLoading(Z)V

    .line 6536
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->sendLoadingCompleteBroadcastIfNecessary()V

    .line 6540
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->registerWallpaperChangedReceiver()V

    .line 6544
    sget-object v1, Lnet/oneplus/h2launcher/Launcher;->sPendingAddItem:Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;

    if-eqz v1, :cond_4

    .line 6545
    sget-object v1, Lnet/oneplus/h2launcher/Launcher;->sPendingAddItem:Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;

    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/Launcher;->completeAdd(Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;)J

    move-result-wide v2

    .line 6550
    .local v2, "screenId":J
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    new-instance v4, Lnet/oneplus/h2launcher/Launcher$51;

    invoke-direct {v4, p0, v2, v3}, Lnet/oneplus/h2launcher/Launcher$51;-><init>(Lnet/oneplus/h2launcher/Launcher;J)V

    invoke-virtual {v1, v4}, Lnet/oneplus/h2launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 6556
    sput-object v6, Lnet/oneplus/h2launcher/Launcher;->sPendingAddItem:Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;

    .line 6559
    .end local v2    # "screenId":J
    :cond_4
    invoke-static {p0}, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->disableAndFlushInstallQueue(Landroid/content/Context;)V

    .line 6561
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->updateAllShortcuts()V

    .line 6563
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v1, :cond_0

    .line 6564
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v1, v5}, Lnet/oneplus/h2launcher/LauncherCallbacks;->finishBindingItems(Z)V

    goto :goto_0
.end method

.method public finishLoaderTask()V
    .locals 1

    .prologue
    .line 7406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher;->mIsLoaderTaskFinished:Z

    .line 7407
    return-void
.end method

.method public getActivityLaunchOptions(Landroid/view/View;)Landroid/os/Bundle;
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 4800
    sget-boolean v6, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_MARSHMALLOW:Z

    if-eqz v6, :cond_1

    .line 4801
    const/4 v3, 0x0

    .local v3, "left":I
    const/4 v4, 0x0

    .line 4802
    .local v4, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .local v5, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 4803
    .local v1, "height":I
    instance-of v6, p1, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    move-object v6, p1

    .line 4805
    check-cast v6, Landroid/widget/TextView;

    invoke-static {v6}, Lnet/oneplus/h2launcher/Workspace;->getTextViewIcon(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 4806
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 4807
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 4808
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int v6, v5, v6

    div-int/lit8 v3, v6, 0x2

    .line 4809
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 4810
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 4811
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 4814
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-static {p1, v3, v4, v5, v1}, Landroid/app/ActivityOptions;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 4822
    .end local v1    # "height":I
    .end local v3    # "left":I
    .end local v4    # "top":I
    .end local v5    # "width":I
    :goto_0
    return-object v6

    .line 4815
    :cond_1
    sget-boolean v6, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_LOLLIPOP_MR1:Z

    if-eqz v6, :cond_2

    .line 4819
    const v6, 0x7f050026

    const v7, 0x7f050019

    invoke-static {p0, v6, v7}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v6

    .line 4820
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    goto :goto_0

    .line 4822
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public getAllAppsButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 2476
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAllAppsButton:Landroid/view/View;

    return-object v0
.end method

.method public getAllAppsViewController()Lnet/oneplus/h2launcher/AllAppsViewController;
    .locals 1

    .prologue
    .line 3296
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAllAppsViewController:Lnet/oneplus/h2launcher/AllAppsViewController;

    if-nez v0, :cond_0

    .line 3297
    new-instance v0, Lnet/oneplus/h2launcher/AllAppsViewController;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/AllAppsViewController;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAllAppsViewController:Lnet/oneplus/h2launcher/AllAppsViewController;

    .line 3299
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAllAppsViewController:Lnet/oneplus/h2launcher/AllAppsViewController;

    return-object v0
.end method

.method public getAppWidgetHost()Lnet/oneplus/h2launcher/LauncherAppWidgetHost;
    .locals 1

    .prologue
    .line 2930
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getAppWidgetHost()Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    move-result-object v0

    return-object v0
.end method

.method public getAppsView()Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;
    .locals 1

    .prologue
    .line 2860
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAppsView:Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    return-object v0
.end method

.method public getAssetCache()Lnet/oneplus/h2launcher/AssetCache;
    .locals 1

    .prologue
    .line 2940
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    return-object v0
.end method

.method public getCellLayout(JJ)Lnet/oneplus/h2launcher/CellLayout;
    .locals 3
    .param p1, "container"    # J
    .param p3, "screenId"    # J

    .prologue
    .line 5158
    const-wide/16 v0, -0x65

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 5159
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mHotseatController:Lnet/oneplus/h2launcher/HotseatController;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/HotseatController;->getHotSeatLayout()Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v0

    .line 5165
    :goto_0
    return-object v0

    .line 5162
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    if-eqz v0, :cond_1

    .line 5163
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0, p3, p4}, Lnet/oneplus/h2launcher/Workspace;->getScreenWithId(J)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v0

    goto :goto_0

    .line 5165
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClings()Lnet/oneplus/h2launcher/LauncherClings;
    .locals 1

    .prologue
    .line 7520
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mClings:Lnet/oneplus/h2launcher/LauncherClings;

    return-object v0
.end method

.method public getCurrentWorkspaceScreen()I
    .locals 1

    .prologue
    .line 6000
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    if-eqz v0, :cond_0

    .line 6001
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->getCurrentPage()I

    move-result v0

    .line 6003
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getCustomizationsView()Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;
    .locals 1

    .prologue
    .line 2880
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mCustomizationsView:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    return-object v0
.end method

.method public getCustomizationsViewStub()Landroid/view/ViewStub;
    .locals 1

    .prologue
    .line 2876
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mCustomizationsViewStub:Landroid/view/ViewStub;

    return-object v0
.end method

.method public getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;
    .locals 1

    .prologue
    .line 2952
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mDeviceProfile:Lnet/oneplus/h2launcher/DeviceProfile;

    return-object v0
.end method

.method public getDoubleTapEnabled()Z
    .locals 1

    .prologue
    .line 2980
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher;->mDoubleTapEnabled:Z

    return v0
.end method

.method public getDragController()Lnet/oneplus/h2launcher/DragController;
    .locals 1

    .prologue
    .line 3281
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mDragController:Lnet/oneplus/h2launcher/DragController;

    if-nez v0, :cond_0

    .line 3282
    new-instance v0, Lnet/oneplus/h2launcher/DragController;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/DragController;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mDragController:Lnet/oneplus/h2launcher/DragController;

    .line 3284
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mDragController:Lnet/oneplus/h2launcher/DragController;

    return-object v0
.end method

.method public getDragLayer()Lnet/oneplus/h2launcher/DragLayer;
    .locals 1

    .prologue
    .line 2856
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    return-object v0
.end method

.method public getExtractedColors()Lnet/oneplus/h2launcher/dynamicui/ExtractedColors;
    .locals 1

    .prologue
    .line 2948
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mExtractedColors:Lnet/oneplus/h2launcher/dynamicui/ExtractedColors;

    return-object v0
.end method

.method protected getFirstRunActivity()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 7018
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 7019
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v0}, Lnet/oneplus/h2launcher/LauncherCallbacks;->getFirstRunActivity()Landroid/content/Intent;

    move-result-object v0

    .line 7021
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFoldersController()Lnet/oneplus/h2launcher/FoldersTransitionController;
    .locals 1

    .prologue
    .line 2868
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mFoldersController:Lnet/oneplus/h2launcher/FoldersTransitionController;

    return-object v0
.end method

.method public getFoldersView()Lnet/oneplus/h2launcher/FoldersContainerView;
    .locals 1

    .prologue
    .line 2864
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mFoldersView:Lnet/oneplus/h2launcher/FoldersContainerView;

    return-object v0
.end method

.method public getHapticFeedbackTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 4393
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mHapticFeedbackTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    .line 4394
    new-instance v0, Lnet/oneplus/h2launcher/Launcher$32;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/Launcher$32;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mHapticFeedbackTouchListener:Landroid/view/View$OnTouchListener;

    .line 4405
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mHapticFeedbackTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getHotseat()Lnet/oneplus/h2launcher/Hotseat;
    .locals 1

    .prologue
    .line 2910
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mHotseat:Lnet/oneplus/h2launcher/Hotseat;

    return-object v0
.end method

.method public getHotseatController()Lnet/oneplus/h2launcher/HotseatController;
    .locals 1

    .prologue
    .line 3303
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mHotseatController:Lnet/oneplus/h2launcher/HotseatController;

    if-nez v0, :cond_0

    .line 3304
    new-instance v0, Lnet/oneplus/h2launcher/HotseatController;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/HotseatController;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mHotseatController:Lnet/oneplus/h2launcher/HotseatController;

    .line 3306
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mHotseatController:Lnet/oneplus/h2launcher/HotseatController;

    return-object v0
.end method

.method public getIconRearrangementHelper()Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;
    .locals 1

    .prologue
    .line 7498
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mIconRearrangementHelper:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    return-object v0
.end method

.method public getIconRearrangementView()Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;
    .locals 1

    .prologue
    .line 2902
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mIconRearrangementView:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;

    return-object v0
.end method

.method public getInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 1109
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method protected getIntroScreen()Landroid/view/View;
    .locals 1

    .prologue
    .line 7070
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 7071
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v0}, Lnet/oneplus/h2launcher/LauncherCallbacks;->getIntroScreen()Landroid/view/View;

    move-result-object v0

    .line 7073
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLauncherCallbacks()Lnet/oneplus/h2launcher/LauncherCallbacks;
    .locals 1

    .prologue
    .line 2852
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    return-object v0
.end method

.method public getModel()Lnet/oneplus/h2launcher/LauncherModel;
    .locals 1

    .prologue
    .line 2935
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mModel:Lnet/oneplus/h2launcher/LauncherModel;

    return-object v0
.end method

.method public getOrCreateQsbBar()Landroid/view/View;
    .locals 14

    .prologue
    const/4 v8, 0x0

    const/4 v13, -0x1

    const/4 v12, 0x0

    .line 5668
    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v9}, Lnet/oneplus/h2launcher/LauncherCallbacks;->providesSearch()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 5669
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v8}, Lnet/oneplus/h2launcher/LauncherCallbacks;->getQsbBar()Landroid/view/View;

    move-result-object v8

    .line 5752
    :goto_0
    return-object v8

    .line 5672
    :cond_0
    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mQsb:Landroid/appwidget/AppWidgetHostView;

    if-nez v9, :cond_7

    .line 5673
    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mSearchProvider:Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v9, :cond_1

    .line 5674
    invoke-virtual {p0, v12}, Lnet/oneplus/h2launcher/Launcher;->bindSearchProviderChanged(Z)V

    goto :goto_0

    .line 5678
    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 5679
    .local v3, "opts":Landroid/os/Bundle;
    const-string v9, "appWidgetCategory"

    const/4 v10, 0x4

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5683
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v9

    .line 5682
    invoke-virtual {p0, v9, v12}, Lnet/oneplus/h2launcher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 5684
    .local v4, "sp":Landroid/content/SharedPreferences;
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v9

    invoke-virtual {v9}, Lnet/oneplus/h2launcher/LauncherAppState;->getAppWidgetHost()Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    move-result-object v5

    .line 5685
    .local v5, "widgetHost":Lnet/oneplus/h2launcher/LauncherAppWidgetHost;
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->startListening()V

    .line 5687
    const-string v9, "qsb_widget_id"

    invoke-interface {v4, v9, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 5688
    .local v6, "widgetId":I
    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mAppWidgetManager:Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    invoke-virtual {v9, v6}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v7

    .line 5689
    .local v7, "widgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mSearchProvider:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v9, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "qsb_widget_provider"

    .line 5690
    invoke-interface {v4, v10, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 5689
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v7, :cond_2

    iget-object v9, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mSearchProvider:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v10, v10, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 5692
    invoke-virtual {v9, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 5694
    :cond_2
    if-le v6, v13, :cond_3

    .line 5695
    invoke-virtual {v5, v6}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 5699
    :cond_3
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v6

    .line 5701
    invoke-static {p0}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    move-result-object v9

    iget-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mSearchProvider:Landroid/appwidget/AppWidgetProviderInfo;

    .line 5702
    invoke-virtual {v9, v6, v10, v3}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 5703
    invoke-virtual {v5, v6}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 5704
    const/4 v6, -0x1

    .line 5707
    :cond_4
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "qsb_widget_id"

    .line 5708
    invoke-interface {v9, v10, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "qsb_widget_provider"

    iget-object v11, p0, Lnet/oneplus/h2launcher/Launcher;->mSearchProvider:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v11, v11, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 5709
    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 5710
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5713
    :cond_5
    invoke-virtual {v5, v6}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->setQsbWidgetId(I)V

    .line 5715
    if-eq v6, v13, :cond_7

    .line 5716
    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mSearchProvider:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v5, p0, v6, v9}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v9

    iput-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mQsb:Landroid/appwidget/AppWidgetHostView;

    .line 5717
    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mQsb:Landroid/appwidget/AppWidgetHostView;

    const v10, 0x7f110016

    invoke-virtual {v9, v10}, Landroid/appwidget/AppWidgetHostView;->setId(I)V

    .line 5718
    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mQsb:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v9, v3}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    .line 5719
    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mQsb:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v9, v12, v12, v12, v12}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    .line 5730
    iget-boolean v9, p0, Lnet/oneplus/h2launcher/Launcher;->mSearchBarVisible:Z

    if-eqz v9, :cond_7

    .line 5731
    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mSearchDropTargetBar:Lnet/oneplus/h2launcher/SearchDropTargetBar;

    iget-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mQsb:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v9, v10}, Lnet/oneplus/h2launcher/SearchDropTargetBar;->addView(Landroid/view/View;)V

    .line 5732
    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mSearchDropTargetBar:Lnet/oneplus/h2launcher/SearchDropTargetBar;

    iget-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mQsb:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v9, v10}, Lnet/oneplus/h2launcher/SearchDropTargetBar;->setQsbSearchBar(Landroid/view/View;)V

    .line 5733
    iget-boolean v9, p0, Lnet/oneplus/h2launcher/Launcher;->mSearchBarTransparent:Z

    if-eqz v9, :cond_7

    .line 5734
    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mQsbOverlay:Landroid/view/View;

    if-nez v9, :cond_6

    .line 5735
    const v9, 0x7f0400bf

    invoke-static {p0, v9, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mQsbOverlay:Landroid/view/View;

    .line 5736
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c004c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 5738
    .local v0, "height":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c004d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 5740
    .local v2, "marginSides":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v13, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 5742
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1, v2, v12, v2, v12}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 5743
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mQsbOverlay:Landroid/view/View;

    invoke-virtual {v8, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5745
    .end local v0    # "height":I
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "marginSides":I
    :cond_6
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mSearchDropTargetBar:Lnet/oneplus/h2launcher/SearchDropTargetBar;

    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mQsbOverlay:Landroid/view/View;

    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/SearchDropTargetBar;->addView(Landroid/view/View;)V

    .line 5746
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mSearchDropTargetBar:Lnet/oneplus/h2launcher/SearchDropTargetBar;

    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mQsbOverlay:Landroid/view/View;

    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/SearchDropTargetBar;->setQsbSearchBarOverlay(Landroid/view/View;)V

    .line 5747
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mQsb:Landroid/appwidget/AppWidgetHostView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/appwidget/AppWidgetHostView;->setAlpha(F)V

    .line 5752
    .end local v3    # "opts":Landroid/os/Bundle;
    .end local v4    # "sp":Landroid/content/SharedPreferences;
    .end local v5    # "widgetHost":Lnet/oneplus/h2launcher/LauncherAppWidgetHost;
    .end local v6    # "widgetId":I
    .end local v7    # "widgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_7
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mQsb:Landroid/appwidget/AppWidgetHostView;

    goto/16 :goto_0
.end method

.method public getOverviewPanel()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 2918
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mOverviewPanel:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getPageIndicator()Landroid/view/View;
    .locals 1

    .prologue
    .line 2914
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mPageIndicators:Landroid/view/View;

    return-object v0
.end method

.method protected getSearchBarBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 6642
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mDeviceProfile:Lnet/oneplus/h2launcher/DeviceProfile;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lnet/oneplus/h2launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/DeviceProfile;->getSearchBarBounds(Z)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getSearchDropTargetBar()Lnet/oneplus/h2launcher/SearchDropTargetBar;
    .locals 1

    .prologue
    .line 2922
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mSearchDropTargetBar:Lnet/oneplus/h2launcher/SearchDropTargetBar;

    return-object v0
.end method

.method protected getSharedPrefs()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 2944
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getState()Lnet/oneplus/h2launcher/Launcher$State;
    .locals 1

    .prologue
    .line 7478
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    return-object v0
.end method

.method public getStats()Lnet/oneplus/h2launcher/Stats;
    .locals 1

    .prologue
    .line 1105
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mStats:Lnet/oneplus/h2launcher/Stats;

    return-object v0
.end method

.method public getSwipeDownEnabled()Z
    .locals 1

    .prologue
    .line 1100
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher;->mSwipeDownEnabled:Z

    return v0
.end method

.method public getSwipeUpEnabled()Z
    .locals 1

    .prologue
    .line 1096
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher;->mSwipeUpEnabled:Z

    return v0
.end method

.method public getTopOffsetForCustomContent()I
    .locals 1

    .prologue
    .line 2032
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public getUtilsPanel()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 2926
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mUtilsPanel:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getViewIdForItem(Lnet/oneplus/h2launcher/ItemInfo;)I
    .locals 4
    .param p1, "info"    # Lnet/oneplus/h2launcher/ItemInfo;

    .prologue
    .line 1139
    iget-wide v2, p1, Lnet/oneplus/h2launcher/ItemInfo;->id:J

    long-to-int v0, v2

    .line 1140
    .local v0, "itemId":I
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mItemIdToViewId:Lnet/oneplus/h2launcher/util/SerializableSparseIntArray;

    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/util/SerializableSparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 1141
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mItemIdToViewId:Lnet/oneplus/h2launcher/util/SerializableSparseIntArray;

    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/util/SerializableSparseIntArray;->get(I)I

    move-result v1

    .line 1145
    :goto_0
    return v1

    .line 1143
    :cond_0
    invoke-static {}, Lnet/oneplus/h2launcher/Launcher;->generateViewId()I

    move-result v1

    .line 1144
    .local v1, "viewId":I
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mItemIdToViewId:Lnet/oneplus/h2launcher/util/SerializableSparseIntArray;

    invoke-virtual {v2, v0, v1}, Lnet/oneplus/h2launcher/util/SerializableSparseIntArray;->put(II)V

    goto :goto_0
.end method

.method public getWallpapersView()Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;
    .locals 1

    .prologue
    .line 2893
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWallpapersView:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    return-object v0
.end method

.method public getWallpapersViewStub()Landroid/view/ViewStub;
    .locals 1

    .prologue
    .line 2889
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWallpapersViewStub:Landroid/view/ViewStub;

    return-object v0
.end method

.method public getWeatherProvider()Lnet/oneplus/h2launcher/WeatherProvider;
    .locals 1

    .prologue
    .line 3288
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWeatherProvider:Lnet/oneplus/h2launcher/WeatherProvider;

    if-nez v0, :cond_0

    .line 3289
    new-instance v0, Lnet/oneplus/h2launcher/WeatherProvider;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/WeatherProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWeatherProvider:Lnet/oneplus/h2launcher/WeatherProvider;

    .line 3292
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWeatherProvider:Lnet/oneplus/h2launcher/WeatherProvider;

    return-object v0
.end method

.method public getWidgetsButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 2480
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWidgetsButton:Landroid/view/View;

    return-object v0
.end method

.method public getWidgetsView()Lnet/oneplus/h2launcher/widget/WidgetsContainerView;
    .locals 1

    .prologue
    .line 2872
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWidgetsView:Lnet/oneplus/h2launcher/widget/WidgetsContainerView;

    return-object v0
.end method

.method public getWorkspace()Lnet/oneplus/h2launcher/Workspace;
    .locals 1

    .prologue
    .line 2906
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    return-object v0
.end method

.method protected hasCustomContentToLeft()Z
    .locals 3

    .prologue
    .line 1007
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mGestureSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "shelf_enabled_saved"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected hasDismissableIntroScreen()Z
    .locals 1

    .prologue
    .line 7063
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v0}, Lnet/oneplus/h2launcher/LauncherCallbacks;->hasDismissableIntroScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasFirstRunActivity()Z
    .locals 1

    .prologue
    .line 7011
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v0}, Lnet/oneplus/h2launcher/LauncherCallbacks;->hasFirstRunActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasRunFirstRunActivity()Z
    .locals 3

    .prologue
    .line 7031
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "launcher.first_run_activity_displayed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected hasSettings()Z
    .locals 2

    .prologue
    .line 2014
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 2015
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v0}, Lnet/oneplus/h2launcher/LauncherCallbacks;->hasSettings()Z

    move-result v0

    .line 2020
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lnet/oneplus/h2launcher/Utilities;->isAtLeastO()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hideFoldersView(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 5446
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mStateTransitionAnimation:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    new-instance v1, Lnet/oneplus/h2launcher/Launcher$41;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/Launcher$41;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    invoke-virtual {v0, p1, v1}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToWorkspace(ZLjava/lang/Runnable;)V

    .line 5453
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isIconRearrangementMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5455
    sget-object v0, Lnet/oneplus/h2launcher/Launcher$State;->WORKSPACE:Lnet/oneplus/h2launcher/Launcher$State;

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    .line 5457
    :cond_0
    return-void
.end method

.method hideWorkspaceSearchAndHotseat()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 7167
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Workspace;->setAlpha(F)V

    .line 7168
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mHotseatController:Lnet/oneplus/h2launcher/HotseatController;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/HotseatController;->setAlpha(F)V

    .line 7169
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mPageIndicators:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mPageIndicators:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 7170
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mSearchDropTargetBar:Lnet/oneplus/h2launcher/SearchDropTargetBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mSearchDropTargetBar:Lnet/oneplus/h2launcher/SearchDropTargetBar;

    sget-object v1, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;->INVISIBLE:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/SearchDropTargetBar;->animateToState(Lnet/oneplus/h2launcher/SearchDropTargetBar$State;I)V

    .line 7172
    :cond_2
    return-void
.end method

.method public inflateGlobalSearView()Landroid/view/View;
    .locals 1

    .prologue
    .line 2452
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mGlobalSearchViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 2453
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mGlobalSearchViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 2455
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inflateViewStubs()V
    .locals 2

    .prologue
    .line 2440
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getCustomizationsView()Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getCustomizationsViewStub()Landroid/view/ViewStub;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getCustomizationsViewStub()Landroid/view/ViewStub;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2442
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getCustomizationsViewStub()Landroid/view/ViewStub;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    .line 2441
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/Launcher;->setCustomizationsView(Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;)V

    .line 2445
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getWallpapersView()Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    move-result-object v0

    .line 2446
    .local v0, "wallpapersView":Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getWallpapersViewStub()Landroid/view/ViewStub;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getWallpapersViewStub()Landroid/view/ViewStub;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2447
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getWallpapersViewStub()Landroid/view/ViewStub;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/Launcher;->setWallpapersView(Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;)V

    .line 2449
    :cond_1
    return-void
.end method

.method protected invalidateHasCustomContentToLeft()V
    .locals 1

    .prologue
    .line 1073
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->getScreenOrder()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1085
    :cond_0
    :goto_0
    return-void

    .line 1078
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->hasCustomContent()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->hasCustomContentToLeft()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1080
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->createCustomContentContainer()V

    .line 1081
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->populateCustomContentContainer()V

    goto :goto_0

    .line 1082
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->hasCustomContentToLeft()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1083
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->removeCustomContentPage()V

    goto :goto_0
.end method

.method public isAllAppsButtonRank(I)Z
    .locals 1
    .param p1, "rank"    # I

    .prologue
    .line 6615
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mHotseatController:Lnet/oneplus/h2launcher/HotseatController;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/HotseatController;->isAllAppsButtonRank(I)Z

    move-result v0

    return v0
.end method

.method public isAllAppsLoaded()Z
    .locals 1

    .prologue
    .line 7482
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher;->mIsAllAppsLoaded:Z

    return v0
.end method

.method public isAllAppsVisible()Z
    .locals 1

    .prologue
    .line 5174
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isAppsViewVisible()Z

    move-result v0

    return v0
.end method

.method public isAppsViewVisible()Z
    .locals 2

    .prologue
    .line 5178
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v1, Lnet/oneplus/h2launcher/Launcher$State;->APPS:Lnet/oneplus/h2launcher/Launcher$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mOnResumeState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v1, Lnet/oneplus/h2launcher/Launcher$State;->APPS:Lnet/oneplus/h2launcher/Launcher$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCustomizationsViewVisible()Z
    .locals 2

    .prologue
    .line 5190
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v1, Lnet/oneplus/h2launcher/Launcher$State;->CUSTOMIZATIONS:Lnet/oneplus/h2launcher/Launcher$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mOnResumeState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v1, Lnet/oneplus/h2launcher/Launcher$State;->CUSTOMIZATIONS:Lnet/oneplus/h2launcher/Launcher$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDraggingEnabled()Z
    .locals 1

    .prologue
    .line 1115
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFoldersViewVisible()Z
    .locals 2

    .prologue
    .line 5182
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v1, Lnet/oneplus/h2launcher/Launcher$State;->FOLDER:Lnet/oneplus/h2launcher/Launcher$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHotseatLayout(Landroid/view/View;)Z
    .locals 1
    .param p1, "layout"    # Landroid/view/View;

    .prologue
    .line 5151
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mHotseatController:Lnet/oneplus/h2launcher/HotseatController;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/HotseatController;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public isIconPackNeedChangeToDefault()Z
    .locals 1

    .prologue
    .line 1912
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher;->mIconPackNeedChangeToDefault:Z

    return v0
.end method

.method public isIconRearrangementMode()Z
    .locals 1

    .prologue
    .line 7502
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->isIconRearrangementMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIconRearrangementViewVisible()Z
    .locals 2

    .prologue
    .line 5202
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v1, Lnet/oneplus/h2launcher/Launcher$State;->ICON_REARRANGEMENT:Lnet/oneplus/h2launcher/Launcher$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mOnResumeState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v1, Lnet/oneplus/h2launcher/Launcher$State;->ICON_REARRANGEMENT:Lnet/oneplus/h2launcher/Launcher$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInSearchMode()Z
    .locals 2

    .prologue
    .line 7470
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v1, Lnet/oneplus/h2launcher/Launcher$State;->SEARCH:Lnet/oneplus/h2launcher/Launcher$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInWorkspaceMode()Z
    .locals 2

    .prologue
    .line 7474
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v1, Lnet/oneplus/h2launcher/Launcher$State;->WORKSPACE:Lnet/oneplus/h2launcher/Launcher$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isLauncherPreinstalled()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 6985
    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v4, :cond_1

    .line 6986
    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v3}, Lnet/oneplus/h2launcher/LauncherCallbacks;->isLauncherPreinstalled()Z

    move-result v3

    .line 6994
    :cond_0
    :goto_0
    return v3

    .line 6988
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 6990
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 6991
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 6992
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 6993
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public isLoaderTaskFinished()Z
    .locals 1

    .prologue
    .line 7486
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher;->mIsLoaderTaskFinished:Z

    return v0
.end method

.method public isNeedUpdateContactDb()Z
    .locals 1

    .prologue
    .line 7490
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher;->mNeedUpdateContactDb:Z

    return v0
.end method

.method public isOnCustomContent()Z
    .locals 1

    .prologue
    .line 3437
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->isOnOrMovingToCustomContent()Z

    move-result v0

    return v0
.end method

.method public isShrunkenAllAppsVisible()Z
    .locals 2

    .prologue
    .line 5194
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v1, Lnet/oneplus/h2launcher/Launcher$State;->SHRUNKEN_ALLAPPS:Lnet/oneplus/h2launcher/Launcher$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mOnResumeState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v1, Lnet/oneplus/h2launcher/Launcher$State;->SHRUNKEN_ALLAPPS:Lnet/oneplus/h2launcher/Launcher$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isWallpaperChangedReceiverRegistered()Z
    .locals 1

    .prologue
    .line 6611
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWallpaperPreviewUpdating()Z
    .locals 1

    .prologue
    .line 4203
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mScreenshotTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lnet/oneplus/h2launcher/Utilities;->isTaskUnfinished(Landroid/os/AsyncTask;)Z

    move-result v0

    return v0
.end method

.method public isWallpapersViewVisible()Z
    .locals 2

    .prologue
    .line 5198
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v1, Lnet/oneplus/h2launcher/Launcher$State;->WALLPAPER:Lnet/oneplus/h2launcher/Launcher$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mOnResumeState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v1, Lnet/oneplus/h2launcher/Launcher$State;->WALLPAPER:Lnet/oneplus/h2launcher/Launcher$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWidgetsViewVisible()Z
    .locals 2

    .prologue
    .line 5186
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v1, Lnet/oneplus/h2launcher/Launcher$State;->WIDGETS:Lnet/oneplus/h2launcher/Launcher$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mOnResumeState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v1, Lnet/oneplus/h2launcher/Launcher$State;->WIDGETS:Lnet/oneplus/h2launcher/Launcher$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWorkspaceLoading()Z
    .locals 1

    .prologue
    .line 3482
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspaceLoading:Z

    return v0
.end method

.method public isWorkspaceLocked()Z
    .locals 1

    .prologue
    .line 3478
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWaitingForResult:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method lockAllApps()V
    .locals 0

    .prologue
    .line 5655
    return-void
.end method

.method public lockScreenOrientation()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 6959
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher;->mRotationEnabled:Z

    if-eqz v0, :cond_0

    .line 6960
    sget-boolean v0, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_JB_MR2:Z

    if-eqz v0, :cond_1

    .line 6961
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Launcher;->setRequestedOrientation(I)V

    .line 6968
    :cond_0
    :goto_0
    return-void

    .line 6964
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 6965
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 6964
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/Launcher;->mapConfigurationOriActivityInfoOri(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Launcher;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method protected moveToCustomContentScreen(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 3551
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->closeFolder()V

    .line 3552
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/Workspace;->moveToCustomContentScreen(Z)V

    .line 3553
    return-void
.end method

.method protected moveWorkspaceToDefaultScreen()V
    .locals 2

    .prologue
    .line 7226
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Workspace;->moveToDefaultScreen(Z)V

    .line 7227
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1433
    invoke-super {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1435
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/Launcher;->handleActivityResult(IILandroid/content/Intent;)V

    .line 1436
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 1437
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lnet/oneplus/h2launcher/LauncherCallbacks;->onActivityResult(IILandroid/content/Intent;)V

    .line 1439
    :cond_0
    return-void
.end method

.method public onAppWidgetHostReset()V
    .locals 2

    .prologue
    .line 3828
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherAppState;->getAppWidgetHost()Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    move-result-object v0

    .line 3829
    .local v0, "widgetHost":Lnet/oneplus/h2launcher/LauncherAppWidgetHost;
    if-eqz v0, :cond_0

    .line 3830
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->startListening()V

    .line 3834
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/Launcher;->bindSearchProviderChanged(Z)V

    .line 3835
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2669
    invoke-super {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->onAttachedToWindow()V

    .line 2671
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2672
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2673
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2674
    const-string v1, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2675
    const-string v1, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2681
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lnet/oneplus/h2launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2682
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;->initializeDrawListener(Landroid/view/View;)V

    .line 2683
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->setupTransparentSystemBarsForLollipop()V

    .line 2684
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Launcher;->mAttached:Z

    .line 2685
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Launcher;->mVisible:Z

    .line 2686
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3747
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v1}, Lnet/oneplus/h2launcher/LauncherCallbacks;->handleBackPressed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3791
    :cond_0
    :goto_0
    return-void

    .line 3751
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mDragController:Lnet/oneplus/h2launcher/DragController;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/DragController;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3752
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mDragController:Lnet/oneplus/h2launcher/DragController;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/DragController;->cancelDrag()V

    goto :goto_0

    .line 3756
    :cond_2
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isAppsViewVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3757
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/Launcher;->showWorkspace(Z)V

    goto :goto_0

    .line 3758
    :cond_3
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isWidgetsViewVisible()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isCustomizationsViewVisible()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3759
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isShrunkenAllAppsVisible()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isWallpapersViewVisible()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3760
    :cond_4
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mClings:Lnet/oneplus/h2launcher/LauncherClings;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mClings:Lnet/oneplus/h2launcher/LauncherClings;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherClings;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3761
    :cond_5
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/Launcher;->showOverviewMode(Z)V

    goto :goto_0

    .line 3763
    :cond_6
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->isInOverviewMode()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3764
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/Launcher;->showWorkspace(Z)V

    .line 3765
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->bindSearchProviderChangedOnLeaveOverviewMode()V

    .line 3766
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/Launcher;->executePendingAction(Z)V

    goto :goto_0

    .line 3767
    :cond_7
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->isOnCustomContentScreen()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mClings:Lnet/oneplus/h2launcher/LauncherClings;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mClings:Lnet/oneplus/h2launcher/LauncherClings;

    .line 3768
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherClings;->isVisible()Z

    move-result v1

    if-nez v1, :cond_b

    .line 3769
    :cond_8
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isDrawerOpen()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3770
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->closeDrawer()V

    goto :goto_0

    .line 3771
    :cond_9
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isEditingQuickPageItem()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3772
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->leaveQuickPageEditMode()V

    goto :goto_0

    .line 3774
    :cond_a
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/Workspace;->moveToAlternateScreen(Z)V

    goto/16 :goto_0

    .line 3776
    :cond_b
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->getOpenFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 3777
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->getOpenFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v0

    .line 3778
    .local v0, "openFolder":Lnet/oneplus/h2launcher/Folder;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Folder;->isEditingName()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3779
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Folder;->dismissEditingName()V

    goto/16 :goto_0

    .line 3781
    :cond_c
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->closeFolder()V

    goto/16 :goto_0

    .line 3783
    .end local v0    # "openFolder":Lnet/oneplus/h2launcher/Folder;
    :cond_d
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isIconRearrangementViewVisible()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3784
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/Launcher;->showOverviewMode(Z)V

    goto/16 :goto_0

    .line 3786
    :cond_e
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->exitWidgetResizeMode()V

    .line 3789
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->showOutlinesTemporarily()V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3843
    const-string v5, "Launcher"

    const-string v6, "onClick"

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3847
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-nez v5, :cond_1

    .line 3900
    .end local p1    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 3851
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Workspace;->isFinishedSwitchingState()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3855
    instance-of v5, p1, Lnet/oneplus/h2launcher/Workspace;

    if-eqz v5, :cond_3

    .line 3856
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Workspace;->isInOverviewMode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3857
    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/Launcher;->showWorkspace(Z)V

    .line 3858
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->bindSearchProviderChangedOnLeaveOverviewMode()V

    .line 3859
    invoke-direct {p0, v4}, Lnet/oneplus/h2launcher/Launcher;->executePendingAction(Z)V

    .line 3860
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->invalidateHasCustomContentToLeft()V

    goto :goto_0

    .line 3861
    :cond_2
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isIconRearrangementMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3862
    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/Launcher;->showOverviewMode(Z)V

    goto :goto_0

    .line 3867
    :cond_3
    instance-of v5, p1, Lnet/oneplus/h2launcher/CellLayout;

    if-eqz v5, :cond_4

    .line 3868
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Workspace;->isInOverviewMode()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v0, p1

    .line 3869
    check-cast v0, Lnet/oneplus/h2launcher/CellLayout;

    .line 3870
    .local v0, "cellLayout":Lnet/oneplus/h2launcher/CellLayout;
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v5, v0}, Lnet/oneplus/h2launcher/Workspace;->getIdForScreen(Lnet/oneplus/h2launcher/CellLayout;)J

    move-result-wide v6

    const-wide/16 v8, -0xc9

    cmp-long v5, v6, v8

    if-nez v5, :cond_5

    move v1, v3

    .line 3877
    .local v1, "hasOverviewEmptyScreen":Z
    :goto_1
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v5, p1}, Lnet/oneplus/h2launcher/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {p0, v5, v3, v1}, Lnet/oneplus/h2launcher/Launcher;->showWorkspace(IZZ)V

    .line 3878
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->bindSearchProviderChangedOnLeaveOverviewMode()V

    .line 3879
    invoke-direct {p0, v4}, Lnet/oneplus/h2launcher/Launcher;->executePendingAction(Z)V

    .line 3880
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->invalidateHasCustomContentToLeft()V

    .line 3884
    .end local v0    # "cellLayout":Lnet/oneplus/h2launcher/CellLayout;
    .end local v1    # "hasOverviewEmptyScreen":Z
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 3885
    .local v2, "tag":Ljava/lang/Object;
    instance-of v3, v2, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v3, :cond_6

    .line 3886
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/Launcher;->onClickAppShortcut(Landroid/view/View;)V

    goto :goto_0

    .end local v2    # "tag":Ljava/lang/Object;
    .restart local v0    # "cellLayout":Lnet/oneplus/h2launcher/CellLayout;
    :cond_5
    move v1, v4

    .line 3870
    goto :goto_1

    .line 3887
    .end local v0    # "cellLayout":Lnet/oneplus/h2launcher/CellLayout;
    .restart local v2    # "tag":Ljava/lang/Object;
    :cond_6
    instance-of v3, v2, Lnet/oneplus/h2launcher/FolderInfo;

    if-eqz v3, :cond_7

    .line 3888
    instance-of v3, p1, Lnet/oneplus/h2launcher/FolderIcon;

    if-eqz v3, :cond_0

    .line 3889
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/Launcher;->onClickFolderIcon(Landroid/view/View;)V

    goto :goto_0

    .line 3891
    :cond_7
    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher;->mAllAppsButton:Landroid/view/View;

    if-ne p1, v3, :cond_8

    .line 3892
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/Launcher;->onClickAllAppsButton(Landroid/view/View;)V

    goto :goto_0

    .line 3893
    :cond_8
    instance-of v3, v2, Lnet/oneplus/h2launcher/AppInfo;

    if-eqz v3, :cond_9

    .line 3894
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/Launcher;->startAppShortcutOrInfoActivity(Landroid/view/View;)V

    goto/16 :goto_0

    .line 3895
    :cond_9
    instance-of v3, v2, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    if-eqz v3, :cond_0

    .line 3896
    instance-of v3, p1, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;

    if-eqz v3, :cond_0

    .line 3897
    check-cast p1, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/Launcher;->onClickPendingWidget(Lnet/oneplus/h2launcher/PendingAppWidgetHostView;)V

    goto/16 :goto_0
.end method

.method protected onClickAddWidgetButton(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 4167
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher;->mIsSafeModeEnabled:Z

    if-eqz v0, :cond_1

    .line 4168
    const v0, 0x7f0b00af

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4175
    :cond_0
    :goto_0
    invoke-direct {p0, v2}, Lnet/oneplus/h2launcher/Launcher;->executePendingAction(Z)V

    .line 4176
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mUtilsButtonClicked:[Z

    .line 4177
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->updateUtilsButtonVisibility()V

    .line 4178
    return-void

    .line 4170
    :cond_1
    invoke-virtual {p0, v2, v2}, Lnet/oneplus/h2launcher/Launcher;->showWidgetsView(ZZ)V

    .line 4171
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 4172
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v0, p1}, Lnet/oneplus/h2launcher/LauncherCallbacks;->onClickAddWidgetButton(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onClickAllAppsButton(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3957
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isAppsViewVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3958
    invoke-virtual {p0, v2, v1, v2, v1}, Lnet/oneplus/h2launcher/Launcher;->showAppsView(ZZZZ)V

    .line 3961
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 3962
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v0, p1}, Lnet/oneplus/h2launcher/LauncherCallbacks;->onClickAllAppsButton(Landroid/view/View;)V

    .line 3964
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAllAppsViewController:Lnet/oneplus/h2launcher/AllAppsViewController;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/AllAppsViewController;->setFirstInitialized(Z)V

    .line 3966
    :cond_1
    return-void
.end method

.method protected onClickAppShortcut(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 4001
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 4002
    .local v4, "tag":Ljava/lang/Object;
    instance-of v5, v4, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-nez v5, :cond_0

    .line 4003
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Input must be a Shortcut"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4006
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isIconRearrangementMode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4007
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mIconRearrangementHelper:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-virtual {v5, p1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->addShortcut(Landroid/view/View;)V

    .line 4062
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v2, v4

    .line 4011
    check-cast v2, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 4013
    .local v2, "shortcut":Lnet/oneplus/h2launcher/ShortcutInfo;
    iget v5, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->isDisabled:I

    if-eqz v5, :cond_3

    .line 4014
    iget v5, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->isDisabled:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_3

    iget v5, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->isDisabled:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_4

    .line 4027
    :cond_3
    iget-object v1, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 4030
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 4031
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 4033
    .local v3, "shortcutClass":Ljava/lang/String;
    const-class v5, Lnet/oneplus/h2launcher/MemoryDumpActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4034
    invoke-static {p0}, Lnet/oneplus/h2launcher/MemoryDumpActivity;->startDump(Landroid/content/Context;)V

    goto :goto_0

    .line 4018
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "shortcutClass":Ljava/lang/String;
    :cond_4
    const v0, 0x7f0b002e

    .line 4019
    .local v0, "error":I
    iget v5, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->isDisabled:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5

    .line 4020
    const v0, 0x7f0b00ae

    .line 4022
    :cond_5
    const/4 v5, 0x0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 4036
    .end local v0    # "error":I
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v3    # "shortcutClass":Ljava/lang/String;
    :cond_6
    const-class v5, Lnet/oneplus/h2launcher/ToggleWeightWatcher;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 4037
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->toggleShowWeightWatcher()V

    goto :goto_0

    .line 4043
    .end local v3    # "shortcutClass":Ljava/lang/String;
    :cond_7
    instance-of v5, p1, Lnet/oneplus/h2launcher/BubbleTextView;

    if-eqz v5, :cond_8

    .line 4044
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/ShortcutInfo;->isPromise()Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x4

    .line 4045
    invoke-virtual {v2, v5}, Lnet/oneplus/h2launcher/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v5

    if-nez v5, :cond_8

    .line 4047
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lnet/oneplus/h2launcher/Launcher$30;

    invoke-direct {v6, p0, p1}, Lnet/oneplus/h2launcher/Launcher$30;-><init>(Lnet/oneplus/h2launcher/Launcher;Landroid/view/View;)V

    .line 4046
    invoke-direct {p0, v5, v6}, Lnet/oneplus/h2launcher/Launcher;->showBrokenAppInstallDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 4057
    :cond_8
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/Launcher;->startAppShortcutOrInfoActivity(Landroid/view/View;)V

    .line 4059
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v5, :cond_1

    .line 4060
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v5, p1}, Lnet/oneplus/h2launcher/LauncherCallbacks;->onClickAppShortcut(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method protected onClickClearButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4271
    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/Launcher;->executePendingAction(Z)V

    .line 4272
    const/4 v0, 0x2

    iput v0, p0, Lnet/oneplus/h2launcher/Launcher;->mNextAction:I

    .line 4273
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->getNearestLayout()Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mCurrentLayout:Lnet/oneplus/h2launcher/CellLayout;

    .line 4274
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mCurrentLayout:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 4276
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mUtilsButtonClicked:[Z

    aput-boolean v1, v0, v1

    .line 4277
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->updateUtilsButtonVisibility()V

    .line 4278
    return-void
.end method

.method protected onClickCustomizationButton(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 4218
    const-string v0, "Launcher"

    const-string v1, "onClickCustomizationButton"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4219
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 4220
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v0, p1}, Lnet/oneplus/h2launcher/LauncherCallbacks;->onClickCustomizationButton(Landroid/view/View;)V

    .line 4224
    :goto_0
    invoke-direct {p0, v2}, Lnet/oneplus/h2launcher/Launcher;->executePendingAction(Z)V

    .line 4225
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mUtilsButtonClicked:[Z

    .line 4226
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->updateUtilsButtonVisibility()V

    .line 4227
    return-void

    .line 4222
    :cond_0
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/Launcher;->showCustomizationsView(Z)V

    goto :goto_0
.end method

.method protected onClickFolderIcon(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 4114
    instance-of v4, p1, Lnet/oneplus/h2launcher/FolderIcon;

    if-nez v4, :cond_0

    .line 4115
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Input must be a FolderIcon"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4117
    :cond_0
    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Workspace;->isTransiting()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4118
    const-string v4, "Launcher"

    const-string v5, "onClickFolder# workspace layout transition in progress, ignore click"

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4159
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    .line 4123
    check-cast v0, Lnet/oneplus/h2launcher/FolderIcon;

    .line 4124
    .local v0, "folderIcon":Lnet/oneplus/h2launcher/FolderIcon;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FolderIcon;->getFolderInfo()Lnet/oneplus/h2launcher/FolderInfo;

    move-result-object v2

    .line 4125
    .local v2, "info":Lnet/oneplus/h2launcher/FolderInfo;
    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v4, v2}, Lnet/oneplus/h2launcher/Workspace;->getFolderForTag(Ljava/lang/Object;)Lnet/oneplus/h2launcher/Folder;

    move-result-object v3

    .line 4129
    .local v3, "openFolder":Lnet/oneplus/h2launcher/Folder;
    iget-boolean v4, v2, Lnet/oneplus/h2launcher/FolderInfo;->opened:Z

    if-eqz v4, :cond_3

    if-nez v3, :cond_3

    .line 4130
    const-string v4, "Launcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Folder info marked as open, but associated folder is not open. Screen: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v2, Lnet/oneplus/h2launcher/FolderInfo;->screenId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lnet/oneplus/h2launcher/FolderInfo;->cellX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lnet/oneplus/h2launcher/FolderInfo;->cellY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4132
    const/4 v4, 0x0

    iput-boolean v4, v2, Lnet/oneplus/h2launcher/FolderInfo;->opened:Z

    .line 4135
    :cond_3
    iget-boolean v4, v2, Lnet/oneplus/h2launcher/FolderInfo;->opened:Z

    if-nez v4, :cond_5

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FolderIcon;->getFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v4

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Folder;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_5

    .line 4137
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->closeFolder()V

    .line 4139
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Launcher;->openFolder(Lnet/oneplus/h2launcher/FolderIcon;)V

    .line 4156
    :cond_4
    :goto_1
    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v4, :cond_1

    .line 4157
    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v4, p1}, Lnet/oneplus/h2launcher/LauncherCallbacks;->onClickFolderIcon(Landroid/view/View;)V

    goto :goto_0

    .line 4143
    :cond_5
    if-eqz v3, :cond_4

    .line 4144
    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v4, v3}, Lnet/oneplus/h2launcher/Workspace;->getPageForView(Landroid/view/View;)I

    move-result v1

    .line 4146
    .local v1, "folderScreen":I
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lnet/oneplus/h2launcher/Launcher;->closeFolder(Lnet/oneplus/h2launcher/Folder;Z)V

    .line 4147
    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Workspace;->getCurrentPage()I

    move-result v4

    if-eq v1, v4, :cond_4

    .line 4149
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->closeFolder()V

    .line 4151
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Launcher;->openFolder(Lnet/oneplus/h2launcher/FolderIcon;)V

    goto :goto_1
.end method

.method protected onClickIconRearrangementButton()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 4293
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Launcher;->showIconRearrangementView(Z)V

    .line 4295
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/Launcher;->executePendingAction(Z)V

    .line 4296
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mUtilsButtonClicked:[Z

    .line 4297
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->updateUtilsButtonVisibility()V

    .line 4298
    return-void
.end method

.method public onClickPendingWidget(Lnet/oneplus/h2launcher/PendingAppWidgetHostView;)V
    .locals 9
    .param p1, "v"    # Lnet/oneplus/h2launcher/PendingAppWidgetHostView;

    .prologue
    .line 3911
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher;->mIsSafeModeEnabled:Z

    if-eqz v0, :cond_1

    .line 3912
    const v0, 0x7f0b00af

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3947
    :cond_0
    :goto_0
    return-void

    .line 3915
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isIconRearrangementMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3919
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    .line 3920
    .local v6, "info":Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getAppWidgetHost()Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    move-result-object v4

    .line 3921
    .local v4, "widgetHost":Lnet/oneplus/h2launcher/LauncherAppWidgetHost;
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->isReadyForClickSetup()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3922
    iget v8, v6, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->appWidgetId:I

    .line 3923
    .local v8, "widgetId":I
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAppWidgetManager:Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    invoke-virtual {v0, v8}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 3924
    .local v1, "appWidgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v1, :cond_0

    .line 3925
    invoke-static {p0, v1}, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddWidgetInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    .line 3927
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    invoke-virtual {v0, v6}, Lnet/oneplus/h2launcher/ItemInfo;->copyFrom(Lnet/oneplus/h2launcher/ItemInfo;)V

    .line 3928
    iput v8, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddWidgetId:I

    .line 3930
    invoke-static {p0}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    move-result-object v0

    iget v2, v6, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->appWidgetId:I

    const/16 v5, 0xc

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->startConfigActivity(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/app/Activity;Landroid/appwidget/AppWidgetHost;I)V

    goto :goto_0

    .line 3933
    .end local v1    # "appWidgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v8    # "widgetId":I
    :cond_2
    iget v0, v6, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->installProgress:I

    if-gez v0, :cond_3

    .line 3935
    iget-object v0, v6, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 3936
    .local v7, "packageName":Ljava/lang/String;
    new-instance v0, Lnet/oneplus/h2launcher/Launcher$28;

    invoke-direct {v0, p0, p1, v7, v6}, Lnet/oneplus/h2launcher/Launcher$28;-><init>(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/PendingAppWidgetHostView;Ljava/lang/String;Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;)V

    invoke-direct {p0, v7, v0}, Lnet/oneplus/h2launcher/Launcher;->showBrokenAppInstallDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 3944
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_3
    iget-object v0, v6, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 3945
    .restart local v7    # "packageName":Ljava/lang/String;
    invoke-static {v7}, Lnet/oneplus/h2launcher/LauncherModel;->getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v6}, Lnet/oneplus/h2launcher/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onClickSettingsButton(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 4235
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v1, :cond_0

    .line 4236
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v1, p1}, Lnet/oneplus/h2launcher/LauncherCallbacks;->onClickSettingsButton(Landroid/view/View;)V

    .line 4242
    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/Launcher;->executePendingAction(Z)V

    .line 4243
    const/4 v1, 0x2

    new-array v1, v1, [Z

    iput-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mUtilsButtonClicked:[Z

    .line 4244
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->updateUtilsButtonVisibility()V

    .line 4245
    return-void

    .line 4238
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4239
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lnet/oneplus/h2launcher/CustomizationSettingsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4240
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onClickSortButton()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4253
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->getNearestLayout()Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CellLayout;->hasSortableChild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4254
    const-string v0, "Launcher"

    const-string v1, "skip sort since there is no sortable child"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4263
    :goto_0
    return-void

    .line 4257
    :cond_0
    iput v2, p0, Lnet/oneplus/h2launcher/Launcher;->mNextAction:I

    .line 4258
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->getNearestLayout()Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mCurrentLayout:Lnet/oneplus/h2launcher/CellLayout;

    .line 4259
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mCurrentLayout:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CellLayout;->sortAllChildrens()V

    .line 4261
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mUtilsButtonClicked:[Z

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 4262
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->updateUtilsButtonVisibility()V

    goto :goto_0
.end method

.method protected onClickUndoButton()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 4286
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher;->mUndoAction:Z

    .line 4287
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/Launcher;->executePendingAction(Z)V

    .line 4288
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->updateUtilsButtonVisibility()V

    .line 4289
    return-void
.end method

.method protected onClickWallpaperPicker(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 4185
    const-string v0, "Launcher"

    const-string v1, "onClickWallpaperPicker"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4187
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 4188
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v0, p1}, Lnet/oneplus/h2launcher/LauncherCallbacks;->onClickWallpaperPicker(Landroid/view/View;)V

    .line 4193
    :goto_0
    invoke-direct {p0, v2}, Lnet/oneplus/h2launcher/Launcher;->executePendingAction(Z)V

    .line 4194
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mUtilsButtonClicked:[Z

    .line 4195
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->updateUtilsButtonVisibility()V

    .line 4196
    return-void

    .line 4190
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->updateWallpaperPreview()V

    .line 4191
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/Launcher;->showWallpapersView(Z)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2964
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2969
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->reinflateWidgetsIfNecessary()V

    .line 2970
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Launcher;->bindSearchProviderChanged(Z)V

    .line 2971
    invoke-static {p0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->isQuickPageEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isQuickPageInflated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2972
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->resetWidgetPicker()V

    .line 2973
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getQuickPageView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 2976
    :cond_0
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2977
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 579
    const-string v9, "Launcher"

    const-string v10, "onCreate"

    invoke-static {v9, v10}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v9, :cond_0

    .line 596
    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v9}, Lnet/oneplus/h2launcher/LauncherCallbacks;->preOnCreate()V

    .line 599
    :cond_0
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 601
    invoke-static {p0}, Lnet/oneplus/h2launcher/oos/StyleManager;->init(Landroid/content/Context;)V

    .line 603
    invoke-static {p0}, Lnet/oneplus/h2launcher/Utilities;->isDarkModeTheme(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_4

    const v9, 0x7f0a0104

    :goto_0
    invoke-virtual {p0, v9}, Lnet/oneplus/h2launcher/Launcher;->setTheme(I)V

    .line 605
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lnet/oneplus/h2launcher/LauncherAppState;->setApplicationContext(Landroid/content/Context;)V

    .line 606
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    .line 609
    .local v0, "app":Lnet/oneplus/h2launcher/LauncherAppState;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lnet/oneplus/h2launcher/migrate/MigrationManager;->migrateWallpaperPreference(Landroid/content/Context;)V

    .line 611
    const/4 v9, 0x0

    iput-boolean v9, p0, Lnet/oneplus/h2launcher/Launcher;->mWillResetWallpaper:Z

    .line 612
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->isSwitchingLayout()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 613
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v9

    invoke-virtual {v9}, Lnet/oneplus/h2launcher/oos/StyleManager;->reloadStyleConfigurationInfo()V

    .line 614
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v9

    invoke-virtual {v9}, Lnet/oneplus/h2launcher/oos/StyleManager;->reloadStyleResourceInfo()V

    .line 615
    new-instance v9, Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    .line 616
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lnet/oneplus/h2launcher/InvariantDeviceProfile;-><init>(Landroid/content/Context;)V

    .line 615
    invoke-virtual {v0, v9}, Lnet/oneplus/h2launcher/LauncherAppState;->setInvariantDeviceProfile(Lnet/oneplus/h2launcher/InvariantDeviceProfile;)V

    .line 617
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lnet/oneplus/h2launcher/Launcher;->showSwitchingLoadingView(Z)V

    .line 620
    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x2

    const-wide/16 v12, 0xbb8

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 623
    const-string v9, "Launcher"

    const-string v10, "Switching layout, reset wallpaper to default"

    invoke-static {v9, v10}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->setWallpaperSetupCompleted(Landroid/content/Context;Z)V

    .line 626
    new-instance v8, Landroid/content/ComponentName;

    const-class v9, Lnet/oneplus/h2launcher/wallpaper/SetupWallpaperService;

    invoke-direct {v8, p0, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 628
    .local v8, "serviceName":Landroid/content/ComponentName;
    invoke-static {v8}, Lnet/oneplus/h2launcher/JobBuilderWrapper;->create(Landroid/content/ComponentName;)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 630
    .local v1, "builder":Landroid/app/job/JobInfo$Builder;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 631
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v9, "switching_layout"

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 632
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setTransientExtras(Landroid/os/Bundle;)Landroid/app/job/JobInfo$Builder;

    .line 635
    const-string v9, "jobscheduler"

    invoke-virtual {p0, v9}, Lnet/oneplus/h2launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/job/JobScheduler;

    .line 636
    .local v6, "js":Landroid/app/job/JobScheduler;
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 638
    const/4 v9, 0x1

    iput-boolean v9, p0, Lnet/oneplus/h2launcher/Launcher;->mWillResetWallpaper:Z

    .line 641
    .end local v1    # "builder":Landroid/app/job/JobInfo$Builder;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v6    # "js":Landroid/app/job/JobScheduler;
    .end local v8    # "serviceName":Landroid/content/ComponentName;
    :cond_1
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v9

    invoke-virtual {v9}, Lnet/oneplus/h2launcher/oos/StyleManager;->showDynamicIcon()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 642
    invoke-static {}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->getInstance()Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;

    move-result-object v9

    invoke-virtual {v9, p0}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->init(Landroid/content/Context;)V

    .line 643
    invoke-static {p0}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconUtil;->init(Landroid/content/Context;)V

    .line 646
    :cond_2
    const-string v10, "Launcher"

    const-string v11, "savedInstanceState is null? %b"

    const/4 v9, 0x1

    new-array v12, v9, [Ljava/lang/Object;

    const/4 v13, 0x0

    if-nez p1, :cond_5

    const/4 v9, 0x1

    :goto_1
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v12, v13

    invoke-static {v10, v11, v12}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 647
    if-nez p1, :cond_3

    .line 648
    invoke-static {}, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->getInstance()Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;

    move-result-object v9

    invoke-virtual {v9, p0}, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->onLauncherCreate(Landroid/content/Context;)V

    .line 651
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->restoreKeyguardClockStyleForUser()V

    .line 657
    :cond_3
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getInvariantDeviceProfile()Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-result-object v9

    iget-object v9, v9, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->portraitProfile:Lnet/oneplus/h2launcher/DeviceProfile;

    iput-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mDeviceProfile:Lnet/oneplus/h2launcher/DeviceProfile;

    .line 659
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lnet/oneplus/h2launcher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    iput-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 662
    invoke-static {p0}, Lnet/oneplus/h2launcher/Utilities;->isValidUser(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 663
    const-string v9, "Launcher"

    const-string v10, "myUserId is not running. Kill myself."

    invoke-static {v9, v10}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-static {v9}, Landroid/os/Process;->killProcess(I)V

    .line 857
    :goto_2
    return-void

    .line 603
    .end local v0    # "app":Lnet/oneplus/h2launcher/LauncherAppState;
    :cond_4
    const v9, 0x7f0a0103

    goto/16 :goto_0

    .line 646
    .restart local v0    # "app":Lnet/oneplus/h2launcher/LauncherAppState;
    :cond_5
    const/4 v9, 0x0

    goto :goto_1

    .line 668
    :cond_6
    new-instance v9, Lnet/oneplus/h2launcher/Launcher$3;

    invoke-direct {v9, p0}, Lnet/oneplus/h2launcher/Launcher$3;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    iput-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mGesturePrefChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 706
    const-string v9, "gesture_settings"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lnet/oneplus/h2launcher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    iput-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mGestureSharedPrefs:Landroid/content/SharedPreferences;

    .line 708
    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mGestureSharedPrefs:Landroid/content/SharedPreferences;

    iget-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mGesturePrefChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 709
    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mGestureSharedPrefs:Landroid/content/SharedPreferences;

    const-string v10, "swipe_up_enabled_saved"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lnet/oneplus/h2launcher/Launcher;->mSwipeUpEnabled:Z

    .line 711
    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mGestureSharedPrefs:Landroid/content/SharedPreferences;

    const-string v10, "swipe_down_enabled_saved"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lnet/oneplus/h2launcher/Launcher;->mSwipeDownEnabled:Z

    .line 713
    invoke-virtual {p0, p0}, Lnet/oneplus/h2launcher/Launcher;->doubleTabToLockEnabled(Landroid/content/Context;)Z

    move-result v9

    iput-boolean v9, p0, Lnet/oneplus/h2launcher/Launcher;->mDoubleTapEnabled:Z

    .line 716
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    iput-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mWallpaperPreferences:Landroid/content/SharedPreferences;

    .line 717
    new-instance v9, Lnet/oneplus/h2launcher/Launcher$4;

    invoke-direct {v9, p0}, Lnet/oneplus/h2launcher/Launcher$4;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    iput-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mWallpaperPrefChangListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 727
    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mWallpaperPreferences:Landroid/content/SharedPreferences;

    iget-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mWallpaperPrefChangListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 729
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v9

    iput-boolean v9, p0, Lnet/oneplus/h2launcher/Launcher;->mIsSafeModeEnabled:Z

    .line 730
    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/LauncherAppState;->setLauncher(Lnet/oneplus/h2launcher/Launcher;)Lnet/oneplus/h2launcher/LauncherModel;

    move-result-object v9

    iput-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mModel:Lnet/oneplus/h2launcher/LauncherModel;

    .line 731
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getAssetCache()Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v9

    iput-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    .line 733
    new-instance v9, Lnet/oneplus/h2launcher/DragController;

    invoke-direct {v9, p0}, Lnet/oneplus/h2launcher/DragController;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    iput-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mDragController:Lnet/oneplus/h2launcher/DragController;

    .line 734
    new-instance v9, Lnet/oneplus/h2launcher/FoldersTransitionController;

    invoke-direct {v9, p0}, Lnet/oneplus/h2launcher/FoldersTransitionController;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mFoldersController:Lnet/oneplus/h2launcher/FoldersTransitionController;

    .line 735
    new-instance v9, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;

    iget-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-direct {v9, p0, v10}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;-><init>(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/AssetCache;)V

    iput-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mGlobalSearchController:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;

    .line 736
    invoke-static {}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->getInstance()Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;

    move-result-object v9

    iget-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mGlobalSearchController:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;

    invoke-virtual {v9, v10}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->registerUpdateIconCacheCallback(Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$UpdateIconCacheCallback;)V

    .line 738
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    iput-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mInflater:Landroid/view/LayoutInflater;

    .line 739
    new-instance v9, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    invoke-direct {v9, p0}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    iput-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mStateTransitionAnimation:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    .line 741
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 742
    .local v3, "context":Landroid/content/Context;
    invoke-static {v3}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->isSearchBarStyleHidden(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_a

    const/4 v9, 0x1

    :goto_3
    iput-boolean v9, p0, Lnet/oneplus/h2launcher/Launcher;->mSearchBarVisible:Z

    .line 743
    invoke-static {v3}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->isSearchBarStyleTransparent(Landroid/content/Context;)Z

    move-result v9

    iput-boolean v9, p0, Lnet/oneplus/h2launcher/Launcher;->mSearchBarTransparent:Z

    .line 745
    new-instance v9, Lnet/oneplus/h2launcher/Stats;

    invoke-direct {v9, p0}, Lnet/oneplus/h2launcher/Stats;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mStats:Lnet/oneplus/h2launcher/Stats;

    .line 747
    invoke-static {p0}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    move-result-object v7

    .line 749
    .local v7, "launcherApps":Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;
    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mStats:Lnet/oneplus/h2launcher/Stats;

    invoke-virtual {v7, v9}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->addOnAppsChangedCallback(Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 750
    invoke-virtual {v7, p0}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->addOnAppsChangedCallback(Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 752
    invoke-static {p0}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    move-result-object v9

    iput-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mAppWidgetManager:Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    .line 755
    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mAppWidgetManager:Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 757
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getAppWidgetHost()Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    move-result-object v9

    invoke-virtual {v9}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->startListening()V

    .line 762
    const/4 v9, 0x0

    iput-boolean v9, p0, Lnet/oneplus/h2launcher/Launcher;->mPaused:Z

    .line 769
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v9

    const-string v10, "launcher_layout"

    invoke-virtual {v9, v10}, Lnet/oneplus/h2launcher/oos/StyleManager;->getResourceId(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p0, v9}, Lnet/oneplus/h2launcher/Launcher;->setContentView(I)V

    .line 771
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->setupViews()V

    .line 772
    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mDeviceProfile:Lnet/oneplus/h2launcher/DeviceProfile;

    invoke-virtual {v9, p0}, Lnet/oneplus/h2launcher/DeviceProfile;->layout(Lnet/oneplus/h2launcher/Launcher;)V

    .line 773
    new-instance v9, Lnet/oneplus/h2launcher/dynamicui/ExtractedColors;

    invoke-direct {v9}, Lnet/oneplus/h2launcher/dynamicui/ExtractedColors;-><init>()V

    iput-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mExtractedColors:Lnet/oneplus/h2launcher/dynamicui/ExtractedColors;

    .line 775
    new-instance v9, Lnet/oneplus/h2launcher/config/PreferencesHelper;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lnet/oneplus/h2launcher/config/PreferencesHelper;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mPreferencesHelper:Lnet/oneplus/h2launcher/config/PreferencesHelper;

    .line 776
    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mPreferencesHelper:Lnet/oneplus/h2launcher/config/PreferencesHelper;

    new-instance v10, Lnet/oneplus/h2launcher/Launcher$5;

    invoke-direct {v10, p0}, Lnet/oneplus/h2launcher/Launcher$5;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    invoke-virtual {v9, v10}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->setPreferenceChangedCallback(Lnet/oneplus/h2launcher/config/PreferencesHelper$PreferenceChangedCallback;)V

    .line 800
    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mPreferencesHelper:Lnet/oneplus/h2launcher/config/PreferencesHelper;

    invoke-virtual {v9}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->startListening()V

    .line 802
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->registerContentObservers()V

    .line 804
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->lockAllApps()V

    .line 806
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 807
    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-direct {p0, v9}, Lnet/oneplus/h2launcher/Launcher;->restoreState(Landroid/os/Bundle;)V

    .line 813
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v9

    invoke-virtual {v9}, Lnet/oneplus/h2launcher/oos/StyleManager;->showInternalClock()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 814
    invoke-static {p0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->init(Landroid/content/Context;)V

    .line 816
    new-instance v5, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    invoke-static {}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->getInstance()Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;

    move-result-object v9

    invoke-direct {v5, p0, v9}, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;-><init>(Landroid/content/Context;Lnet/oneplus/h2launcher/CustomAppWidget;)V

    .line 817
    .local v5, "info":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    const/4 v9, 0x0

    iput-boolean v9, v5, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->canReorder:Z

    .line 818
    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mModel:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-virtual {v9, v5}, Lnet/oneplus/h2launcher/LauncherModel;->addClockWidgetProviderInfo(Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;)V

    .line 821
    .end local v5    # "info":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    :cond_7
    iget-boolean v9, p0, Lnet/oneplus/h2launcher/Launcher;->mRestoring:Z

    if-nez v9, :cond_8

    .line 829
    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mModel:Lnet/oneplus/h2launcher/LauncherModel;

    iget-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v10}, Lnet/oneplus/h2launcher/Workspace;->getRestorePage()I

    move-result v10

    invoke-virtual {v9, v10}, Lnet/oneplus/h2launcher/LauncherModel;->startLoader(I)V

    .line 834
    :cond_8
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 835
    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 837
    new-instance v4, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v4, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 838
    .local v4, "filter":Landroid/content/IntentFilter;
    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v9, v4}, Lnet/oneplus/h2launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 842
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->setOrientation()V

    .line 844
    new-instance v4, Landroid/content/IntentFilter;

    .end local v4    # "filter":Landroid/content/IntentFilter;
    const-string v9, "icon_pack_changed"

    invoke-direct {v4, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 845
    .restart local v4    # "filter":Landroid/content/IntentFilter;
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v9

    iget-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mIconPackReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10, v4}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 847
    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v9, :cond_9

    .line 848
    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v9, p1}, Lnet/oneplus/h2launcher/LauncherCallbacks;->onCreate(Landroid/os/Bundle;)V

    .line 851
    :cond_9
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->shouldShowIntroScreen()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 852
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->showIntroScreen()V

    goto/16 :goto_2

    .line 742
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "launcherApps":Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 854
    .restart local v4    # "filter":Landroid/content/IntentFilter;
    .restart local v7    # "launcherApps":Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;
    :cond_b
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->showFirstRunActivity()Z

    .line 855
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->showFirstRunClings()V

    goto/16 :goto_2
.end method

.method public onCustomizationsDone()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3801
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->bindSearchProviderChangedOnLeaveOverviewMode()V

    .line 3802
    invoke-direct {p0, v3}, Lnet/oneplus/h2launcher/Launcher;->executePendingAction(Z)V

    .line 3803
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->refreshCustomContentOnStateChange()V

    .line 3806
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mOnLeaveCustomizationsCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 3807
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mOnLeaveCustomizationsCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3808
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mOnLeaveCustomizationsCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3807
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3810
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mOnLeaveCustomizationsCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3814
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mAppsView:Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    if-eqz v1, :cond_3

    .line 3815
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mAppsView:Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->enableScrollBar(Z)V

    .line 3816
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mAppsView:Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->getAppsRecyclerView()Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    if-nez v1, :cond_2

    .line 3817
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mAppsView:Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->getAppsRecyclerView()Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mAppsView:Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->getAdapter()Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 3819
    :cond_2
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mAppsView:Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->getAdapter()Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->setUpdateIconsInBackground(Z)V

    .line 3821
    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 3162
    const-string v8, "Launcher"

    const-string v9, "onDestroy"

    invoke-static {v8, v9}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3163
    invoke-super {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->onDestroy()V

    .line 3166
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v10}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3167
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 3168
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3171
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v8

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/util/TaskWorker;->clearPendingTask()V

    .line 3174
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    .line 3178
    .local v0, "app":Lnet/oneplus/h2launcher/LauncherAppState;
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mModel:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-virtual {v8, p0}, Lnet/oneplus/h2launcher/LauncherModel;->isCurrentCallbacks(Lnet/oneplus/h2launcher/LauncherModel$Callbacks;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3179
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mModel:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/LauncherModel;->stopLoader()V

    .line 3180
    invoke-virtual {v0, v10}, Lnet/oneplus/h2launcher/LauncherAppState;->setLauncher(Lnet/oneplus/h2launcher/Launcher;)Lnet/oneplus/h2launcher/LauncherModel;

    .line 3184
    :cond_0
    invoke-static {p0}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    move-result-object v6

    .line 3185
    .local v6, "launcherApps":Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mStats:Lnet/oneplus/h2launcher/Stats;

    invoke-virtual {v6, v8}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->removeOnAppsChangedCallback(Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 3186
    invoke-virtual {v6, p0}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->removeOnAppsChangedCallback(Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 3188
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mCustomizationsView:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    if-eqz v8, :cond_2

    .line 3189
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mCustomizationsView:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->getCustomizationPager()Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    move-result-object v3

    .line 3190
    .local v3, "customizationPager":Lnet/oneplus/h2launcher/customizations/BaseViewPager;
    if-eqz v3, :cond_2

    .line 3191
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->getChildCount()I

    move-result v2

    .line 3192
    .local v2, "count":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 3193
    invoke-virtual {v3, v5}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3194
    .local v7, "view":Landroid/view/View;
    instance-of v8, v7, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;

    if-eqz v8, :cond_1

    .line 3195
    check-cast v7, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;

    .end local v7    # "view":Landroid/view/View;
    invoke-virtual {v7}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->removeOnAppsChangedCallback()V

    .line 3192
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3202
    .end local v2    # "count":I
    .end local v3    # "customizationPager":Lnet/oneplus/h2launcher/customizations/BaseViewPager;
    .end local v5    # "index":I
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getAppWidgetHost()Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    move-result-object v8

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3207
    :goto_1
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 3209
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v8

    invoke-virtual {v8}, Landroid/text/method/TextKeyListener;->release()V

    .line 3211
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3213
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mNavigationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v8}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3214
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mContactsObserver:Lnet/oneplus/h2launcher/Launcher$ContactsObserver;

    invoke-virtual {v1, v8}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3215
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mWeatherProvider:Lnet/oneplus/h2launcher/WeatherProvider;

    if-eqz v8, :cond_3

    .line 3216
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mWeatherProvider:Lnet/oneplus/h2launcher/WeatherProvider;

    invoke-virtual {v8, v1}, Lnet/oneplus/h2launcher/WeatherProvider;->unregisterContentObserver(Landroid/content/ContentResolver;)V

    .line 3217
    iput-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mWeatherProvider:Lnet/oneplus/h2launcher/WeatherProvider;

    .line 3220
    :cond_3
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8}, Lnet/oneplus/h2launcher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3221
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v8

    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mIconPackReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3223
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->unregisterWallpaperChangedReceiver()V

    .line 3225
    invoke-static {p0}, Lnet/oneplus/h2launcher/Utilities;->clearIconScaleParameters(Landroid/content/Context;)V

    .line 3227
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/DragLayer;->clearAllResizeFrames()V

    .line 3228
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3229
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Workspace;->removeAllWorkspaceScreens()V

    .line 3230
    iput-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    .line 3231
    iput-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mDragController:Lnet/oneplus/h2launcher/DragController;

    .line 3233
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAnimUtils;->onDestroyActivity()V

    .line 3235
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v8, :cond_4

    .line 3236
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v8}, Lnet/oneplus/h2launcher/LauncherCallbacks;->onDestroy()V

    .line 3239
    :cond_4
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mGlobalSearchController:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;

    if-eqz v8, :cond_5

    .line 3240
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mGlobalSearchController:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->closeGlobalSearchDatabase()V

    .line 3241
    invoke-static {}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->getInstance()Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;

    move-result-object v8

    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mGlobalSearchController:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;

    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->unregisterUpdateIconCacheCallback(Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$UpdateIconCacheCallback;)V

    .line 3244
    :cond_5
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v8

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/oos/StyleManager;->showInternalClock()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->getInstance()Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 3245
    invoke-static {}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->getInstance()Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;

    move-result-object v8

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->release()V

    .line 3248
    :cond_6
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v8

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/oos/StyleManager;->showDynamicIcon()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3249
    invoke-static {}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->getInstance()Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;

    move-result-object v8

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->onDestroy()V

    .line 3252
    :cond_7
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mScreenshotTask:Landroid/os/AsyncTask;

    invoke-static {v8}, Lnet/oneplus/h2launcher/Utilities;->isTaskUnfinished(Landroid/os/AsyncTask;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 3253
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mScreenshotTask:Landroid/os/AsyncTask;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 3256
    :cond_8
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mGestureSharedPrefs:Landroid/content/SharedPreferences;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mGesturePrefChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    if-eqz v8, :cond_9

    .line 3257
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mGestureSharedPrefs:Landroid/content/SharedPreferences;

    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mGesturePrefChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v8, v9}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 3261
    :cond_9
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mWallpaperPreferences:Landroid/content/SharedPreferences;

    if-eqz v8, :cond_a

    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mWallpaperPrefChangListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    if-eqz v8, :cond_a

    .line 3262
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mWallpaperPreferences:Landroid/content/SharedPreferences;

    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mWallpaperPrefChangListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v8, v9}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 3269
    :cond_a
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mAppEditDialog:Landroid/app/Dialog;

    if-eqz v8, :cond_b

    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mAppEditDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 3270
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mAppEditDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->dismiss()V

    .line 3274
    :cond_b
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mSwitchingProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v8, :cond_c

    .line 3275
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mSwitchingProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3276
    iput-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mSwitchingProgressDialog:Landroid/app/ProgressDialog;

    .line 3278
    :cond_c
    return-void

    .line 3203
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v4

    .line 3204
    .local v4, "ex":Ljava/lang/NullPointerException;
    const-string v8, "Launcher"

    const-string v9, "problem while stopping AppWidgetHost during Launcher destruction"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2710
    invoke-super {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->onDetachedFromWindow()V

    .line 2711
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/Launcher;->mVisible:Z

    .line 2713
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAttached:Z

    if-eqz v0, :cond_0

    .line 2714
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2715
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/Launcher;->mAttached:Z

    .line 2717
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->updateAutoAdvanceState()V

    .line 2718
    return-void
.end method

.method public onDragStarted(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 4409
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isOnCustomContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4412
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->moveWorkspaceToDefaultScreen()V

    .line 4415
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v0, :cond_1

    .line 4416
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v0, p1}, Lnet/oneplus/h2launcher/LauncherCallbacks;->onDragStarted(Landroid/view/View;)V

    .line 4418
    :cond_1
    return-void
.end method

.method public onEndReordering()V
    .locals 2

    .prologue
    .line 7257
    iget v0, p0, Lnet/oneplus/h2launcher/Launcher;->mNextAction:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mCurrentLayout:Lnet/oneplus/h2launcher/CellLayout;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mReorderingLayout:Lnet/oneplus/h2launcher/CellLayout;

    if-eq v0, v1, :cond_0

    .line 7258
    const-string v0, "Launcher"

    const-string v1, "commit pending action: end reorder"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7259
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/Launcher;->executePendingAction(Z)V

    .line 7260
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mUtilsButtonClicked:[Z

    .line 7261
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->updateUtilsButtonVisibility()V

    .line 7265
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher;->mIsReordering:Z

    .line 7266
    return-void

    .line 7263
    :cond_0
    const-string v0, "Launcher"

    const-string v1, "onEndReordering"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onExtractedColorsChanged()V
    .locals 0

    .prologue
    .line 861
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->loadExtractedColorsAndColorItems()V

    .line 862
    return-void
.end method

.method protected onInteractionBegin()V
    .locals 1

    .prologue
    .line 4440
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 4441
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v0}, Lnet/oneplus/h2launcher/LauncherCallbacks;->onInteractionBegin()V

    .line 4443
    :cond_0
    return-void
.end method

.method protected onInteractionEnd()V
    .locals 1

    .prologue
    .line 4425
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 4426
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v0}, Lnet/oneplus/h2launcher/LauncherCallbacks;->onInteractionEnd()V

    .line 4428
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2054
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    .line 2055
    .local v3, "uniChar":I
    invoke-super {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2056
    .local v1, "handled":Z
    if-lez v3, :cond_1

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v4

    .line 2057
    .local v2, "isKeyNotWhitespace":Z
    :goto_0
    if-nez v1, :cond_2

    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->acceptFilter()Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v2, :cond_2

    .line 2058
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v6

    iget-object v7, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v7, v8, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 2060
    .local v0, "gotKey":Z
    if-eqz v0, :cond_2

    iget-object v6, p0, Lnet/oneplus/h2launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lnet/oneplus/h2launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v6

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/oos/StyleManager;->showOnlineSearch()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2067
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->onSearchRequested()Z

    move-result v4

    .line 2078
    .end local v0    # "gotKey":Z
    :cond_0
    :goto_1
    return v4

    .end local v2    # "isKeyNotWhitespace":Z
    :cond_1
    move v2, v5

    .line 2056
    goto :goto_0

    .line 2071
    .restart local v2    # "isKeyNotWhitespace":Z
    :cond_2
    const/4 v6, 0x4

    if-ne p1, v6, :cond_3

    .line 2072
    iget-object v6, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v7, Lnet/oneplus/h2launcher/Launcher$State;->SEARCH:Lnet/oneplus/h2launcher/Launcher$State;

    if-ne v6, v7, :cond_3

    .line 2073
    iget-object v6, p0, Lnet/oneplus/h2launcher/Launcher;->mGlobalSearchController:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->hideGlobalSearch()V

    .line 2078
    :cond_3
    const/16 v6, 0x52

    if-ne p1, v6, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v6

    if-nez v6, :cond_0

    :cond_4
    if-nez v1, :cond_0

    move v4, v5

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2084
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 2085
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->handleOnPrepareOptionsMenu()V

    .line 2087
    :cond_0
    invoke-super {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLauncherProviderChange()V
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v0}, Lnet/oneplus/h2launcher/LauncherCallbacks;->onLauncherProviderChange()V

    .line 992
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 5067
    const-string v5, "Launcher"

    const-string v7, "onLongClick"

    invoke-static {v5, v7}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5069
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isDraggingEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 5147
    :cond_0
    :goto_0
    return v2

    .line 5070
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isWorkspaceLocked()Z

    move-result v5

    if-nez v5, :cond_0

    .line 5071
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v7, Lnet/oneplus/h2launcher/Launcher$State;->WORKSPACE:Lnet/oneplus/h2launcher/Launcher$State;

    if-ne v5, v7, :cond_0

    .line 5073
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Workspace;->getOpenFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 5074
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->closeFolder()V

    move v2, v6

    .line 5075
    goto :goto_0

    .line 5078
    :cond_2
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mAllAppsButton:Landroid/view/View;

    if-ne p1, v5, :cond_3

    .line 5079
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->onLongClickAllAppsButton()V

    move v2, v6

    .line 5080
    goto :goto_0

    .line 5083
    :cond_3
    instance-of v5, p1, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;

    if-eqz v5, :cond_4

    move-object v5, p1

    .line 5084
    check-cast v5, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    .line 5085
    .local v1, "info":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    if-eqz v1, :cond_0

    iget-boolean v5, v1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-nez v5, :cond_0

    .line 5090
    .end local v1    # "info":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    :cond_4
    instance-of v5, p1, Lnet/oneplus/h2launcher/Workspace;

    if-eqz v5, :cond_6

    .line 5091
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isIconRearrangementMode()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5092
    invoke-virtual {p0, v6}, Lnet/oneplus/h2launcher/Launcher;->showOverviewMode(Z)V

    move v2, v6

    .line 5093
    goto :goto_0

    .line 5094
    :cond_5
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Workspace;->isInOverviewMode()Z

    move-result v5

    if-nez v5, :cond_0

    .line 5095
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Workspace;->isTouchActive()Z

    move-result v5

    if-nez v5, :cond_0

    .line 5096
    invoke-virtual {p0, v6}, Lnet/oneplus/h2launcher/Launcher;->showOverviewMode(Z)V

    .line 5097
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v5, v2, v6}, Lnet/oneplus/h2launcher/Workspace;->performHapticFeedback(II)Z

    move v2, v6

    .line 5099
    goto :goto_0

    .line 5108
    :cond_6
    const/4 v4, 0x0

    .line 5109
    .local v4, "longClickCellInfo":Lnet/oneplus/h2launcher/CellLayout$CellInfo;
    const/4 v3, 0x0

    .line 5110
    .local v3, "itemUnderLongClick":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lnet/oneplus/h2launcher/ItemInfo;

    if-eqz v5, :cond_7

    .line 5111
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/ItemInfo;

    .line 5112
    .local v1, "info":Lnet/oneplus/h2launcher/ItemInfo;
    new-instance v4, Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    .end local v4    # "longClickCellInfo":Lnet/oneplus/h2launcher/CellLayout$CellInfo;
    invoke-direct {v4, p1, v1}, Lnet/oneplus/h2launcher/CellLayout$CellInfo;-><init>(Landroid/view/View;Lnet/oneplus/h2launcher/ItemInfo;)V

    .line 5113
    .restart local v4    # "longClickCellInfo":Lnet/oneplus/h2launcher/CellLayout$CellInfo;
    iget-object v3, v4, Lnet/oneplus/h2launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 5114
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->resetAddInfo()V

    .line 5119
    .end local v1    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    :cond_7
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    .line 5120
    .local v0, "inHotseat":Z
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mDragController:Lnet/oneplus/h2launcher/DragController;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/DragController;->isDragging()Z

    move-result v5

    if-nez v5, :cond_9

    .line 5121
    if-nez v3, :cond_b

    .line 5123
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v5, v2, v6}, Lnet/oneplus/h2launcher/Workspace;->performHapticFeedback(II)Z

    .line 5125
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Workspace;->isInOverviewMode()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 5126
    instance-of v5, p1, Lnet/oneplus/h2launcher/CellLayout;

    if-eqz v5, :cond_8

    move-object v5, p1

    .line 5127
    check-cast v5, Lnet/oneplus/h2launcher/CellLayout;

    iput-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mReorderingLayout:Lnet/oneplus/h2launcher/CellLayout;

    .line 5129
    :cond_8
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v5, p1}, Lnet/oneplus/h2launcher/Workspace;->startReordering(Landroid/view/View;)Z

    :cond_9
    :goto_1
    move v2, v6

    .line 5147
    goto/16 :goto_0

    .line 5131
    :cond_a
    invoke-virtual {p0, v6}, Lnet/oneplus/h2launcher/Launcher;->showOverviewMode(Z)V

    goto :goto_1

    .line 5134
    :cond_b
    if-eqz v0, :cond_c

    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mHotseatController:Lnet/oneplus/h2launcher/HotseatController;

    iget v7, v4, Lnet/oneplus/h2launcher/CellLayout$CellInfo;->cellX:I

    iget v8, v4, Lnet/oneplus/h2launcher/CellLayout$CellInfo;->cellY:I

    .line 5135
    invoke-virtual {v5, v7, v8}, Lnet/oneplus/h2launcher/HotseatController;->getOrderInHotseat(II)I

    move-result v5

    .line 5134
    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/Launcher;->isAllAppsButtonRank(I)Z

    move-result v5

    if-eqz v5, :cond_c

    move v2, v6

    .line 5138
    .local v2, "isAllAppsButton":Z
    :cond_c
    instance-of v5, v3, Lnet/oneplus/h2launcher/Folder;

    if-nez v5, :cond_9

    if-nez v2, :cond_9

    .line 5140
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v5, v4}, Lnet/oneplus/h2launcher/Workspace;->startDrag(Lnet/oneplus/h2launcher/CellLayout$CellInfo;)V

    .line 5141
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v5

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/oos/StyleManager;->showSearchBar()Z

    move-result v5

    if-nez v5, :cond_9

    .line 5142
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->enterSpringLoadedDragMode()V

    goto :goto_1
.end method

.method protected onLongClickAllAppsButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3970
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isAppsViewVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3971
    invoke-virtual {p0, v1, v2, v1, v1}, Lnet/oneplus/h2launcher/Launcher;->showAppsView(ZZZZ)V

    .line 3973
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAllAppsViewController:Lnet/oneplus/h2launcher/AllAppsViewController;

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/AllAppsViewController;->setFirstInitialized(Z)V

    .line 3975
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2985
    const-string v10, "Launcher"

    const-string v11, "onNewIntent"

    invoke-static {v10, v11}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2987
    const-wide/16 v8, 0x0

    .line 2992
    .local v8, "startTime":J
    iget-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v11, Lnet/oneplus/h2launcher/Launcher$State;->SEARCH:Lnet/oneplus/h2launcher/Launcher$State;

    if-ne v10, v11, :cond_1

    .line 2993
    iget-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mGlobalSearchController:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;

    invoke-virtual {v10}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->hideGlobalSearch()V

    .line 3098
    :cond_0
    :goto_0
    return-void

    .line 2997
    :cond_1
    iget-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mClings:Lnet/oneplus/h2launcher/LauncherClings;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mClings:Lnet/oneplus/h2launcher/LauncherClings;

    invoke-virtual {v10}, Lnet/oneplus/h2launcher/LauncherClings;->isVisible()Z

    move-result v10

    if-nez v10, :cond_0

    .line 3000
    :cond_2
    iget-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v10}, Lnet/oneplus/h2launcher/Workspace;->getOpenFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v4

    .line 3001
    .local v4, "openFolder":Lnet/oneplus/h2launcher/Folder;
    iget-boolean v10, p0, Lnet/oneplus/h2launcher/Launcher;->mHasFocus:Z

    if-nez v10, :cond_3

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->areDialogsShowing()Z

    move-result v10

    if-eqz v10, :cond_d

    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v10

    const/high16 v11, 0x400000

    and-int/2addr v10, v11

    const/high16 v11, 0x400000

    if-eq v10, v11, :cond_d

    const/4 v0, 0x1

    .line 3004
    .local v0, "alreadyOnHome":Z
    :goto_1
    const-string v10, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 3005
    .local v2, "isActionMain":Z
    const/4 v5, 0x1

    .line 3007
    .local v5, "shouldReturnToHome":Z
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 3008
    const/4 v6, 0x0

    .line 3010
    .local v6, "skipToMoveDefaultScreen":Z
    if-eqz v2, :cond_a

    .line 3012
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->closeSystemDialogs()V

    .line 3014
    const-string v10, "net.oneplus.h2launcher.action.OPEN_QUICK_PAGE"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 3015
    if-eqz v0, :cond_e

    .line 3016
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lnet/oneplus/h2launcher/Launcher;->showWorkspace(Z)V

    .line 3017
    iget-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lnet/oneplus/h2launcher/Workspace;->moveToAlternateScreen(Z)V

    .line 3018
    const/4 v5, 0x0

    .line 3027
    :cond_4
    :goto_2
    iget-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    if-eqz v10, :cond_0

    .line 3032
    iget-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v10}, Lnet/oneplus/h2launcher/Workspace;->exitWidgetResizeMode()V

    .line 3034
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->closeFolder()V

    .line 3035
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->exitSpringLoadedDragMode()V

    .line 3037
    const/4 v10, 0x1

    iput-boolean v10, p0, Lnet/oneplus/h2launcher/Launcher;->mShowWorkspaceFromNewIntent:Z

    .line 3041
    if-eqz v0, :cond_f

    .line 3042
    iget-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v11, Lnet/oneplus/h2launcher/Launcher$State;->ICON_REARRANGEMENT:Lnet/oneplus/h2launcher/Launcher$State;

    if-eq v10, v11, :cond_5

    iget-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v11, Lnet/oneplus/h2launcher/Launcher$State;->CUSTOMIZATIONS:Lnet/oneplus/h2launcher/Launcher$State;

    if-eq v10, v11, :cond_5

    iget-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v11, Lnet/oneplus/h2launcher/Launcher$State;->WALLPAPER:Lnet/oneplus/h2launcher/Launcher$State;

    if-eq v10, v11, :cond_5

    iget-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v11, Lnet/oneplus/h2launcher/Launcher$State;->WIDGETS:Lnet/oneplus/h2launcher/Launcher$State;

    if-eq v10, v11, :cond_5

    iget-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    .line 3044
    invoke-virtual {v10}, Lnet/oneplus/h2launcher/Workspace;->isInOverviewMode()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 3045
    :cond_5
    const/4 v6, 0x1

    .line 3047
    :cond_6
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lnet/oneplus/h2launcher/Launcher;->showWorkspace(Z)V

    .line 3052
    :goto_3
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v7

    .line 3053
    .local v7, "v":Landroid/view/View;
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 3054
    const-string v10, "input_method"

    invoke-virtual {p0, v10}, Lnet/oneplus/h2launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 3056
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 3060
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_7
    if-nez v0, :cond_8

    .line 3061
    iget-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mAllAppsViewController:Lnet/oneplus/h2launcher/AllAppsViewController;

    invoke-virtual {v10}, Lnet/oneplus/h2launcher/AllAppsViewController;->scrollToTop()V

    .line 3065
    :cond_8
    if-nez v0, :cond_9

    iget-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mWidgetsView:Lnet/oneplus/h2launcher/widget/WidgetsContainerView;

    if-eqz v10, :cond_9

    .line 3066
    iget-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mWidgetsView:Lnet/oneplus/h2launcher/widget/WidgetsContainerView;

    invoke-virtual {v10}, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->scrollToTop()V

    .line 3069
    :cond_9
    iget-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v10, :cond_a

    .line 3070
    iget-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v10}, Lnet/oneplus/h2launcher/LauncherCallbacks;->onHomeIntent()V

    .line 3074
    .end local v7    # "v":Landroid/view/View;
    :cond_a
    iget-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v10, :cond_b

    .line 3075
    iget-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v10, p1}, Lnet/oneplus/h2launcher/LauncherCallbacks;->onNewIntent(Landroid/content/Intent;)V

    .line 3081
    :cond_b
    if-eqz v2, :cond_0

    .line 3082
    iget-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v10, :cond_c

    iget-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    .line 3083
    invoke-interface {v10}, Lnet/oneplus/h2launcher/LauncherCallbacks;->shouldMoveToDefaultScreenOnHomeIntent()Z

    move-result v10

    if-eqz v10, :cond_10

    :cond_c
    const/4 v3, 0x1

    .line 3084
    .local v3, "moveToDefaultScreen":Z
    :goto_4
    if-eqz v0, :cond_0

    iget-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v11, Lnet/oneplus/h2launcher/Launcher$State;->WORKSPACE:Lnet/oneplus/h2launcher/Launcher$State;

    if-ne v10, v11, :cond_0

    iget-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v10}, Lnet/oneplus/h2launcher/Workspace;->isTouchActive()Z

    move-result v10

    if-nez v10, :cond_0

    if-nez v4, :cond_0

    if-eqz v3, :cond_0

    if-eqz v5, :cond_0

    if-nez v6, :cond_0

    .line 3086
    iget-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    new-instance v11, Lnet/oneplus/h2launcher/Launcher$26;

    invoke-direct {v11, p0}, Lnet/oneplus/h2launcher/Launcher$26;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    invoke-virtual {v10, v11}, Lnet/oneplus/h2launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 3001
    .end local v0    # "alreadyOnHome":Z
    .end local v2    # "isActionMain":Z
    .end local v3    # "moveToDefaultScreen":Z
    .end local v5    # "shouldReturnToHome":Z
    .end local v6    # "skipToMoveDefaultScreen":Z
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 3020
    .restart local v0    # "alreadyOnHome":Z
    .restart local v2    # "isActionMain":Z
    .restart local v5    # "shouldReturnToHome":Z
    .restart local v6    # "skipToMoveDefaultScreen":Z
    :cond_e
    const v10, 0x10a0002

    const v11, 0x10a0003

    invoke-virtual {p0, v10, v11}, Lnet/oneplus/h2launcher/Launcher;->overridePendingTransition(II)V

    .line 3022
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lnet/oneplus/h2launcher/Launcher;->showWorkspace(Z)V

    .line 3023
    iget-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lnet/oneplus/h2launcher/Workspace;->moveToCustomContentScreen(Z)V

    goto/16 :goto_2

    .line 3049
    :cond_f
    sget-object v10, Lnet/oneplus/h2launcher/Launcher$State;->WORKSPACE:Lnet/oneplus/h2launcher/Launcher$State;

    iput-object v10, p0, Lnet/oneplus/h2launcher/Launcher;->mOnResumeState:Lnet/oneplus/h2launcher/Launcher$State;

    goto/16 :goto_3

    .line 3083
    :cond_10
    const/4 v3, 0x0

    goto :goto_4
.end method

.method public onPackageAdded(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 1884
    invoke-super {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->onPackageAdded(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 1885
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mGlobalSearchController:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v0, p1, p2, v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->onPackageAdded(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Lnet/oneplus/h2launcher/AssetCache;)V

    .line 1886
    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/AssetCache;->isAssetPackPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1887
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lnet/oneplus/h2launcher/AssetCache;->loadAssetPack(Ljava/lang/String;Z)Lnet/oneplus/h2launcher/IconPackHelper;

    .line 1888
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/AssetCache;->addPreloadAssetPackTask(Ljava/lang/String;)V

    .line 1890
    :cond_0
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    const/4 v1, 0x1

    .line 1917
    invoke-super {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->onPackageChanged(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 1919
    if-eqz p1, :cond_2

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/AssetCache;->getCurrentAssetPackName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1920
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/AssetCache;->flushAssetPackIcon(Ljava/lang/String;)V

    .line 1921
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v0, p1, v1}, Lnet/oneplus/h2launcher/AssetCache;->loadAssetPack(Ljava/lang/String;Z)Lnet/oneplus/h2launcher/IconPackHelper;

    .line 1922
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/AssetCache;->updateDbIconsForIconPackChanged()V

    .line 1923
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    if-eqz v0, :cond_0

    .line 1924
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->updateAllShortcuts()V

    .line 1926
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAllAppsViewController:Lnet/oneplus/h2launcher/AllAppsViewController;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/AllAppsViewController;->updateAllAppsEntries(Lnet/oneplus/h2launcher/AssetCache;Ljava/lang/String;Z)V

    .line 1927
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAllAppsViewController:Lnet/oneplus/h2launcher/AllAppsViewController;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/AllAppsViewController;->notifyDataSetChanged()V

    .line 1928
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mGlobalSearchController:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->onComponentChanged()V

    .line 1934
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->onComponentChanged()V

    .line 1935
    return-void

    .line 1929
    :cond_2
    if-eqz p1, :cond_1

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/AssetCache;->isAssetPackPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1930
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/AssetCache;->flushAssetPackIcon(Ljava/lang/String;)V

    .line 1931
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v0, p1, v1}, Lnet/oneplus/h2launcher/AssetCache;->loadAssetPack(Ljava/lang/String;Z)Lnet/oneplus/h2launcher/IconPackHelper;

    .line 1932
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/AssetCache;->addPreloadAssetPackTask(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPackageRemoved(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 1894
    invoke-super {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->onPackageRemoved(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 1895
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1896
    .local v0, "context":Landroid/content/Context;
    if-eqz p1, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v1, p1}, Lnet/oneplus/h2launcher/AssetCache;->isAssetPackPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1897
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v1, p1}, Lnet/oneplus/h2launcher/AssetCache;->flushAssetPackIcon(Ljava/lang/String;)V

    .line 1899
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/AssetCache;->getCurrentAssetPackName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1900
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/oneplus/h2launcher/Launcher;->mIconPackNeedChangeToDefault:Z

    .line 1902
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mGlobalSearchController:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;

    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {v1, p1, v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->updateAllAppsList(Ljava/lang/String;Lnet/oneplus/h2launcher/AssetCache;)V

    .line 1903
    invoke-static {v0, p2, p1}, Lnet/oneplus/h2launcher/config/CustomInfoHelper;->RemoveCustomLabelForPackage(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;)V

    .line 1904
    invoke-static {v0, p2, p1}, Lnet/oneplus/h2launcher/config/CustomInfoHelper;->RemoveCustomIconForPackage(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;)V

    .line 1905
    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 0
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 1940
    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 0
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 1945
    return-void
.end method

.method public onPageBoundSynchronously(I)V
    .locals 2
    .param p1, "page"    # I

    .prologue
    .line 6508
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mSynchronouslyBoundPages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6509
    return-void
.end method

.method public onPageSwitch(Landroid/view/View;I)V
    .locals 7
    .param p1, "newPage"    # Landroid/view/View;
    .param p2, "newPageIndex"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 7231
    const-string v0, "Launcher"

    const-string v1, "onPageSwitch: mLastPageIndex=%d, newPageIndex=%d, hasCustomContent=%b"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lnet/oneplus/h2launcher/Launcher;->mLastPageIndex:I

    .line 7232
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Workspace;->hasCustomContent()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    .line 7231
    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7233
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleManager;->showDynamicIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7234
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->updateCurrentPageIconState()V

    .line 7236
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v0, :cond_1

    .line 7237
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v0, p1, p2}, Lnet/oneplus/h2launcher/LauncherCallbacks;->onPageSwitch(Landroid/view/View;I)V

    .line 7241
    :cond_1
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher;->mIsReordering:Z

    if-nez v0, :cond_2

    iget v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLastPageIndex:I

    if-eq p2, v0, :cond_2

    .line 7242
    const-string v0, "Launcher"

    const-string v1, "commit pending action: page switched"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7243
    invoke-direct {p0, v5}, Lnet/oneplus/h2launcher/Launcher;->executePendingAction(Z)V

    .line 7244
    new-array v0, v6, [Z

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mUtilsButtonClicked:[Z

    .line 7246
    :cond_2
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->updateUtilsButtonVisibility()V

    .line 7247
    iput p2, p0, Lnet/oneplus/h2launcher/Launcher;->mLastPageIndex:I

    .line 7248
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1846
    const-string v0, "Launcher"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    invoke-static {}, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->enableInstallQueue()V

    .line 1851
    invoke-super {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->onPause()V

    .line 1852
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher;->mPaused:Z

    .line 1853
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mDragController:Lnet/oneplus/h2launcher/DragController;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/DragController;->cancelDrag()V

    .line 1854
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mDragController:Lnet/oneplus/h2launcher/DragController;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/DragController;->resetLastGestureUpTime()V

    .line 1857
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v1, Lnet/oneplus/h2launcher/Launcher$State;->SEARCH:Lnet/oneplus/h2launcher/Launcher$State;

    if-ne v0, v1, :cond_5

    .line 1858
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mGlobalSearchController:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->hideGlobalSearch()V

    .line 1863
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->isOnCustomContentScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mClings:Lnet/oneplus/h2launcher/LauncherClings;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mClings:Lnet/oneplus/h2launcher/LauncherClings;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherClings;->isVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1864
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isEditingQuickPageItem()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1865
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->leaveQuickPageEditMode()V

    .line 1868
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v0, :cond_3

    .line 1869
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v0}, Lnet/oneplus/h2launcher/LauncherCallbacks;->onPause()V

    .line 1872
    :cond_3
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAppEditDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAppEditDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher;->mIsLeavingForSelectingIconPack:Z

    if-nez v0, :cond_4

    .line 1876
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAppEditDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1879
    :cond_4
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Launcher;->mIsLeavingForSelectingIconPack:Z

    .line 1880
    return-void

    .line 1859
    :cond_5
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v1, Lnet/oneplus/h2launcher/Launcher$State;->APPS_SPRING_LOADED:Lnet/oneplus/h2launcher/Launcher$State;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleManager;->showSearchBar()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1860
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v2, v0}, Lnet/oneplus/h2launcher/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 924
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 925
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v0, p1}, Lnet/oneplus/h2launcher/LauncherCallbacks;->onPostCreate(Landroid/os/Bundle;)V

    .line 928
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3442
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 3443
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v0, p1}, Lnet/oneplus/h2launcher/LauncherCallbacks;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 22
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1444
    invoke-super/range {p0 .. p3}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 1445
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1446
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/LauncherCallbacks;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 1449
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1527
    :cond_1
    :goto_0
    return-void

    .line 1451
    :sswitch_0
    const-string v17, "android.permission.CALL_PHONE"

    .line 1452
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v7

    .line 1454
    .local v7, "currentPermissionRationale":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_1

    .line 1455
    aget-object v17, p2, v9

    const-string v18, "android.permission.CALL_PHONE"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1456
    aget v17, p3, v9

    if-nez v17, :cond_3

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mWaitingForPermissionResult:Landroid/util/Pair;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 1458
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mWaitingForPermissionResult:Landroid/util/Pair;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v14, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Landroid/view/View;

    .line 1459
    .local v14, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mWaitingForPermissionResult:Landroid/util/Pair;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v10, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Landroid/content/Intent;

    .line 1460
    .local v10, "intent":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v14, v10, v1}, Lnet/oneplus/h2launcher/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 1454
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v14    # "view":Landroid/view/View;
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1463
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/Launcher;->mShowPermissionRationale:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    if-nez v7, :cond_2

    .line 1464
    const v17, 0x7f0b004c

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v17

    .line 1465
    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 1472
    .end local v7    # "currentPermissionRationale":Z
    .end local v9    # "i":I
    :sswitch_1
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_3
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_1

    .line 1473
    aget-object v17, p2, v9

    const-string v18, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    aget v17, p3, v9

    if-nez v17, :cond_5

    .line 1475
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mWallpapersView:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->getPager()Lnet/oneplus/h2launcher/customizations/WallpaperPager;

    move-result-object v16

    .line 1476
    .local v16, "wallpaperPager":Lnet/oneplus/h2launcher/customizations/WallpaperPager;
    if-eqz v16, :cond_4

    .line 1477
    invoke-virtual/range {v16 .. v16}, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->getWallpaperCard()Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    move-result-object v15

    .line 1478
    .local v15, "wallpaperCard":Lnet/oneplus/h2launcher/customizations/WallpaperCard;
    if-eqz v15, :cond_4

    .line 1479
    invoke-virtual {v15}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->onReadExternalStoragePermissionGranted()V

    .line 1472
    .end local v15    # "wallpaperCard":Lnet/oneplus/h2launcher/customizations/WallpaperCard;
    .end local v16    # "wallpaperPager":Lnet/oneplus/h2launcher/customizations/WallpaperPager;
    :cond_4
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1482
    :cond_5
    aget-object v17, p2, v9

    const-string v18, "android.permission.READ_CONTACTS"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    aget v17, p3, v9

    if-nez v17, :cond_4

    .line 1484
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 1485
    .local v12, "resolver":Landroid/content/ContentResolver;
    sget-object v17, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mContactsObserver:Lnet/oneplus/h2launcher/Launcher$ContactsObserver;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v12, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1486
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mGlobalSearchController:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->getContactsDb()V

    goto :goto_4

    .line 1491
    .end local v9    # "i":I
    .end local v12    # "resolver":Landroid/content/ContentResolver;
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1492
    .local v6, "contentResolver":Landroid/content/ContentResolver;
    if-nez v6, :cond_6

    .line 1493
    const-string v17, "Launcher"

    const-string v18, "onRequestPermissionsResult: resolver is null."

    invoke-static/range {v17 .. v18}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1498
    :cond_6
    :try_start_0
    sget-object v17, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mContactsObserver:Lnet/oneplus/h2launcher/Launcher$ContactsObserver;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v6, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1500
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mGlobalSearchController:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->getContactsDb()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1501
    :catch_0
    move-exception v8

    .line 1502
    .local v8, "ex":Ljava/lang/Exception;
    const-string v17, "Launcher"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onRequestPermissionsResult: ex: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1507
    .end local v6    # "contentResolver":Landroid/content/ContentResolver;
    .end local v8    # "ex":Ljava/lang/Exception;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mPendingRequestArgs:Lnet/oneplus/h2launcher/util/PendingRequestArgs;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mPendingRequestArgs:Lnet/oneplus/h2launcher/util/PendingRequestArgs;

    move-object/from16 v17, v0

    .line 1508
    invoke-virtual/range {v17 .. v17}, Lnet/oneplus/h2launcher/util/PendingRequestArgs;->getRequestCode()I

    move-result v17

    const/16 v18, 0xd

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 1509
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Launcher;->setWaitingForResult(Z)V

    .line 1511
    const/4 v13, 0x0

    .line 1512
    .local v13, "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mPendingRequestArgs:Lnet/oneplus/h2launcher/util/PendingRequestArgs;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lnet/oneplus/h2launcher/util/PendingRequestArgs;->container:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mPendingRequestArgs:Lnet/oneplus/h2launcher/util/PendingRequestArgs;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lnet/oneplus/h2launcher/util/PendingRequestArgs;->screenId:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/oneplus/h2launcher/Launcher;->getCellLayout(JJ)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v11

    .line 1513
    .local v11, "layout":Lnet/oneplus/h2launcher/CellLayout;
    if-eqz v11, :cond_7

    .line 1514
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mPendingRequestArgs:Lnet/oneplus/h2launcher/util/PendingRequestArgs;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lnet/oneplus/h2launcher/util/PendingRequestArgs;->cellX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mPendingRequestArgs:Lnet/oneplus/h2launcher/util/PendingRequestArgs;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lnet/oneplus/h2launcher/util/PendingRequestArgs;->cellY:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lnet/oneplus/h2launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v13

    .line 1516
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mPendingRequestArgs:Lnet/oneplus/h2launcher/util/PendingRequestArgs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lnet/oneplus/h2launcher/util/PendingRequestArgs;->getPendingIntent()Landroid/content/Intent;

    move-result-object v10

    .line 1518
    .restart local v10    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_8

    const/16 v17, 0x0

    aget v17, p3, v17

    if-nez v17, :cond_8

    .line 1520
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v13, v10, v1}, Lnet/oneplus/h2launcher/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 1523
    :cond_8
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/oneplus/h2launcher/Launcher;->mPendingRequestArgs:Lnet/oneplus/h2launcher/util/PendingRequestArgs;

    goto/16 :goto_0

    .line 1449
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_3
        0xc8 -> :sswitch_1
        0xc9 -> :sswitch_0
        0xca -> :sswitch_2
    .end sparse-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 3107
    :try_start_0
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3112
    :goto_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mSynchronouslyBoundPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3113
    .local v0, "page":I
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/Workspace;->restoreInstanceStateForChild(I)V

    goto :goto_1

    .line 3108
    .end local v0    # "page":I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 3115
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1684
    const-string v8, "Launcher"

    const-string v11, "onResume"

    invoke-static {v8, v11}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    const-wide/16 v4, 0x0

    .line 1692
    .local v4, "startTime":J
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v8, :cond_0

    .line 1693
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v8}, Lnet/oneplus/h2launcher/LauncherCallbacks;->preOnResume()V

    .line 1696
    :cond_0
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v11, Lnet/oneplus/h2launcher/Launcher$State;->SEARCH:Lnet/oneplus/h2launcher/Launcher$State;

    if-ne v8, v11, :cond_1

    .line 1697
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mGlobalSearchController:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->hideGlobalSearchWithoutAnimation()V

    .line 1700
    :cond_1
    invoke-super {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->onResume()V

    .line 1703
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mOnResumeState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v11, Lnet/oneplus/h2launcher/Launcher$State;->WORKSPACE:Lnet/oneplus/h2launcher/Launcher$State;

    if-ne v8, v11, :cond_5

    .line 1704
    invoke-virtual {p0, v10}, Lnet/oneplus/h2launcher/Launcher;->showWorkspace(Z)V

    .line 1715
    :cond_2
    :goto_0
    sget-object v8, Lnet/oneplus/h2launcher/Launcher$State;->NONE:Lnet/oneplus/h2launcher/Launcher$State;

    iput-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mOnResumeState:Lnet/oneplus/h2launcher/Launcher$State;

    .line 1718
    invoke-direct {p0, v10}, Lnet/oneplus/h2launcher/Launcher;->setWorkspaceBackground(I)V

    .line 1720
    iput-boolean v10, p0, Lnet/oneplus/h2launcher/Launcher;->mPaused:Z

    .line 1721
    iget-boolean v8, p0, Lnet/oneplus/h2launcher/Launcher;->mRestoring:Z

    if-nez v8, :cond_3

    iget-boolean v8, p0, Lnet/oneplus/h2launcher/Launcher;->mOnResumeNeedsLoad:Z

    if-eqz v8, :cond_4

    .line 1722
    :cond_3
    invoke-direct {p0, v9}, Lnet/oneplus/h2launcher/Launcher;->setWorkspaceLoading(Z)V

    .line 1727
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1728
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mModel:Lnet/oneplus/h2launcher/LauncherModel;

    const/16 v11, -0x3e9

    invoke-virtual {v8, v11}, Lnet/oneplus/h2launcher/LauncherModel;->startLoader(I)V

    .line 1729
    iput-boolean v10, p0, Lnet/oneplus/h2launcher/Launcher;->mRestoring:Z

    .line 1730
    iput-boolean v10, p0, Lnet/oneplus/h2launcher/Launcher;->mOnResumeNeedsLoad:Z

    .line 1732
    :cond_4
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_a

    .line 1735
    const-wide/16 v6, 0x0

    .line 1740
    .local v6, "startTimeCallbacks":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_9

    .line 1741
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Runnable;

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    .line 1740
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1705
    .end local v1    # "i":I
    .end local v6    # "startTimeCallbacks":J
    :cond_5
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mOnResumeState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v11, Lnet/oneplus/h2launcher/Launcher$State;->APPS:Lnet/oneplus/h2launcher/Launcher$State;

    if-ne v8, v11, :cond_8

    .line 1706
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mWaitingForResume:Lnet/oneplus/h2launcher/BubbleTextView;

    if-eqz v8, :cond_6

    move v2, v9

    .line 1710
    .local v2, "launchedFromApp":Z
    :goto_2
    if-nez v2, :cond_7

    move v8, v9

    :goto_3
    invoke-virtual {p0, v10, v10, v8, v10}, Lnet/oneplus/h2launcher/Launcher;->showAppsView(ZZZZ)V

    goto :goto_0

    .end local v2    # "launchedFromApp":Z
    :cond_6
    move v2, v10

    .line 1706
    goto :goto_2

    .restart local v2    # "launchedFromApp":Z
    :cond_7
    move v8, v10

    .line 1710
    goto :goto_3

    .line 1712
    .end local v2    # "launchedFromApp":Z
    :cond_8
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mOnResumeState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v11, Lnet/oneplus/h2launcher/Launcher$State;->WIDGETS:Lnet/oneplus/h2launcher/Launcher$State;

    if-ne v8, v11, :cond_2

    .line 1713
    invoke-virtual {p0, v10, v10}, Lnet/oneplus/h2launcher/Launcher;->showWidgetsView(ZZ)V

    goto :goto_0

    .line 1743
    .restart local v1    # "i":I
    .restart local v6    # "startTimeCallbacks":J
    :cond_9
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1749
    .end local v1    # "i":I
    .end local v6    # "startTimeCallbacks":J
    :cond_a
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_c

    .line 1750
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_b

    .line 1751
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Runnable;

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    .line 1750
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1753
    :cond_b
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1758
    .end local v1    # "i":I
    :cond_c
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mWaitingForResume:Lnet/oneplus/h2launcher/BubbleTextView;

    if-eqz v8, :cond_d

    .line 1760
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mWaitingForResume:Lnet/oneplus/h2launcher/BubbleTextView;

    invoke-virtual {v8, v10}, Lnet/oneplus/h2launcher/BubbleTextView;->setStayPressed(Z)V

    .line 1767
    :cond_d
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v8

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Workspace;->reinflateWidgetsIfNecessary()V

    .line 1772
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Workspace;->isInNormalMode()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1773
    invoke-virtual {p0, v10}, Lnet/oneplus/h2launcher/Launcher;->bindSearchProviderChanged(Z)V

    .line 1780
    :cond_e
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Workspace;->getCustomContentCallbacks()Lnet/oneplus/h2launcher/Launcher$CustomContentCallbacks;

    move-result-object v8

    if-eqz v8, :cond_f

    .line 1784
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Workspace;->isOnOrMovingToCustomContent()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1785
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Workspace;->getCustomContentCallbacks()Lnet/oneplus/h2launcher/Launcher$CustomContentCallbacks;

    move-result-object v8

    invoke-interface {v8, v9}, Lnet/oneplus/h2launcher/Launcher$CustomContentCallbacks;->onShow(Z)V

    .line 1788
    :cond_f
    sget-object v8, Lnet/oneplus/h2launcher/Workspace$State;->NORMAL:Lnet/oneplus/h2launcher/Workspace$State;

    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v9}, Lnet/oneplus/h2launcher/Workspace;->getState()Lnet/oneplus/h2launcher/Workspace$State;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lnet/oneplus/h2launcher/Launcher;->updateInteraction(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;)V

    .line 1789
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Workspace;->onResume()V

    .line 1791
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isWorkspaceLoading()Z

    move-result v8

    if-nez v8, :cond_10

    .line 1793
    invoke-static {p0}, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->disableAndFlushInstallQueue(Landroid/content/Context;)V

    .line 1796
    :cond_10
    invoke-direct {p0, v10}, Lnet/oneplus/h2launcher/Launcher;->executePendingAction(Z)V

    .line 1798
    iget-boolean v8, p0, Lnet/oneplus/h2launcher/Launcher;->mShowWorkspaceFromNewIntent:Z

    if-nez v8, :cond_11

    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->isFromPickOrCrop()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 1799
    iget v8, p0, Lnet/oneplus/h2launcher/Launcher;->mResultCode:I

    const/16 v9, 0x60

    if-ne v8, v9, :cond_14

    .line 1800
    const v8, 0x7f0b003c

    invoke-virtual {p0, v8}, Lnet/oneplus/h2launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1801
    .local v3, "message":Ljava/lang/String;
    invoke-static {p0, v3, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 1820
    .end local v3    # "message":Ljava/lang/String;
    :cond_11
    :goto_5
    iput-boolean v10, p0, Lnet/oneplus/h2launcher/Launcher;->mShowWorkspaceFromNewIntent:Z

    .line 1821
    iput v12, p0, Lnet/oneplus/h2launcher/Launcher;->mRequestCode:I

    .line 1822
    iput v12, p0, Lnet/oneplus/h2launcher/Launcher;->mResultCode:I

    .line 1823
    const/4 v8, 0x0

    iput-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mData:Landroid/content/Intent;

    .line 1825
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v8, :cond_12

    .line 1826
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v8}, Lnet/oneplus/h2launcher/LauncherCallbacks;->onResume()V

    .line 1829
    :cond_12
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v8

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/oos/StyleManager;->showDynamicIcon()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1830
    invoke-static {}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->getInstance()Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;

    move-result-object v8

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->requestDynamicIconsDataChange()V

    .line 1831
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->doWorkspaceOrFolderIconAnimation()V

    .line 1833
    :cond_13
    return-void

    .line 1803
    :cond_14
    sget-object v8, Lnet/oneplus/h2launcher/Workspace$State;->WALLPAPERS:Lnet/oneplus/h2launcher/Workspace$State;

    iget-object v9, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v9}, Lnet/oneplus/h2launcher/Workspace;->getState()Lnet/oneplus/h2launcher/Workspace$State;

    move-result-object v9

    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/Workspace$State;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 1805
    invoke-virtual {p0, v10}, Lnet/oneplus/h2launcher/Launcher;->showWallpapersView(Z)V

    goto :goto_5

    .line 1808
    :cond_15
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Workspace;->getHomeScreenPageIndex()I

    move-result v0

    .line 1809
    .local v0, "homescreenPageIndex":I
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Workspace;->getCurrentPage()I

    move-result v8

    if-ge v8, v0, :cond_16

    .line 1811
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v8, v0}, Lnet/oneplus/h2launcher/Workspace;->snapToPageImmediately(I)V

    .line 1812
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/DragLayer;->setBackgroundAlpha(F)V

    .line 1814
    :cond_16
    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/DragLayer;->snapshot()V

    .line 1815
    invoke-virtual {p0, v10}, Lnet/oneplus/h2launcher/Launcher;->showWallpapersView(Z)V

    goto :goto_5
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v2, -0x1

    .line 3123
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 3124
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3158
    :cond_0
    :goto_0
    return-void

    .line 3128
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 3129
    const-string v0, "launcher.current_screen"

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    .line 3130
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->getCurrentPageOffsetFromCustomContent()I

    move-result v1

    .line 3129
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3132
    :cond_2
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3134
    const-string v0, "launcher.state"

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher$State;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3137
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->closeFolder()V

    .line 3139
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    iget-wide v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    iget-wide v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWaitingForResult:Z

    if-eqz v0, :cond_3

    .line 3141
    const-string v0, "launcher.add_container"

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    iget-wide v2, v1, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3142
    const-string v0, "launcher.add_screen"

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    iget-wide v2, v1, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3143
    const-string v0, "launcher.add_cell_x"

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    iget v1, v1, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3144
    const-string v0, "launcher.add_cell_y"

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    iget v1, v1, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3145
    const-string v0, "launcher.add_span_x"

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    iget v1, v1, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3146
    const-string v0, "launcher.add_span_y"

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    iget v1, v1, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3147
    const-string v0, "launcher.add_widget_info"

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddWidgetInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3148
    const-string v0, "launcher.add_widget_id"

    iget v1, p0, Lnet/oneplus/h2launcher/Launcher;->mPendingAddWidgetId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3153
    :cond_3
    const-string v0, "launcher.view_ids"

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mItemIdToViewId:Lnet/oneplus/h2launcher/util/SerializableSparseIntArray;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3155
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 3156
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v0, p1}, Lnet/oneplus/h2launcher/LauncherCallbacks;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method protected onScrollInteraction()V
    .locals 1

    .prologue
    .line 2463
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/Launcher;->executePendingAction(Z)V

    .line 2464
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mUtilsButtonClicked:[Z

    .line 2465
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->updateUtilsButtonVisibility()V

    .line 2466
    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3472
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Lnet/oneplus/h2launcher/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 3474
    return v1
.end method

.method public onSettingsChanged(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "settings"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 914
    const-string v0, "pref_allowRotation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mUpdateOrientationRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/Launcher;->waitUntilResume(Ljava/lang/Runnable;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 916
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mUpdateOrientationRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 919
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 1651
    const-string v2, "Launcher"

    const-string v3, "onStart"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    invoke-super {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->onStart()V

    .line 1653
    const/4 v2, 0x1

    invoke-static {v2}, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;->setIsVisible(Z)V

    .line 1655
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v2, :cond_0

    .line 1656
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v2}, Lnet/oneplus/h2launcher/LauncherCallbacks;->onStart()V

    .line 1659
    :cond_0
    invoke-static {}, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->getInstance()Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;

    move-result-object v2

    invoke-virtual {v2, p0}, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->onLauncherStart(Landroid/content/Context;)V

    .line 1661
    invoke-static {}, Lnet/oneplus/h2launcher/Utilities;->isNOrAbove()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1662
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    .line 1664
    .local v0, "app":Lnet/oneplus/h2launcher/LauncherAppState;
    :try_start_0
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getAppWidgetHost()Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->startListening()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1671
    .end local v0    # "app":Lnet/oneplus/h2launcher/LauncherAppState;
    :cond_1
    :goto_0
    return-void

    .line 1665
    .restart local v0    # "app":Lnet/oneplus/h2launcher/LauncherAppState;
    :catch_0
    move-exception v1

    .line 1668
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string v2, "Launcher"

    const-string v3, "startListening#"

    invoke-static {v2, v3, v1}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStartReordering()V
    .locals 1

    .prologue
    .line 7252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher;->mIsReordering:Z

    .line 7253
    return-void
.end method

.method protected onStop()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1605
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStop# waiting for result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lnet/oneplus/h2launcher/Launcher;->mWaitingForResult:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    invoke-super {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->onStop()V

    .line 1607
    invoke-static {v5}, Lnet/oneplus/h2launcher/FirstFrameAnimatorHelper;->setIsVisible(Z)V

    .line 1611
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Workspace;->getCustomContentCallbacks()Lnet/oneplus/h2launcher/Launcher$CustomContentCallbacks;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1612
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Workspace;->getCustomContentCallbacks()Lnet/oneplus/h2launcher/Launcher$CustomContentCallbacks;

    move-result-object v2

    invoke-interface {v2, v5}, Lnet/oneplus/h2launcher/Launcher$CustomContentCallbacks;->onHide(Z)V

    .line 1615
    :cond_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v2, :cond_1

    .line 1616
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v2}, Lnet/oneplus/h2launcher/LauncherCallbacks;->onStop()V

    .line 1619
    :cond_1
    invoke-static {}, Lnet/oneplus/h2launcher/Utilities;->isNOrAbove()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1620
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    .line 1621
    .local v0, "app":Lnet/oneplus/h2launcher/LauncherAppState;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getAppWidgetHost()Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->stopListening()V

    .line 1625
    .end local v0    # "app":Lnet/oneplus/h2launcher/LauncherAppState;
    :cond_2
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isCustomizationsViewVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mCustomizationsView:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    if-eqz v2, :cond_3

    .line 1626
    const-string v2, "Launcher"

    const-string v3, "onStop#customizationsView saveCustomizations"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mCustomizationsView:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->saveCustomizations()V

    .line 1629
    :cond_3
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/Launcher;->mWaitingForResult:Z

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isWallpapersViewVisible()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mWallpapersView:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    if-eqz v2, :cond_4

    .line 1631
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mWallpapersView:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->saveWallpaperCustomizations()V

    .line 1633
    new-instance v1, Lnet/oneplus/h2launcher/Launcher$13;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/Launcher$13;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    .line 1643
    .local v1, "runnable":Ljava/lang/Runnable;
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mWallpapersView:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    invoke-virtual {v2, v1}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->waitUntilWallpaperSaved(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1644
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1647
    .end local v1    # "runnable":Ljava/lang/Runnable;
    :cond_4
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 3904
    const/4 v0, 0x0

    return v0
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 5231
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->onTrimMemory(I)V

    .line 5232
    const/16 v0, 0x14

    if-lt p1, v0, :cond_0

    .line 5235
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->releaseMemory()I

    .line 5240
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v0, :cond_1

    .line 5241
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v0, p1}, Lnet/oneplus/h2launcher/LauncherCallbacks;->onTrimMemory(I)V

    .line 5245
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWallpapersView:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    if-eqz v0, :cond_2

    .line 5246
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWallpapersView:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->onSystemLowMemory(I)V

    .line 5250
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mGlobalSearchController:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;

    if-eqz v0, :cond_3

    .line 5251
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mGlobalSearchController:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->onSystemLowMemory(I)V

    .line 5253
    :cond_3
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 2038
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->onWindowFocusChanged(Z)V

    .line 2039
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/Launcher;->mHasFocus:Z

    .line 2041
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 2042
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v0, p1}, Lnet/oneplus/h2launcher/LauncherCallbacks;->onWindowFocusChanged(Z)V

    .line 2044
    :cond_0
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 2721
    if-nez p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/Launcher;->mVisible:Z

    .line 2722
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->updateAutoAdvanceState()V

    .line 2726
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/Launcher;->mVisible:Z

    if-eqz v1, :cond_1

    .line 2727
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspaceLoading:Z

    if-nez v1, :cond_0

    .line 2728
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2732
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v1, Lnet/oneplus/h2launcher/Launcher$24;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/Launcher$24;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 2758
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_0
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->clearTypedText()V

    .line 2760
    :cond_1
    return-void

    .line 2721
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onWorkspaceLockedChanged()V
    .locals 1

    .prologue
    .line 3502
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 3503
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v0}, Lnet/oneplus/h2launcher/LauncherCallbacks;->onWorkspaceLockedChanged()V

    .line 3505
    :cond_0
    return-void
.end method

.method public openFolder(Lnet/oneplus/h2launcher/FolderIcon;)V
    .locals 6
    .param p1, "folderIcon"    # Lnet/oneplus/h2launcher/FolderIcon;

    .prologue
    const/4 v5, 0x1

    .line 4988
    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Workspace;->disableLayoutTransitions()V

    .line 4989
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/FolderIcon;->getFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v0

    .line 4990
    .local v0, "folder":Lnet/oneplus/h2launcher/Folder;
    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Workspace;->getOpenFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v2

    .line 4991
    .local v2, "openFolder":Lnet/oneplus/h2launcher/Folder;
    :goto_0
    if-eqz v2, :cond_0

    if-eq v2, v0, :cond_0

    .line 4993
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->closeFolder()V

    .line 4996
    :cond_0
    iget-object v1, v0, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    .line 4998
    .local v1, "info":Lnet/oneplus/h2launcher/FolderInfo;
    iput-boolean v5, v1, Lnet/oneplus/h2launcher/FolderInfo;->opened:Z

    .line 5001
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->canReorder:Z

    .line 5004
    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher;->mDragController:Lnet/oneplus/h2launcher/DragController;

    invoke-virtual {v3, v0}, Lnet/oneplus/h2launcher/DragController;->removeDropTarget(Lnet/oneplus/h2launcher/DropTarget;)V

    .line 5005
    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher;->mDragController:Lnet/oneplus/h2launcher/DragController;

    invoke-virtual {v3, v0}, Lnet/oneplus/h2launcher/DragController;->addDropTarget(Lnet/oneplus/h2launcher/DropTarget;)V

    .line 5007
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Folder;->open()V

    .line 5011
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Lnet/oneplus/h2launcher/Folder;->sendAccessibilityEvent(I)V

    .line 5012
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v3

    const/16 v4, 0x800

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/DragLayer;->sendAccessibilityEvent(I)V

    .line 5014
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/FolderIcon;->getFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v3

    invoke-virtual {p0, v3, v5}, Lnet/oneplus/h2launcher/Launcher;->showFoldersView(Lnet/oneplus/h2launcher/Folder;Z)V

    .line 5015
    return-void

    .line 4990
    .end local v1    # "info":Lnet/oneplus/h2launcher/FolderInfo;
    .end local v2    # "openFolder":Lnet/oneplus/h2launcher/Folder;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected overrideWallpaperDimensions()Z
    .locals 1

    .prologue
    .line 7003
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v0}, Lnet/oneplus/h2launcher/LauncherCallbacks;->overrideWallpaperDimensions()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected populateCustomContentContainer()V
    .locals 3

    .prologue
    .line 1019
    new-instance v0, Lnet/oneplus/h2launcher/Launcher$8;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/Launcher$8;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    .line 1060
    .local v0, "callback":Lnet/oneplus/h2launcher/Launcher$CustomContentCallbacks;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getQuickPageView()Landroid/view/ViewGroup;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1061
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->createQuickPage()V

    .line 1064
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getQuickPageView()Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x7f0b00a0

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lnet/oneplus/h2launcher/Launcher;->addToCustomContentPage(Landroid/view/View;Lnet/oneplus/h2launcher/Launcher$CustomContentCallbacks;Ljava/lang/String;)V

    .line 1065
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->invalidateScheme()V

    .line 1066
    return-void
.end method

.method protected refreshCustomContentOnStateChange()V
    .locals 0

    .prologue
    .line 1092
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->invalidateHasCustomContentToLeft()V

    .line 1093
    return-void
.end method

.method public removeAppWidget(Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;)V
    .locals 1
    .param p1, "launcherInfo"    # Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    .prologue
    .line 2842
    iget-object v0, p1, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Launcher;->removeWidgetToAutoAdvance(Landroid/view/View;)V

    .line 2843
    const/4 v0, 0x0

    iput-object v0, p1, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 2844
    return-void
.end method

.method removeFolder(Lnet/oneplus/h2launcher/FolderInfo;)V
    .locals 4
    .param p1, "folder"    # Lnet/oneplus/h2launcher/FolderInfo;

    .prologue
    .line 3661
    sget-object v0, Lnet/oneplus/h2launcher/Launcher;->sFolders:Lnet/oneplus/h2launcher/util/LongArrayMap;

    iget-wide v2, p1, Lnet/oneplus/h2launcher/FolderInfo;->id:J

    invoke-virtual {v0, v2, v3}, Lnet/oneplus/h2launcher/util/LongArrayMap;->remove(J)V

    .line 3662
    return-void
.end method

.method public removeItem(Landroid/view/View;Lnet/oneplus/h2launcher/ItemInfo;Z)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "itemInfo"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p3, "deleteFromDb"    # Z

    .prologue
    .line 3672
    instance-of v1, p2, Lnet/oneplus/h2launcher/FolderInfo;

    if-eqz v1, :cond_1

    move-object v0, p2

    .line 3673
    check-cast v0, Lnet/oneplus/h2launcher/FolderInfo;

    .line 3674
    .local v0, "folderInfo":Lnet/oneplus/h2launcher/FolderInfo;
    instance-of v1, p1, Lnet/oneplus/h2launcher/FolderIcon;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 3675
    check-cast v1, Lnet/oneplus/h2launcher/FolderIcon;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/FolderIcon;->removeListeners()V

    .line 3677
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1, p1}, Lnet/oneplus/h2launcher/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    .line 3678
    if-eqz p3, :cond_1

    .line 3679
    invoke-static {p0, v0}, Lnet/oneplus/h2launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;)V

    .line 3682
    .end local v0    # "folderInfo":Lnet/oneplus/h2launcher/FolderInfo;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method removeWidgetToAutoAdvance(Landroid/view/View;)V
    .locals 1
    .param p1, "hostView"    # Landroid/view/View;

    .prologue
    .line 2835
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2836
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2837
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->updateAutoAdvanceState()V

    .line 2839
    :cond_0
    return-void
.end method

.method public resetLoaderTask()V
    .locals 1

    .prologue
    .line 7411
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher;->mIsLoaderTaskFinished:Z

    .line 7412
    return-void
.end method

.method public resizeIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 7282
    invoke-static {p0}, Lnet/oneplus/h2launcher/Utilities;->getIconScaleValue(Landroid/content/Context;)F

    move-result v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mDeviceProfile:Lnet/oneplus/h2launcher/DeviceProfile;

    iget v2, v2, Lnet/oneplus/h2launcher/DeviceProfile;->iconSizePx:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 7283
    .local v0, "iconSizePx":I
    invoke-virtual {p1, v3, v3, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7284
    return-void
.end method

.method sendAdvanceMessage(J)V
    .locals 5
    .param p1, "delay"    # J

    .prologue
    const/4 v2, 0x1

    .line 2763
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2764
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2765
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2766
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lnet/oneplus/h2launcher/Launcher;->mAutoAdvanceSentTime:J

    .line 2767
    return-void
.end method

.method public setAllAppsButton(Landroid/view/View;)V
    .locals 0
    .param p1, "allAppsButton"    # Landroid/view/View;

    .prologue
    .line 2472
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher;->mAllAppsButton:Landroid/view/View;

    .line 2473
    return-void
.end method

.method public setCustomizationsView(Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;)V
    .locals 2
    .param p1, "customizationsContainerView"    # Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    .prologue
    .line 2884
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher;->mCustomizationsView:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    .line 2885
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mCustomizationsView:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->setVisibility(I)V

    .line 2886
    return-void
.end method

.method public setIconPackNeedChangeToDefault(Z)V
    .locals 0
    .param p1, "isNeeded"    # Z

    .prologue
    .line 1908
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/Launcher;->mIconPackNeedChangeToDefault:Z

    .line 1909
    return-void
.end method

.method public setInSearchMode()V
    .locals 1

    .prologue
    .line 7462
    sget-object v0, Lnet/oneplus/h2launcher/Launcher$State;->SEARCH:Lnet/oneplus/h2launcher/Launcher$State;

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    .line 7463
    return-void
.end method

.method public setLauncherCallbacks(Lnet/oneplus/h2launcher/LauncherCallbacks;)Z
    .locals 2
    .param p1, "callbacks"    # Lnet/oneplus/h2launcher/LauncherCallbacks;

    .prologue
    .line 942
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    .line 943
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    new-instance v1, Lnet/oneplus/h2launcher/Launcher$7;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/Launcher$7;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    invoke-interface {v0, v1}, Lnet/oneplus/h2launcher/LauncherCallbacks;->setLauncherSearchCallback(Ljava/lang/Object;)V

    .line 984
    const/4 v0, 0x1

    return v0
.end method

.method public setLauncherOverlay(Lnet/oneplus/h2launcher/Launcher$LauncherOverlay;)V
    .locals 2
    .param p1, "overlay"    # Lnet/oneplus/h2launcher/Launcher$LauncherOverlay;

    .prologue
    .line 935
    if-eqz p1, :cond_0

    .line 936
    new-instance v0, Lnet/oneplus/h2launcher/Launcher$LauncherOverlayCallbacksImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/oneplus/h2launcher/Launcher$LauncherOverlayCallbacksImpl;-><init>(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/Launcher$1;)V

    invoke-interface {p1, v0}, Lnet/oneplus/h2launcher/Launcher$LauncherOverlay;->setOverlayCallbacks(Lnet/oneplus/h2launcher/Launcher$LauncherOverlayCallbacks;)V

    .line 938
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/Workspace;->setLauncherOverlay(Lnet/oneplus/h2launcher/Launcher$LauncherOverlay;)V

    .line 939
    return-void
.end method

.method public setLauncherViewAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 7458
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 7459
    return-void
.end method

.method public setLoadOnResume()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5987
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/Launcher;->mPaused:Z

    if-eqz v1, :cond_0

    .line 5989
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher;->mOnResumeNeedsLoad:Z

    .line 5992
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNeedUpdateContactDb(Z)V
    .locals 0
    .param p1, "needUpdateContactDb"    # Z

    .prologue
    .line 7494
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/Launcher;->mNeedUpdateContactDb:Z

    .line 7495
    return-void
.end method

.method setOrientation()V
    .locals 1

    .prologue
    .line 557
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher;->mRotationEnabled:Z

    if-eqz v0, :cond_0

    .line 558
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Launcher;->unlockScreenOrientation(Z)V

    .line 563
    :goto_0
    return-void

    .line 560
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Launcher;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public setOutSearchMode()V
    .locals 1

    .prologue
    .line 7466
    sget-object v0, Lnet/oneplus/h2launcher/Launcher$State;->WORKSPACE:Lnet/oneplus/h2launcher/Launcher$State;

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    .line 7467
    return-void
.end method

.method public setWaitingForResult(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 3494
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isWorkspaceLocked()Z

    move-result v0

    .line 3495
    .local v0, "isLocked":Z
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/Launcher;->mWaitingForResult:Z

    .line 3496
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isWorkspaceLocked()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3497
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->onWorkspaceLockedChanged()V

    .line 3499
    :cond_0
    return-void
.end method

.method public setWallpapersView(Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;)V
    .locals 2
    .param p1, "wallpapersView"    # Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    .prologue
    .line 2897
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher;->mWallpapersView:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    .line 2898
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWallpapersView:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->setVisibility(I)V

    .line 2899
    return-void
.end method

.method public setupCustomizationsButton()V
    .locals 2

    .prologue
    .line 2424
    const v1, 0x7f11018f

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2425
    .local v0, "customizationsButton":Landroid/view/View;
    new-instance v1, Lnet/oneplus/h2launcher/Launcher$22;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/Launcher$22;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2433
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getHapticFeedbackTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2434
    return-void
.end method

.method setupUtilsPanel()V
    .locals 9

    .prologue
    .line 2361
    iget-object v7, p0, Lnet/oneplus/h2launcher/Launcher;->mUtilsPanel:Landroid/view/ViewGroup;

    if-nez v7, :cond_0

    .line 2362
    const-string v7, "Launcher"

    const-string v8, "setupUtilsPanel# invalid utils panel"

    invoke-static {v7, v8}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2381
    :goto_0
    return-void

    .line 2365
    :cond_0
    iget-object v7, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    if-nez v7, :cond_1

    .line 2366
    const-string v7, "Launcher"

    const-string v8, "setupUtilsPanel# invalid workspace"

    invoke-static {v7, v8}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2370
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2371
    .local v4, "resources":Landroid/content/res/Resources;
    const v7, 0x7f0c0138

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 2372
    .local v6, "statusBarHeight":I
    const/4 v7, 0x1

    invoke-static {p0, v7}, Lnet/oneplus/h2launcher/Utilities;->getScreenDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v7

    iget v5, v7, Landroid/graphics/Point;->y:I

    .line 2373
    .local v5, "screenHeight":I
    const v7, 0x7f0f0011

    .line 2374
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x42c80000    # 100.0f

    div-float v2, v7, v8

    .line 2375
    .local v2, "overviewShrinkPercentage":F
    iget-object v7, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Workspace;->getNormalChildHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v2

    float-to-int v0, v7

    .line 2376
    .local v0, "cellHeight":I
    iget-object v7, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    iget-object v7, v7, Lnet/oneplus/h2launcher/Workspace;->mInsets:Landroid/graphics/Rect;

    iget v1, v7, Landroid/graphics/Rect;->bottom:I

    .line 2377
    .local v1, "navigationHeight":I
    iget-object v7, p0, Lnet/oneplus/h2launcher/Launcher;->mUtilsPanel:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;

    .line 2378
    .local v3, "params":Lnet/oneplus/h2launcher/DragLayer$LayoutParams;
    sub-int v7, v5, v6

    sub-int/2addr v7, v1

    sub-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v0

    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    .line 2379
    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Workspace;->getOverviewModeTranslationY()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    .line 2380
    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Workspace;->getPaddingBottom()I

    move-result v8

    int-to-float v8, v8

    if-lez v1, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    .end local v2    # "overviewShrinkPercentage":F
    :cond_2
    mul-float/2addr v8, v2

    float-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, v3, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method public setupWallpapersButton()V
    .locals 3

    .prologue
    .line 2387
    const-string v1, "Launcher"

    const-string v2, "[SNDMS-1030] setupWallpapersButton"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2388
    const v1, 0x7f11018c

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2389
    .local v0, "wallpaperButton":Landroid/view/View;
    new-instance v1, Lnet/oneplus/h2launcher/Launcher$21;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/Launcher$21;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2417
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getHapticFeedbackTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2418
    return-void
.end method

.method public shouldUpdateDynamicIconState()Z
    .locals 1

    .prologue
    .line 7506
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->isInNormalMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method showAppsView(ZZZZ)V
    .locals 1
    .param p1, "animated"    # Z
    .param p2, "resetListToTop"    # Z
    .param p3, "updatePredictedApps"    # Z
    .param p4, "focusSearchBar"    # Z

    .prologue
    .line 5410
    if-eqz p2, :cond_0

    .line 5411
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAllAppsViewController:Lnet/oneplus/h2launcher/AllAppsViewController;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/AllAppsViewController;->scrollToTop()V

    .line 5413
    :cond_0
    if-eqz p3, :cond_1

    .line 5414
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->tryAndUpdatePredictedApps()V

    .line 5416
    :cond_1
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleManager;->showAllApps()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5417
    sget-object v0, Lnet/oneplus/h2launcher/Launcher$State;->APPS:Lnet/oneplus/h2launcher/Launcher$State;

    invoke-direct {p0, v0, p1, p4}, Lnet/oneplus/h2launcher/Launcher;->showAppsOrWidgetsOrCustomizationsOrWallpaper(Lnet/oneplus/h2launcher/Launcher$State;ZZ)Z

    .line 5419
    :cond_2
    return-void
.end method

.method public showCustomizationsClingIfNecessary()V
    .locals 1

    .prologue
    .line 7153
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mClings:Lnet/oneplus/h2launcher/LauncherClings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mClings:Lnet/oneplus/h2launcher/LauncherClings;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherClings;->shouldShowWallpapersCling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7154
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mClings:Lnet/oneplus/h2launcher/LauncherClings;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherClings;->showWallpapersCling()V

    .line 7156
    :cond_0
    return-void
.end method

.method public showCustomizationsView(Z)V
    .locals 2
    .param p1, "animated"    # Z

    .prologue
    .line 5482
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v1, Lnet/oneplus/h2launcher/Launcher$State;->SHRUNKEN_ALLAPPS:Lnet/oneplus/h2launcher/Launcher$State;

    if-eq v0, v1, :cond_0

    .line 5483
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mCustomizationsView:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->resetPageToZero()V

    .line 5485
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/Launcher$State;->CUSTOMIZATIONS:Lnet/oneplus/h2launcher/Launcher$State;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lnet/oneplus/h2launcher/Launcher;->showAppsOrWidgetsOrCustomizationsOrWallpaper(Lnet/oneplus/h2launcher/Launcher$State;ZZ)Z

    .line 5486
    return-void
.end method

.method public showFirstRunActivity()Z
    .locals 2

    .prologue
    .line 7040
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->shouldRunFirstRunActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7041
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->hasFirstRunActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7042
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getFirstRunActivity()Landroid/content/Intent;

    move-result-object v0

    .line 7043
    .local v0, "firstRunIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 7044
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 7045
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->markFirstRunActivityShown()V

    .line 7046
    const/4 v1, 0x1

    .line 7049
    .end local v0    # "firstRunIntent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method showFirstRunClings()V
    .locals 2

    .prologue
    .line 7123
    new-instance v0, Lnet/oneplus/h2launcher/LauncherClings;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/LauncherClings;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mClings:Lnet/oneplus/h2launcher/LauncherClings;

    .line 7124
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mClings:Lnet/oneplus/h2launcher/LauncherClings;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherClings;->shouldShowFirstRunOrMigrationClings()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7126
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getHeaderFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7127
    const-string v0, "Launcher"

    const-string v1, "delete the header file failed"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7130
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mModel:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/LauncherModel;->canMigrateFromOldLauncherDb(Lnet/oneplus/h2launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7131
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mClings:Lnet/oneplus/h2launcher/LauncherClings;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherClings;->showMigrationCling()V

    .line 7136
    :cond_1
    :goto_0
    return-void

    .line 7133
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mClings:Lnet/oneplus/h2launcher/LauncherClings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/LauncherClings;->showLongPressCling(Z)V

    goto :goto_0
.end method

.method public showFolderTutorial()V
    .locals 1

    .prologue
    .line 7139
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mClings:Lnet/oneplus/h2launcher/LauncherClings;

    if-nez v0, :cond_0

    .line 7140
    new-instance v0, Lnet/oneplus/h2launcher/LauncherClings;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/LauncherClings;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mClings:Lnet/oneplus/h2launcher/LauncherClings;

    .line 7142
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mClings:Lnet/oneplus/h2launcher/LauncherClings;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherClings;->showFolderTutorial()V

    .line 7143
    return-void
.end method

.method public showFoldersView(Lnet/oneplus/h2launcher/Folder;Z)V
    .locals 1
    .param p1, "current"    # Lnet/oneplus/h2launcher/Folder;
    .param p2, "animated"    # Z

    .prologue
    .line 5425
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mFoldersView:Lnet/oneplus/h2launcher/FoldersContainerView;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/FoldersContainerView;->addFolder(Lnet/oneplus/h2launcher/Folder;)V

    .line 5426
    invoke-virtual {p0, p2}, Lnet/oneplus/h2launcher/Launcher;->showFoldersView(Z)V

    .line 5427
    return-void
.end method

.method public showFoldersView(Z)V
    .locals 2
    .param p1, "animated"    # Z

    .prologue
    .line 5433
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mFoldersView:Lnet/oneplus/h2launcher/FoldersContainerView;

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/FoldersContainerView;->adjustMarginForIconRearrangeMode(Landroid/content/Context;)V

    .line 5434
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mStateTransitionAnimation:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->getState()Lnet/oneplus/h2launcher/Workspace$State;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToFolders(Lnet/oneplus/h2launcher/Workspace$State;Z)V

    .line 5436
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isIconRearrangementMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5438
    sget-object v0, Lnet/oneplus/h2launcher/Launcher$State;->FOLDER:Lnet/oneplus/h2launcher/Launcher$State;

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    .line 5440
    :cond_0
    return-void
.end method

.method public showGlobalSearch()V
    .locals 1

    .prologue
    .line 3310
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mGlobalSearchController:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->showGlobalSearch()V

    .line 3311
    return-void
.end method

.method public showIconRearrangementView(Z)V
    .locals 2
    .param p1, "animated"    # Z

    .prologue
    .line 5519
    sget-object v0, Lnet/oneplus/h2launcher/Launcher$State;->ICON_REARRANGEMENT:Lnet/oneplus/h2launcher/Launcher$State;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lnet/oneplus/h2launcher/Launcher;->showAppsOrWidgetsOrCustomizationsOrWallpaper(Lnet/oneplus/h2launcher/Launcher$State;ZZ)Z

    .line 5520
    return-void
.end method

.method protected showIntroScreen()V
    .locals 2

    .prologue
    .line 7086
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getIntroScreen()Landroid/view/View;

    move-result-object v0

    .line 7087
    .local v0, "introScreen":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/Launcher;->changeWallpaperVisiblity(Z)V

    .line 7088
    if-eqz v0, :cond_0

    .line 7089
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/DragLayer;->showOverlayView(Landroid/view/View;)V

    .line 7091
    :cond_0
    return-void
.end method

.method public showOutOfSpaceMessage(Z)V
    .locals 3
    .param p1, "isHotseatLayout"    # Z

    .prologue
    .line 2847
    if-eqz p1, :cond_0

    const v0, 0x7f0b0066

    .line 2848
    .local v0, "strId":I
    :goto_0
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2849
    return-void

    .line 2847
    .end local v0    # "strId":I
    :cond_0
    const v0, 0x7f0b008d

    goto :goto_0
.end method

.method public showOverviewMode(Z)V
    .locals 10
    .param p1, "animated"    # Z

    .prologue
    const/4 v6, 0x0

    .line 5355
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 5356
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    .line 5357
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isWallpapersViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWallpapersView:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    if-eqz v0, :cond_0

    .line 5358
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWallpapersView:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->saveWallpaperCustomizations()V

    .line 5360
    move v7, p1

    .line 5361
    .local v7, "a":Z
    new-instance v9, Lnet/oneplus/h2launcher/Launcher$40;

    invoke-direct {v9, p0, v7}, Lnet/oneplus/h2launcher/Launcher$40;-><init>(Lnet/oneplus/h2launcher/Launcher;Z)V

    .line 5369
    .local v9, "r":Ljava/lang/Runnable;
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWallpapersView:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    invoke-virtual {v0, v9}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->waitUntilWallpaperSaved(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5403
    .end local v7    # "a":Z
    .end local v9    # "r":Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 5374
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->setupUtilsPanel()V

    .line 5375
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Workspace;->setVisibility(I)V

    .line 5390
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mStateTransitionAnimation:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Workspace;->getState()Lnet/oneplus/h2launcher/Workspace$State;

    move-result-object v2

    sget-object v3, Lnet/oneplus/h2launcher/Workspace$State;->OVERVIEW:Lnet/oneplus/h2launcher/Workspace$State;

    const/4 v4, -0x1

    move v5, p1

    invoke-virtual/range {v0 .. v6}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToWorkspace(Lnet/oneplus/h2launcher/Launcher$State;Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;IZLjava/lang/Runnable;)V

    .line 5394
    sget-object v0, Lnet/oneplus/h2launcher/Launcher$State;->WORKSPACE:Lnet/oneplus/h2launcher/Launcher$State;

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    .line 5396
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->getNearestLayout()Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v8

    .line 5397
    .local v8, "cellLayout":Lnet/oneplus/h2launcher/CellLayout;
    if-eqz v8, :cond_1

    .line 5399
    invoke-virtual {v8, v6}, Lnet/oneplus/h2launcher/CellLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5402
    :cond_1
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->updateUtilsButtonVisibility()V

    goto :goto_0
.end method

.method public showShrunkenAllApps(Z)V
    .locals 2
    .param p1, "animated"    # Z

    .prologue
    .line 5493
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleManager;->showAllApps()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5495
    sget-object v0, Lnet/oneplus/h2launcher/Launcher$State;->SHRUNKEN_ALLAPPS:Lnet/oneplus/h2launcher/Launcher$State;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lnet/oneplus/h2launcher/Launcher;->showAppsOrWidgetsOrCustomizationsOrWallpaper(Lnet/oneplus/h2launcher/Launcher$State;ZZ)Z

    .line 5497
    :cond_0
    return-void
.end method

.method public showSwitchingLoadingView(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x0

    .line 7429
    if-eqz p1, :cond_0

    .line 7430
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v1

    new-instance v2, Lnet/oneplus/h2launcher/Launcher$63;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/Launcher$63;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/util/TaskWorker;->post(Ljava/lang/Runnable;)V

    .line 7455
    :goto_0
    return-void

    .line 7438
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    .line 7440
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v1

    .line 7439
    invoke-virtual {p0, v1, v2}, Lnet/oneplus/h2launcher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 7443
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 7444
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "show_switching_view"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 7445
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7447
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mSwitchingProgressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_2

    .line 7448
    const-string v1, "Launcher"

    const-string v2, "Switching dialog is null"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7452
    :cond_2
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mSwitchingProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 7453
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mSwitchingProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0
.end method

.method public showWallpapersView(Z)V
    .locals 2
    .param p1, "animated"    # Z

    .prologue
    .line 5504
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWallpapersView:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    if-eqz v0, :cond_1

    .line 5505
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v1, Lnet/oneplus/h2launcher/Launcher$State;->WALLPAPER:Lnet/oneplus/h2launcher/Launcher$State;

    if-eq v0, v1, :cond_0

    .line 5506
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWallpapersView:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->resetPageToZero()V

    .line 5508
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/Launcher$State;->WALLPAPER:Lnet/oneplus/h2launcher/Launcher$State;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lnet/oneplus/h2launcher/Launcher;->showAppsOrWidgetsOrCustomizationsOrWallpaper(Lnet/oneplus/h2launcher/Launcher$State;ZZ)Z

    .line 5512
    :goto_0
    return-void

    .line 5510
    :cond_1
    const-string v0, "Launcher"

    const-string v1, "wallpapers view is empty"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method showWidgetsView(ZZ)V
    .locals 2
    .param p1, "animated"    # Z
    .param p2, "resetPageToZero"    # Z

    .prologue
    .line 5464
    if-eqz p2, :cond_0

    .line 5465
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWidgetsView:Lnet/oneplus/h2launcher/widget/WidgetsContainerView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->scrollToTop()V

    .line 5467
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/Launcher$State;->WIDGETS:Lnet/oneplus/h2launcher/Launcher$State;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lnet/oneplus/h2launcher/Launcher;->showAppsOrWidgetsOrCustomizationsOrWallpaper(Lnet/oneplus/h2launcher/Launcher$State;ZZ)Z

    .line 5469
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWidgetsView:Lnet/oneplus/h2launcher/widget/WidgetsContainerView;

    new-instance v1, Lnet/oneplus/h2launcher/Launcher$42;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/Launcher$42;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->post(Ljava/lang/Runnable;)Z

    .line 5475
    return-void
.end method

.method showWorkspace(IZLjava/lang/Runnable;)V
    .locals 1
    .param p1, "snapToPage"    # I
    .param p2, "animated"    # Z
    .param p3, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 5269
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnet/oneplus/h2launcher/Launcher;->showWorkspace(IZLjava/lang/Runnable;Z)V

    .line 5270
    return-void
.end method

.method showWorkspace(IZLjava/lang/Runnable;Z)V
    .locals 15
    .param p1, "snapToPage"    # I
    .param p2, "animated"    # Z
    .param p3, "onCompleteRunnable"    # Ljava/lang/Runnable;
    .param p4, "hasOverviewEmptyScreen"    # Z

    .prologue
    .line 5273
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v6, Lnet/oneplus/h2launcher/Launcher$State;->WORKSPACE:Lnet/oneplus/h2launcher/Launcher$State;

    if-ne v1, v6, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    .line 5274
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->getState()Lnet/oneplus/h2launcher/Workspace$State;

    move-result-object v1

    sget-object v6, Lnet/oneplus/h2launcher/Workspace$State;->NORMAL:Lnet/oneplus/h2launcher/Workspace$State;

    if-eq v1, v6, :cond_3

    :cond_0
    const/4 v14, 0x1

    .line 5277
    .local v14, "changed":Z
    :goto_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isOnCustomContent()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5278
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v6, 0x8000000

    invoke-virtual {v1, v6}, Landroid/view/Window;->addFlags(I)V

    .line 5279
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestApplyInsets()V

    .line 5286
    :goto_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isWallpapersViewVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWallpapersView:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    if-eqz v1, :cond_5

    .line 5287
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/Launcher;->mShowWorkspaceWithoutSaveWallpaper:Z

    if-nez v1, :cond_1

    .line 5288
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWallpapersView:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->saveWallpaperCustomizations()V

    .line 5291
    :cond_1
    move/from16 v2, p1

    .line 5292
    .local v2, "s":I
    move/from16 v3, p2

    .local v3, "a":Z
    move/from16 v5, p4

    .line 5293
    .local v5, "h":Z
    move-object/from16 v4, p3

    .line 5294
    .local v4, "o":Ljava/lang/Runnable;
    new-instance v0, Lnet/oneplus/h2launcher/Launcher$39;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/Launcher$39;-><init>(Lnet/oneplus/h2launcher/Launcher;IZLjava/lang/Runnable;Z)V

    .line 5302
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWallpapersView:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->waitUntilWallpaperSaved(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5351
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v2    # "s":I
    .end local v3    # "a":Z
    .end local v4    # "o":Ljava/lang/Runnable;
    .end local v5    # "h":Z
    :cond_2
    :goto_2
    return-void

    .line 5274
    .end local v14    # "changed":Z
    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    .line 5281
    .restart local v14    # "changed":Z
    :cond_4
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v6, 0x8000000

    invoke-virtual {v1, v6}, Landroid/view/Window;->clearFlags(I)V

    .line 5282
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestApplyInsets()V

    goto :goto_1

    .line 5306
    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/oneplus/h2launcher/Launcher;->mShowWorkspaceWithoutSaveWallpaper:Z

    .line 5308
    if-eqz v14, :cond_6

    .line 5309
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lnet/oneplus/h2launcher/Workspace;->setVisibility(I)V

    .line 5310
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getIconRearrangementHelper()Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getIconRearrangementHelper()Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->hasLeftShortcut()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 5314
    const-string v1, "Launcher"

    const-string v6, "there are non-arranged icons, would be put on extraEmptyScreen"

    invoke-static {v1, v6}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5320
    :goto_3
    iget-object v6, p0, Lnet/oneplus/h2launcher/Launcher;->mStateTransitionAnimation:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    iget-object v7, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->getState()Lnet/oneplus/h2launcher/Workspace$State;

    move-result-object v8

    sget-object v9, Lnet/oneplus/h2launcher/Workspace$State;->NORMAL:Lnet/oneplus/h2launcher/Workspace$State;

    move/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    invoke-virtual/range {v6 .. v12}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToWorkspace(Lnet/oneplus/h2launcher/Launcher$State;Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;IZLjava/lang/Runnable;)V

    .line 5324
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mAllAppsButton:Landroid/view/View;

    if-eqz v1, :cond_6

    .line 5325
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mAllAppsButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 5329
    :cond_6
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->isInSearchMode()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5330
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mGlobalSearchController:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->hideGlobalSearchWithoutAnimation()V

    .line 5334
    :cond_7
    sget-object v1, Lnet/oneplus/h2launcher/Launcher$State;->WORKSPACE:Lnet/oneplus/h2launcher/Launcher$State;

    iput-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    .line 5337
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/oneplus/h2launcher/Launcher;->mUserPresent:Z

    .line 5338
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->updateAutoAdvanceState()V

    .line 5340
    if-eqz v14, :cond_8

    .line 5342
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v6, 0x20

    .line 5343
    invoke-virtual {v1, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 5346
    :cond_8
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->getNearestLayout()Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v13

    .line 5347
    .local v13, "cellLayout":Lnet/oneplus/h2launcher/CellLayout;
    if-eqz v13, :cond_2

    .line 5349
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Lnet/oneplus/h2launcher/CellLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 5315
    .end local v13    # "cellLayout":Lnet/oneplus/h2launcher/CellLayout;
    :cond_9
    if-eqz p4, :cond_a

    .line 5316
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->commitExtraEmptyScreen()J

    goto :goto_3

    .line 5318
    :cond_a
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Lnet/oneplus/h2launcher/Workspace;->removeExtraEmptyScreen(ZZ)V

    goto :goto_3
.end method

.method protected showWorkspace(IZZ)V
    .locals 1
    .param p1, "snapToPage"    # I
    .param p2, "animated"    # Z
    .param p3, "hasOverviewEmptyScreen"    # Z

    .prologue
    .line 5265
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lnet/oneplus/h2launcher/Launcher;->showWorkspace(IZLjava/lang/Runnable;Z)V

    .line 5266
    return-void
.end method

.method public showWorkspace(Z)V
    .locals 2
    .param p1, "animated"    # Z

    .prologue
    .line 5256
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lnet/oneplus/h2launcher/Launcher;->showWorkspace(IZLjava/lang/Runnable;)V

    .line 5257
    return-void
.end method

.method public showWorkspace(ZLjava/lang/Runnable;)V
    .locals 1
    .param p1, "animated"    # Z
    .param p2, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 5260
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lnet/oneplus/h2launcher/Launcher;->showWorkspace(IZLjava/lang/Runnable;)V

    .line 5262
    return-void
.end method

.method showWorkspaceSearchAndHotseat()V
    .locals 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7159
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Workspace;->setAlpha(F)V

    .line 7160
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mHotseatController:Lnet/oneplus/h2launcher/HotseatController;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/HotseatController;->setAlpha(F)V

    .line 7161
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mPageIndicators:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mPageIndicators:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 7162
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mSearchDropTargetBar:Lnet/oneplus/h2launcher/SearchDropTargetBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mSearchDropTargetBar:Lnet/oneplus/h2launcher/SearchDropTargetBar;

    sget-object v1, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;->SEARCH_BAR:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/SearchDropTargetBar;->animateToState(Lnet/oneplus/h2launcher/SearchDropTargetBar$State;I)V

    .line 7164
    :cond_2
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 3315
    invoke-direct {p0, p2}, Lnet/oneplus/h2launcher/Launcher;->onStartForResult(I)V

    .line 3316
    invoke-super {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3317
    return-void
.end method

.method public startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 14
    .param p1, "v"    # Landroid/view/View;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "tag"    # Ljava/lang/Object;

    .prologue
    .line 4762
    const/4 v5, 0x0

    .line 4763
    .local v5, "success":Z
    iget-boolean v10, p0, Lnet/oneplus/h2launcher/Launcher;->mIsSafeModeEnabled:Z

    if-eqz v10, :cond_0

    move-object/from16 v0, p2

    invoke-static {p0, v0}, Lnet/oneplus/h2launcher/Utilities;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 4764
    const v10, 0x7f0b00ae

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 4765
    const/4 v10, 0x0

    .line 4796
    :goto_0
    return v10

    .line 4768
    :cond_0
    const/4 v9, 0x0

    .line 4769
    .local v9, "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    :try_start_0
    const-string v10, "profile"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 4770
    const-string v10, "profile"

    const-wide/16 v12, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 4771
    .local v6, "serialNumber":J
    invoke-static {p0}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getUserForSerialNumber(J)Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v9

    .line 4776
    .end local v6    # "serialNumber":J
    :cond_1
    if-eqz p1, :cond_3

    const-string v10, "net.oneplus.h2launcher.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION"

    .line 4777
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    const/4 v8, 0x1

    .line 4778
    .local v8, "useLaunchAnimation":Z
    :goto_1
    if-eqz v8, :cond_4

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/Launcher;->getActivityLaunchOptions(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v4

    .line 4780
    .local v4, "optsBundle":Landroid/os/Bundle;
    :goto_2
    move-object/from16 v0, p3

    check-cast v0, Lnet/oneplus/h2launcher/ItemInfo;

    move-object v3, v0

    .line 4781
    .local v3, "item":Lnet/oneplus/h2launcher/ItemInfo;
    sget-boolean v10, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_MARSHMALLOW:Z

    if-eqz v10, :cond_5

    instance-of v10, v3, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v10, :cond_5

    iget v10, v3, Lnet/oneplus/h2launcher/ItemInfo;->itemType:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_2

    iget v10, v3, Lnet/oneplus/h2launcher/ItemInfo;->itemType:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_5

    :cond_2
    move-object v0, v3

    check-cast v0, Lnet/oneplus/h2launcher/ShortcutInfo;

    move-object v10, v0

    .line 4785
    invoke-virtual {v10}, Lnet/oneplus/h2launcher/ShortcutInfo;->isPromise()Z

    move-result v10

    if-nez v10, :cond_5

    .line 4787
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v4, v3}, Lnet/oneplus/h2launcher/Launcher;->startShortcutIntentSafely(Landroid/content/Intent;Landroid/os/Bundle;Lnet/oneplus/h2launcher/ItemInfo;)V

    .line 4791
    :goto_3
    const/4 v10, 0x1

    goto :goto_0

    .line 4777
    .end local v3    # "item":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v4    # "optsBundle":Landroid/os/Bundle;
    .end local v8    # "useLaunchAnimation":Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 4778
    .restart local v8    # "useLaunchAnimation":Z
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 4789
    .restart local v3    # "item":Lnet/oneplus/h2launcher/ItemInfo;
    .restart local v4    # "optsBundle":Landroid/os/Bundle;
    :cond_5
    invoke-direct/range {p0 .. p3}, Lnet/oneplus/h2launcher/Launcher;->startActivity(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    goto :goto_3

    .line 4792
    .end local v3    # "item":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v4    # "optsBundle":Landroid/os/Bundle;
    .end local v8    # "useLaunchAnimation":Z
    :catch_0
    move-exception v2

    .line 4793
    .local v2, "e":Ljava/lang/RuntimeException;
    :goto_4
    const v10, 0x7f0b002f

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 4794
    const-string v10, "Launcher"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to launch. tag="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " intent="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v10, v5

    .line 4796
    goto/16 :goto_0

    .line 4792
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    goto :goto_4
.end method

.method startAppShortcutOrInfoActivity(Landroid/view/View;)V
    .locals 19
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 4065
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    .line 4071
    .local v15, "tag":Ljava/lang/Object;
    instance-of v2, v15, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v2, :cond_1

    move-object v5, v15

    .line 4072
    check-cast v5, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 4073
    .local v5, "shortcut":Lnet/oneplus/h2launcher/ShortcutInfo;
    iget-object v4, v5, Lnet/oneplus/h2launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 4074
    .local v4, "intent":Landroid/content/Intent;
    iget-wide v8, v5, Lnet/oneplus/h2launcher/ShortcutInfo;->id:J

    .line 4075
    .local v8, "id":J
    iget v10, v5, Lnet/oneplus/h2launcher/ShortcutInfo;->itemType:I

    .line 4076
    .local v10, "itemType":I
    iget-object v0, v5, Lnet/oneplus/h2launcher/ShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-object/from16 v16, v0

    .line 4077
    .local v16, "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    const/4 v2, 0x2

    new-array v11, v2, [I

    .line 4078
    .local v11, "pos":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4079
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    aget v3, v11, v3

    const/4 v6, 0x1

    aget v6, v11, v6

    const/4 v7, 0x0

    aget v7, v11, v7

    .line 4080
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v17

    add-int v7, v7, v17

    const/16 v17, 0x1

    aget v17, v11, v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    invoke-direct {v2, v3, v6, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4079
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 4097
    .end local v11    # "pos":[I
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v15}, Lnet/oneplus/h2launcher/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v14

    .line 4098
    .local v14, "success":Z
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/Launcher;->getStats()Lnet/oneplus/h2launcher/Stats;

    move-result-object v2

    move-object v6, v15

    check-cast v6, Lnet/oneplus/h2launcher/ItemInfo;

    if-nez v16, :cond_4

    .line 4099
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v7

    :goto_1
    move-object/from16 v3, p1

    .line 4098
    invoke-virtual/range {v2 .. v7}, Lnet/oneplus/h2launcher/Stats;->recordLaunch(Landroid/view/View;Landroid/content/Intent;Lnet/oneplus/h2launcher/ShortcutInfo;Lnet/oneplus/h2launcher/ItemInfo;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 4101
    if-eqz v14, :cond_0

    move-object/from16 v0, p1

    instance-of v2, v0, Lnet/oneplus/h2launcher/BubbleTextView;

    if-eqz v2, :cond_0

    .line 4102
    check-cast p1, Lnet/oneplus/h2launcher/BubbleTextView;

    .end local p1    # "v":Landroid/view/View;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/oneplus/h2launcher/Launcher;->mWaitingForResume:Lnet/oneplus/h2launcher/BubbleTextView;

    .line 4103
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Launcher;->mWaitingForResume:Lnet/oneplus/h2launcher/BubbleTextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/BubbleTextView;->setStayPressed(Z)V

    .line 4105
    :cond_0
    return-void

    .line 4082
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "shortcut":Lnet/oneplus/h2launcher/ShortcutInfo;
    .end local v8    # "id":J
    .end local v10    # "itemType":I
    .end local v14    # "success":Z
    .end local v16    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    instance-of v2, v15, Lnet/oneplus/h2launcher/AppInfo;

    if-eqz v2, :cond_3

    .line 4083
    const/4 v5, 0x0

    .restart local v5    # "shortcut":Lnet/oneplus/h2launcher/ShortcutInfo;
    move-object v2, v15

    .line 4084
    check-cast v2, Lnet/oneplus/h2launcher/AppInfo;

    iget-object v4, v2, Lnet/oneplus/h2launcher/AppInfo;->intent:Landroid/content/Intent;

    .restart local v4    # "intent":Landroid/content/Intent;
    move-object v2, v15

    .line 4085
    check-cast v2, Lnet/oneplus/h2launcher/AppInfo;

    iget-wide v8, v2, Lnet/oneplus/h2launcher/AppInfo;->id:J

    .line 4086
    .restart local v8    # "id":J
    const/4 v10, 0x0

    .line 4087
    .restart local v10    # "itemType":I
    const-string v2, "profile"

    invoke-virtual {v4, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4088
    const-string v2, "profile"

    const-wide/16 v6, -0x1

    invoke-virtual {v4, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 4089
    .local v12, "serialNumber":J
    invoke-static/range {p0 .. p0}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getUserForSerialNumber(J)Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v16

    .line 4090
    .restart local v16    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    goto :goto_0

    .line 4091
    .end local v12    # "serialNumber":J
    .end local v16    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    :cond_2
    invoke-static {v4}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->fromIntent(Landroid/content/Intent;)Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v16

    .restart local v16    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    goto :goto_0

    .line 4094
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "shortcut":Lnet/oneplus/h2launcher/ShortcutInfo;
    .end local v8    # "id":J
    .end local v10    # "itemType":I
    .end local v16    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Input must be a Shortcut or AppInfo"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "shortcut":Lnet/oneplus/h2launcher/ShortcutInfo;
    .restart local v8    # "id":J
    .restart local v10    # "itemType":I
    .restart local v14    # "success":Z
    .restart local v16    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    :cond_4
    move-object/from16 v7, v16

    .line 4099
    goto :goto_1
.end method

.method startApplicationDetailsActivity(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    const v3, 0x7f0b002f

    const/4 v2, 0x0

    .line 4460
    :try_start_0
    invoke-static {p0}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    move-result-object v1

    .line 4461
    .local v1, "launcherApps":Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;
    invoke-virtual {v1, p1, p2}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->showAppDetailsForProfile(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4469
    .end local v1    # "launcherApps":Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;
    :goto_0
    return-void

    .line 4462
    :catch_0
    move-exception v0

    .line 4463
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 4464
    const-string v2, "Launcher"

    const-string v3, "Launcher does not have permission to launch settings"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4465
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 4466
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 4467
    const-string v2, "Launcher"

    const-string v3, "Unable to launch settings"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method startApplicationEditDialog(Landroid/content/ComponentName;Landroid/view/View;Lnet/oneplus/h2launcher/ItemInfo;)V
    .locals 26
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "dragView"    # Landroid/view/View;
    .param p3, "dragInfo"    # Lnet/oneplus/h2launcher/ItemInfo;

    .prologue
    .line 4473
    const v2, 0x7f040068

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v25

    .line 4476
    .local v25, "root":Landroid/view/View;
    move-object/from16 v0, p3

    iget-object v5, v0, Lnet/oneplus/h2launcher/ItemInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 4477
    .local v5, "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    move-object/from16 v0, p3

    instance-of v2, v0, Lnet/oneplus/h2launcher/AppInfo;

    if-nez v2, :cond_0

    move-object/from16 v0, p3

    instance-of v2, v0, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v2, :cond_7

    .line 4479
    :cond_0
    move-object/from16 v0, p3

    instance-of v2, v0, Lnet/oneplus/h2launcher/AppInfo;

    if-eqz v2, :cond_4

    move-object/from16 v2, p3

    .line 4480
    check-cast v2, Lnet/oneplus/h2launcher/AppInfo;

    iget v0, v2, Lnet/oneplus/h2launcher/AppInfo;->flags:I

    move/from16 v19, v0

    .line 4484
    .local v19, "flag":I
    :goto_0
    and-int/lit8 v2, v19, 0x8

    if-eqz v2, :cond_5

    const/4 v6, 0x1

    .line 4485
    .local v6, "enableEditImage":Z
    :goto_1
    and-int/lit8 v2, v19, 0x4

    if-eqz v2, :cond_6

    const/4 v8, 0x1

    .line 4491
    .end local v19    # "flag":I
    .local v8, "enableEditLabel":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lnet/oneplus/h2launcher/Launcher;->mAppEditComponent:Ljava/lang/String;

    .line 4492
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/oneplus/h2launcher/Launcher;->mAppEditComponentName:Landroid/content/ComponentName;

    .line 4493
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 4494
    .local v4, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Launcher;->mAppEditComponent:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v5, v2}, Lnet/oneplus/h2launcher/config/CustomInfoHelper;->getCustomLabelForComponent(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 4496
    .local v21, "label":Ljava/lang/String;
    move-object/from16 v0, p3

    instance-of v2, v0, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    if-eqz v2, :cond_8

    .line 4497
    check-cast p3, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    .end local p3    # "dragInfo":Lnet/oneplus/h2launcher/ItemInfo;
    invoke-interface/range {p3 .. p3}, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;->getStaticDrawable()Lnet/oneplus/h2launcher/FastBitmapDrawable;

    move-result-object v20

    .line 4502
    .local v20, "icon":Landroid/graphics/drawable/Drawable;
    :goto_3
    const-string v2, "Launcher"

    const-string v3, "[edit app] showing dialog for: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/oneplus/h2launcher/Launcher;->mAppEditComponent:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v2, v3, v9}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4504
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lnet/oneplus/h2launcher/Launcher;->mAppEditResourcePackage:Ljava/lang/String;

    .line 4505
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lnet/oneplus/h2launcher/Launcher;->mAppEditResourceShowListPackage:Ljava/lang/String;

    .line 4506
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lnet/oneplus/h2launcher/Launcher;->mAppEditHasReset:Z

    .line 4508
    const v2, 0x7f110134

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lnet/oneplus/h2launcher/Launcher;->mAppEditIcon:Landroid/widget/ImageView;

    .line 4509
    if-eqz v6, :cond_9

    .line 4510
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Launcher;->mAppEditIcon:Landroid/widget/ImageView;

    new-instance v3, Lnet/oneplus/h2launcher/Launcher$33;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lnet/oneplus/h2launcher/Launcher$33;-><init>(Lnet/oneplus/h2launcher/Launcher;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4523
    :goto_4
    const v2, 0x7f110135

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 4524
    .local v7, "appLabel":Landroid/widget/EditText;
    if-eqz v21, :cond_1

    if-eqz v20, :cond_1

    .line 4525
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Launcher;->mAppEditIcon:Landroid/widget/ImageView;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4526
    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4527
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 4529
    :cond_1
    if-nez v8, :cond_2

    .line 4530
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 4533
    :cond_2
    new-instance v18, Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4534
    .local v18, "builder":Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0021

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    .line 4535
    invoke-virtual/range {v18 .. v18}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->create()Lcom/oneplus/lib/app/OPAlertDialog;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lnet/oneplus/h2launcher/Launcher;->mAppEditDialog:Landroid/app/Dialog;

    .line 4536
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Launcher;->mAppEditDialog:Landroid/app/Dialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 4537
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Launcher;->mAppEditDialog:Landroid/app/Dialog;

    new-instance v3, Lnet/oneplus/h2launcher/Launcher$34;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v1}, Lnet/oneplus/h2launcher/Launcher$34;-><init>(Lnet/oneplus/h2launcher/Launcher;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4549
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Launcher;->mAppEditDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 4551
    const v2, 0x7f110136

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/Button;

    .line 4552
    .local v24, "resetButton":Landroid/widget/Button;
    new-instance v2, Lnet/oneplus/h2launcher/Launcher$35;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lnet/oneplus/h2launcher/Launcher$35;-><init>(Lnet/oneplus/h2launcher/Launcher;Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;ZLandroid/widget/EditText;Z)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4578
    const v2, 0x7f110137

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Button;

    .line 4580
    .local v23, "okButton":Landroid/widget/Button;
    new-instance v9, Lnet/oneplus/h2launcher/Launcher$36;

    move-object/from16 v10, p0

    move v11, v6

    move-object v12, v5

    move-object/from16 v13, p1

    move v14, v8

    move-object v15, v7

    move-object/from16 v16, v4

    invoke-direct/range {v9 .. v16}, Lnet/oneplus/h2launcher/Launcher$36;-><init>(Lnet/oneplus/h2launcher/Launcher;ZLnet/oneplus/h2launcher/compat/UserHandleCompat;Landroid/content/ComponentName;ZLandroid/widget/EditText;Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4624
    new-instance v22, Landroid/view/WindowManager$LayoutParams;

    invoke-direct/range {v22 .. v22}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 4625
    .local v22, "lp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Launcher;->mAppEditDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    .line 4626
    .local v17, "appEditDialogWindow":Landroid/view/Window;
    if-eqz v17, :cond_3

    .line 4627
    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 4628
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0072

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object/from16 v0, v22

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 4629
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0067

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object/from16 v0, v22

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 4630
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4632
    :cond_3
    return-void

    .end local v4    # "packageName":Ljava/lang/String;
    .end local v6    # "enableEditImage":Z
    .end local v7    # "appLabel":Landroid/widget/EditText;
    .end local v8    # "enableEditLabel":Z
    .end local v17    # "appEditDialogWindow":Landroid/view/Window;
    .end local v18    # "builder":Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .end local v20    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v21    # "label":Ljava/lang/String;
    .end local v22    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v23    # "okButton":Landroid/widget/Button;
    .end local v24    # "resetButton":Landroid/widget/Button;
    .restart local p3    # "dragInfo":Lnet/oneplus/h2launcher/ItemInfo;
    :cond_4
    move-object/from16 v2, p3

    .line 4482
    check-cast v2, Lnet/oneplus/h2launcher/ShortcutInfo;

    iget v0, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->flags:I

    move/from16 v19, v0

    .restart local v19    # "flag":I
    goto/16 :goto_0

    .line 4484
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 4485
    .restart local v6    # "enableEditImage":Z
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 4487
    .end local v6    # "enableEditImage":Z
    .end local v19    # "flag":I
    :cond_7
    const/4 v6, 0x1

    .line 4488
    .restart local v6    # "enableEditImage":Z
    const/4 v8, 0x1

    .restart local v8    # "enableEditLabel":Z
    goto/16 :goto_2

    .line 4499
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v21    # "label":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Launcher;->mAppEditComponent:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v5, v2}, Lnet/oneplus/h2launcher/config/CustomInfoHelper;->getCustomIconForComponent(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .restart local v20    # "icon":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 4519
    .end local p3    # "dragInfo":Lnet/oneplus/h2launcher/ItemInfo;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Launcher;->mAppEditIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 4520
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Launcher;->mAppEditIcon:Landroid/widget/ImageView;

    const v3, 0x3e99999a    # 0.3f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_4
.end method

.method public startBinding()V
    .locals 1

    .prologue
    .line 6013
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/Launcher;->setWorkspaceLoading(Z)V

    .line 6018
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6021
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->clearDropTargets()V

    .line 6022
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->removeAllWorkspaceScreens()V

    .line 6024
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 6025
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mHotseatController:Lnet/oneplus/h2launcher/HotseatController;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/HotseatController;->resetLayout()V

    .line 6026
    return-void
.end method

.method public startDrag(Landroid/view/View;Lnet/oneplus/h2launcher/ItemInfo;Lnet/oneplus/h2launcher/DragSource;)V
    .locals 1
    .param p1, "dragView"    # Landroid/view/View;
    .param p2, "dragInfo"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p3, "source"    # Lnet/oneplus/h2launcher/DragSource;

    .prologue
    .line 7220
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7221
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/Workspace;->onExternalDragStartedWithItem(Landroid/view/View;)V

    .line 7222
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0, p1, p3}, Lnet/oneplus/h2launcher/Workspace;->beginExternalDragShared(Landroid/view/View;Lnet/oneplus/h2launcher/DragSource;)V

    .line 7223
    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .param p7, "options"    # Landroid/os/Bundle;

    .prologue
    .line 3322
    invoke-direct {p0, p2}, Lnet/oneplus/h2launcher/Launcher;->onStartForResult(I)V

    .line 3324
    :try_start_0
    invoke-super/range {p0 .. p7}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3329
    return-void

    .line 3326
    :catch_0
    move-exception v0

    .line 3327
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v1, Landroid/content/ActivityNotFoundException;

    invoke-direct {v1}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw v1
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 4
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;
    .param p4, "globalSearch"    # Z

    .prologue
    .line 3345
    if-nez p1, :cond_0

    .line 3347
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object p1

    .line 3349
    :cond_0
    if-nez p3, :cond_1

    .line 3350
    new-instance p3, Landroid/os/Bundle;

    .end local p3    # "appSearchData":Landroid/os/Bundle;
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 3351
    .restart local p3    # "appSearchData":Landroid/os/Bundle;
    const-string v2, "source"

    const-string v3, "launcher-search"

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3353
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 3354
    .local v1, "sourceBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mSearchDropTargetBar:Lnet/oneplus/h2launcher/SearchDropTargetBar;

    if-eqz v2, :cond_2

    .line 3355
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mSearchDropTargetBar:Lnet/oneplus/h2launcher/SearchDropTargetBar;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/SearchDropTargetBar;->getSearchBarBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 3358
    :cond_2
    invoke-virtual {p0, p1, p2, p3, v1}, Lnet/oneplus/h2launcher/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)Z

    move-result v0

    .line 3360
    .local v0, "clearTextImmediately":Z
    if-eqz v0, :cond_3

    .line 3361
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;->clearTypedText()V

    .line 3365
    :cond_3
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/Launcher;->showWorkspace(Z)V

    .line 3366
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;
    .param p4, "sourceBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 3377
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v0}, Lnet/oneplus/h2launcher/LauncherCallbacks;->providesSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3378
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v0, p1, p2, p3, p4}, Lnet/oneplus/h2launcher/LauncherCallbacks;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)Z

    move-result v0

    .line 3384
    :goto_0
    return v0

    .line 3382
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/oneplus/h2launcher/Launcher;->startGlobalSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)V

    .line 3384
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startSearchFromAllApps(Landroid/view/View;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "searchIntent"    # Landroid/content/Intent;
    .param p3, "searchQuery"    # Ljava/lang/String;

    .prologue
    .line 3428
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mLauncherCallbacks:Lnet/oneplus/h2launcher/LauncherCallbacks;

    invoke-interface {v0, p3}, Lnet/oneplus/h2launcher/LauncherCallbacks;->startSearchFromAllApps(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3434
    :goto_0
    return-void

    .line 3433
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public startWorkspaceStateChangeAnimation(Lnet/oneplus/h2launcher/Workspace$State;IZLjava/util/HashMap;)Landroid/animation/Animator;
    .locals 3
    .param p1, "toState"    # Lnet/oneplus/h2launcher/Workspace$State;
    .param p2, "toPage"    # I
    .param p3, "animated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/oneplus/h2launcher/Workspace$State;",
            "IZ",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .line 5585
    .local p4, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Workspace;->getState()Lnet/oneplus/h2launcher/Workspace$State;

    move-result-object v1

    .line 5586
    .local v1, "fromState":Lnet/oneplus/h2launcher/Workspace$State;
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v2, p1, p2, p3, p4}, Lnet/oneplus/h2launcher/Workspace;->setStateWithAnimation(Lnet/oneplus/h2launcher/Workspace$State;IZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v0

    .line 5587
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {p0, v1, p1}, Lnet/oneplus/h2launcher/Launcher;->updateInteraction(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;)V

    .line 5588
    return-object v0
.end method

.method unlockAllApps()V
    .locals 0

    .prologue
    .line 5660
    return-void
.end method

.method public unlockScreenOrientation(Z)V
    .locals 4
    .param p1, "immediate"    # Z

    .prologue
    .line 6971
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher;->mRotationEnabled:Z

    if-eqz v0, :cond_0

    .line 6972
    if-eqz p1, :cond_1

    .line 6973
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Launcher;->setRequestedOrientation(I)V

    .line 6982
    :cond_0
    :goto_0
    return-void

    .line 6975
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnet/oneplus/h2launcher/Launcher$60;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/Launcher$60;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method updateAutoAdvanceState()V
    .locals 12

    .prologue
    const-wide/16 v2, 0x4e20

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 2770
    iget-boolean v5, p0, Lnet/oneplus/h2launcher/Launcher;->mVisible:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lnet/oneplus/h2launcher/Launcher;->mUserPresent:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    move v0, v1

    .line 2772
    .local v0, "autoAdvanceRunning":Z
    :goto_0
    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateAutoAdvanceState autoAdvanceRunning = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mAutoAdvanceRunning = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lnet/oneplus/h2launcher/Launcher;->mAutoAdvanceRunning:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2773
    iget-boolean v5, p0, Lnet/oneplus/h2launcher/Launcher;->mAutoAdvanceRunning:Z

    if-eq v0, v5, :cond_0

    .line 2774
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAutoAdvanceRunning:Z

    .line 2775
    if-eqz v0, :cond_3

    .line 2776
    iget-wide v4, p0, Lnet/oneplus/h2launcher/Launcher;->mAutoAdvanceTimeLeft:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    .line 2777
    .local v2, "delay":J
    :goto_1
    invoke-virtual {p0, v2, v3}, Lnet/oneplus/h2launcher/Launcher;->sendAdvanceMessage(J)V

    .line 2787
    .end local v2    # "delay":J
    :cond_0
    :goto_2
    return-void

    .end local v0    # "autoAdvanceRunning":Z
    :cond_1
    move v0, v4

    .line 2770
    goto :goto_0

    .line 2776
    .restart local v0    # "autoAdvanceRunning":Z
    :cond_2
    iget-wide v2, p0, Lnet/oneplus/h2launcher/Launcher;->mAutoAdvanceTimeLeft:J

    goto :goto_1

    .line 2779
    :cond_3
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2780
    const-wide/16 v6, 0x0

    .line 2781
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lnet/oneplus/h2launcher/Launcher;->mAutoAdvanceSentTime:J

    sub-long/2addr v8, v10

    sub-long v8, v2, v8

    .line 2780
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lnet/oneplus/h2launcher/Launcher;->mAutoAdvanceTimeLeft:J

    .line 2783
    :cond_4
    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2784
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2
.end method

.method public updateInteraction(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;)V
    .locals 5
    .param p1, "fromState"    # Lnet/oneplus/h2launcher/Workspace$State;
    .param p2, "toState"    # Lnet/oneplus/h2launcher/Workspace$State;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4449
    sget-object v4, Lnet/oneplus/h2launcher/Workspace$State;->NORMAL:Lnet/oneplus/h2launcher/Workspace$State;

    if-eq p1, v4, :cond_1

    move v0, v2

    .line 4450
    .local v0, "fromStateWithOverlay":Z
    :goto_0
    sget-object v4, Lnet/oneplus/h2launcher/Workspace$State;->NORMAL:Lnet/oneplus/h2launcher/Workspace$State;

    if-eq p2, v4, :cond_2

    move v1, v2

    .line 4451
    .local v1, "toStateWithOverlay":Z
    :goto_1
    if-eqz v1, :cond_3

    .line 4452
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->onInteractionBegin()V

    .line 4456
    :cond_0
    :goto_2
    return-void

    .end local v0    # "fromStateWithOverlay":Z
    .end local v1    # "toStateWithOverlay":Z
    :cond_1
    move v0, v3

    .line 4449
    goto :goto_0

    .restart local v0    # "fromStateWithOverlay":Z
    :cond_2
    move v1, v3

    .line 4450
    goto :goto_1

    .line 4453
    .restart local v1    # "toStateWithOverlay":Z
    :cond_3
    if-eqz v0, :cond_0

    .line 4454
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->onInteractionEnd()V

    goto :goto_2
.end method

.method public updateOverlayBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "newBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 998
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mAllAppsViewController:Lnet/oneplus/h2launcher/AllAppsViewController;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/AllAppsViewController;->setSearchBarBounds(Landroid/graphics/Rect;)V

    .line 999
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mWidgetsView:Lnet/oneplus/h2launcher/widget/WidgetsContainerView;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->setSearchBarBounds(Landroid/graphics/Rect;)V

    .line 1000
    return-void
.end method

.method public updateSearchViewFromProvider()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 6670
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mSearchDropTargetBar:Lnet/oneplus/h2launcher/SearchDropTargetBar;

    if-nez v2, :cond_1

    .line 6706
    :cond_0
    :goto_0
    return-void

    .line 6673
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mQsb:Landroid/appwidget/AppWidgetHostView;

    if-eqz v2, :cond_2

    .line 6674
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mSearchDropTargetBar:Lnet/oneplus/h2launcher/SearchDropTargetBar;

    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher;->mQsb:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/SearchDropTargetBar;->removeView(Landroid/view/View;)V

    .line 6675
    iput-object v6, p0, Lnet/oneplus/h2launcher/Launcher;->mQsb:Landroid/appwidget/AppWidgetHostView;

    .line 6677
    :cond_2
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mQsbOverlay:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 6678
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mSearchDropTargetBar:Lnet/oneplus/h2launcher/SearchDropTargetBar;

    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher;->mQsbOverlay:Landroid/view/View;

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/SearchDropTargetBar;->removeView(Landroid/view/View;)V

    .line 6679
    iput-object v6, p0, Lnet/oneplus/h2launcher/Launcher;->mQsbOverlay:Landroid/view/View;

    .line 6682
    :cond_3
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/Launcher;->mSearchBarVisible:Z

    if-eqz v2, :cond_0

    .line 6683
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mSearchDropTargetBar:Lnet/oneplus/h2launcher/SearchDropTargetBar;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getOrCreateQsbBar()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/SearchDropTargetBar;->setQsbSearchBar(Landroid/view/View;)V

    .line 6684
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getOrCreateQsbBar()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 6686
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher;->getCurrentDisplayProgress()F

    move-result v0

    .line 6687
    .local v0, "currentProgress":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Workspace;->isInOverviewMode()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 6688
    :cond_4
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/Launcher;->mSearchBarTransparent:Z

    if-eqz v2, :cond_5

    .line 6689
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mQsbOverlay:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 6691
    :cond_5
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mQsb:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2, v5}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    .line 6696
    .end local v0    # "currentProgress":F
    :cond_6
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mQsb:Landroid/appwidget/AppWidgetHostView;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    if-eqz v2, :cond_7

    .line 6697
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Workspace;->getState()Lnet/oneplus/h2launcher/Workspace$State;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Workspace$State;->getSearchDropTargetBarState()Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    move-result-object v1

    .line 6698
    .local v1, "state":Lnet/oneplus/h2launcher/SearchDropTargetBar$State;
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mSearchDropTargetBar:Lnet/oneplus/h2launcher/SearchDropTargetBar;

    invoke-virtual {v2, v1, v4}, Lnet/oneplus/h2launcher/SearchDropTargetBar;->animateToState(Lnet/oneplus/h2launcher/SearchDropTargetBar$State;I)V

    .line 6701
    .end local v1    # "state":Lnet/oneplus/h2launcher/SearchDropTargetBar$State;
    :cond_7
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/oos/StyleManager;->showSearchBar()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6702
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mSearchDropTargetBar:Lnet/oneplus/h2launcher/SearchDropTargetBar;

    sget-object v3, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;->INVISIBLE:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    invoke-virtual {v2, v3, v4}, Lnet/oneplus/h2launcher/SearchDropTargetBar;->animateToState(Lnet/oneplus/h2launcher/SearchDropTargetBar$State;I)V

    .line 6703
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher;->mQsb:Landroid/appwidget/AppWidgetHostView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public updateWallpaperPreview()V
    .locals 2

    .prologue
    .line 4199
    new-instance v0, Lnet/oneplus/h2launcher/ScreenshotComposer;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/ScreenshotComposer;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/ScreenshotComposer;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mScreenshotTask:Landroid/os/AsyncTask;

    .line 4200
    return-void
.end method

.method public useVerticalBarLayout()Z
    .locals 1

    .prologue
    .line 6637
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mDeviceProfile:Lnet/oneplus/h2launcher/DeviceProfile;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    return v0
.end method

.method waitUntilResume(Ljava/lang/Runnable;Z)Z
    .locals 1
    .param p1, "run"    # Ljava/lang/Runnable;
    .param p2, "deletePreviousRunnable"    # Z

    .prologue
    .line 5948
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher;->mPaused:Z

    if-eqz v0, :cond_2

    .line 5950
    if-eqz p2, :cond_1

    .line 5951
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5957
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5958
    const/4 v0, 0x1

    .line 5960
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

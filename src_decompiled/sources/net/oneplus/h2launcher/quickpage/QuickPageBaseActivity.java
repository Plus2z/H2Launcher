package net.oneplus.h2launcher.quickpage;

import android.app.Activity;
import android.app.DialogFragment;
import android.app.Fragment;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Intent;
import android.database.ContentObserver;
import android.database.Cursor;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.MessageQueue;
import android.os.UserHandle;
import android.preference.PreferenceManager;
import android.support.annotation.NonNull;
import android.support.v4.view.GravityCompat;
import android.support.v4.widget.DrawerLayout;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import com.oneplus.lib.widget.recyclerview.RecyclerView;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import net.oneplus.h2launcher.AssetCache;
import net.oneplus.h2launcher.LauncherAppState;
import net.oneplus.h2launcher.LauncherAppWidgetHost;
import net.oneplus.h2launcher.LauncherModel;
import net.oneplus.h2launcher.LauncherSettings;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.Stats;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.compat.AppWidgetManagerCompat;
import net.oneplus.h2launcher.compat.LauncherAppsCompat;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.config.PreferencesHelper;
import net.oneplus.h2launcher.globalsearch.GlobalSearchDbHelper;
import net.oneplus.h2launcher.launcherProviderHelper.LauncherProviderUtil;
import net.oneplus.h2launcher.quickpage.QuickPageAdapter;
import net.oneplus.h2launcher.quickpage.QuickPageItem;
import net.oneplus.h2launcher.quickpage.SchemeHelper;
import net.oneplus.h2launcher.quickpage.view.DimmerBackground;
import net.oneplus.h2launcher.quickpage.view.FloatingActionMenu;
import net.oneplus.h2launcher.quickpage.view.NpaLinearLayoutManager;
import net.oneplus.h2launcher.quickpage.view.RecyclerViewWrapper;
import net.oneplus.h2launcher.quickpage.view.WelcomePanel;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.GeneralItemAnimator;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.SwipeDismissItemAnimator;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.draggable.RecyclerViewDragDropManager;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.touchguard.RecyclerViewTouchActionGuardManager;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.utils.WrapperAdapterUtils;
import net.oneplus.h2launcher.quickpage.view.util.AbstractDataProvider;
import net.oneplus.h2launcher.quickpage.widget.WidgetPanel;
import net.oneplus.h2launcher.quickpage.widget.WidgetPicker;
import net.oneplus.h2launcher.util.AnalyticHelper;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.PermissionUtils;
import net.oneplus.h2launcher.util.TaskWorker;
import net.oneplus.h2launcher.widget.WidgetConstant;

/* loaded from: classes.dex */
public abstract class QuickPageBaseActivity extends Activity implements LauncherAppsCompat.OnAppsChangedCallbackCompat, QuickPageItem.ActivityCallback {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final String HEADER_IMAGE = "header_image.jpg";
    public static final int PERMISSIONS_REQUEST = 200;
    private static final int REFRESH_DELAY = 700;
    private static final int REQUEST_CREATE_QUICK_PANEL_WIDGET = 21;
    private static final String TAG;
    private static boolean sHasContactsPermission;
    private float mCurrentDisplayProgress;
    private DimmerBackground mDimmerBackground;
    private boolean mDragging;
    private QuickPageAdapter.ViewHolder mEditingHolder;
    private FloatingActionMenu mFloatingActionMenu;
    private boolean mInflated;
    private boolean mIsVisible;
    private NpaLinearLayoutManager mLayoutManager;
    private View mNavigationBarBackground;
    private DataProvider mProvider;
    private DrawerLayout mQuickPage;
    private QuickPageAdapter mQuickPageAdapter;
    private QuickPageContentObserver mQuickPageContentObserver;
    private RecyclerViewWrapper mRecyclerView;
    private RecyclerViewDragDropManager mRecyclerViewDragDropManager;
    private RecyclerViewTouchActionGuardManager mRecyclerViewTouchActionGuardManager;
    private SchemeHelper mSchemeHelper;
    private boolean mShowStatusBarOverlay;
    private View mStatusBackground;
    private int mStatusBarHeight;
    private WelcomePanel mWelcomePanel;
    private WidgetPicker mWidgetPicker;
    private RecyclerView.Adapter mWrappedAdapter;
    private Handler mResizeHandler = new Handler();
    private Handler mHandler = new Handler();

    public abstract AssetCache getAssetCache();

    public abstract LauncherModel getModel();

    public abstract Stats getStats();

    static {
        $assertionsDisabled = !QuickPageBaseActivity.class.desiredAssertionStatus();
        TAG = QuickPageBaseActivity.class.getSimpleName();
        sHasContactsPermission = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mSchemeHelper = new SchemeHelper(getResources());
        this.mQuickPageContentObserver = new QuickPageContentObserver();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void createQuickPage() {
        this.mWidgetPicker = new WidgetPicker(this, AppWidgetManagerCompat.getInstance(getApplicationContext()));
        this.mWidgetPicker.create();
        inflate();
        TaskWorker.get().post(new Runnable() { // from class: net.oneplus.h2launcher.quickpage.QuickPageBaseActivity.1
            @Override // java.lang.Runnable
            public void run() {
                ExternalWidgetProvider.syncWithLauncherProvider(LauncherAppState.getInstance().getLauncher());
            }
        });
        getContentResolver().registerContentObserver(LauncherSettings.ExternalWidget.CONTENT_URI, true, this.mQuickPageContentObserver);
    }

    protected void updateExternalWidget() {
        String[] selectionArguments;
        ContentResolver resolver = getContentResolver();
        Cursor widgetCursor = resolver.query(LauncherSettings.ExternalWidget.CONTENT_URI, null, null, null, null);
        if (LauncherProviderUtil.isCursorDataAvailable(widgetCursor)) {
            if (!$assertionsDisabled && widgetCursor == null) {
                throw new AssertionError();
            }
            int indexId = widgetCursor.getColumnIndex(GlobalSearchDbHelper.COLUMN_ID);
            int indexType = widgetCursor.getColumnIndex(LauncherSettings.ExternalWidget.TYPE);
            int indexWidgetId = widgetCursor.getColumnIndex("widgetId");
            int indexContent = widgetCursor.getColumnIndex(LauncherSettings.ExternalWidget.CONTENT);
            int indexComponent = widgetCursor.getColumnIndex("component");
            int id = widgetCursor.getInt(indexId);
            int type = widgetCursor.getInt(indexType);
            final int widgetId = widgetCursor.getInt(indexWidgetId);
            String content = widgetCursor.isNull(indexContent) ? "" : widgetCursor.getString(indexContent);
            String component = widgetCursor.isNull(indexComponent) ? "" : widgetCursor.getString(indexComponent);
            widgetCursor.close();
            if (widgetId < 0 || ComponentName.unflattenFromString(component) == null) {
                Logger.e(TAG, "ignored invalid widget data, id: %d, component: ", Integer.valueOf(widgetId), component);
                int removed = resolver.delete(LauncherSettings.ExternalWidget.CONTENT_URI, "_id = ?", new String[]{String.valueOf(id)});
                if (removed > 0) {
                    Logger.d(TAG, "the temporarily data has been removed: " + widgetId);
                    return;
                } else {
                    Logger.w(TAG, "caution! the temporarily data was not cleaned: " + widgetId);
                    return;
                }
            }
            switch (type) {
                case 0:
                    Logger.d(TAG, "add external widget with widgetId: " + widgetId);
                    final WidgetPanel widget = (WidgetPanel) this.mProvider.createWidgetPanel(this.mProvider.getCount() - 2, widgetId, component, -1);
                    if (!widget.isValid()) {
                        Logger.e(TAG, "the app widget is invalid, widget id: %d", Integer.valueOf(widgetId));
                        break;
                    } else {
                        widget.setCallback(this);
                        widget.setContent(LauncherSettings.ExternalWidget.CONTENT_EXTERNAL);
                        TaskWorker.get().postUI(new Runnable() { // from class: net.oneplus.h2launcher.quickpage.QuickPageBaseActivity.2
                            @Override // java.lang.Runnable
                            public void run() {
                                QuickPageBaseActivity.this.mProvider.addItem(widget);
                                QuickPageBaseActivity.this.invalidateList();
                                QuickPageBaseActivity.this.mRecyclerView.smoothScrollToPosition(QuickPageBaseActivity.this.mWrappedAdapter.getItemCount());
                                QuickPageBaseActivity.this.mRecyclerView.post(new Runnable() { // from class: net.oneplus.h2launcher.quickpage.QuickPageBaseActivity.2.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        if (widget.getWidgetInfo() != null && widget.getWidgetInfo().configure != null) {
                                            LauncherAppState.getInstance().getAppWidgetHost().startAppWidgetConfigureActivityForResult(QuickPageBaseActivity.this, widgetId, 0, 21, null);
                                        }
                                    }
                                });
                            }
                        });
                        break;
                    }
                case 1:
                    Logger.d(TAG, "remove external widget with widgetId: " + widgetId);
                    String selectionStatement = "widgetId = ? AND component = ? AND type = ?";
                    if (content.isEmpty()) {
                        selectionArguments = new String[]{String.valueOf(widgetId), component, String.valueOf(2)};
                    } else {
                        selectionStatement = "widgetId = ? AND component = ? AND type = ? AND content = ?";
                        selectionArguments = new String[]{String.valueOf(widgetId), component, String.valueOf(2), LauncherSettings.ExternalWidget.CONTENT_EXTERNAL};
                    }
                    Cursor shelfCursor = null;
                    try {
                        shelfCursor = resolver.query(LauncherSettings.QuickPage.CONTENT_URI, null, selectionStatement, selectionArguments, null);
                        if (!LauncherProviderUtil.isCursorDataAvailable(shelfCursor)) {
                            Logger.e(TAG, "ignored unexpected widget data, id: %d, component: %s", Integer.valueOf(widgetId), component);
                            if (shelfCursor != null) {
                                shelfCursor.close();
                                break;
                            }
                        } else {
                            if (!$assertionsDisabled && shelfCursor == null) {
                                throw new AssertionError();
                            }
                            int index = shelfCursor.getInt(shelfCursor.getColumnIndex(GlobalSearchDbHelper.COLUMN_ID));
                            final int position = index + 1;
                            if (position >= this.mProvider.getCount()) {
                                Logger.w(TAG, "the widget is not existing anymore");
                                if (shelfCursor != null) {
                                    shelfCursor.close();
                                    break;
                                }
                            } else {
                                AbstractDataProvider.Data data = this.mProvider.getItem(position);
                                if (!(data instanceof WidgetPanel)) {
                                    Logger.e(TAG, "the target Shelf item is not a widget");
                                    if (shelfCursor != null) {
                                        shelfCursor.close();
                                        break;
                                    }
                                } else if (((WidgetPanel) data).getWidgetId() == widgetId) {
                                    TaskWorker.get().postUI(new Runnable() { // from class: net.oneplus.h2launcher.quickpage.QuickPageBaseActivity.3
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            QuickPageBaseActivity.this.mProvider.removeItem(position);
                                            QuickPageBaseActivity.this.mQuickPageAdapter.notifyItemRemoved(position);
                                        }
                                    });
                                    Logger.d(TAG, "removed the external widget: " + widgetId);
                                    break;
                                } else {
                                    Logger.w(TAG, "the widget at position %d to be removed is not the one expected with id: %d", Integer.valueOf(position), Integer.valueOf(widgetId));
                                    if (shelfCursor != null) {
                                        shelfCursor.close();
                                        break;
                                    }
                                }
                            }
                        }
                    } finally {
                        if (shelfCursor != null) {
                            shelfCursor.close();
                        }
                    }
                    break;
            }
            int removed2 = resolver.delete(LauncherSettings.ExternalWidget.CONTENT_URI, "_id = ?", new String[]{String.valueOf(id)});
            if (removed2 > 0) {
                Logger.d(TAG, "the temporarily data has been removed: " + widgetId);
            } else {
                Logger.w(TAG, "caution! the temporarily data was not cleaned: " + widgetId);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.mInflated) {
            boolean hasContactsPermission = PermissionUtils.hasGrantedPermission(this, "android.permission.READ_CONTACTS");
            if (hasContactsPermission != sHasContactsPermission) {
                Looper.myQueue().addIdleHandler(new MessageQueue.IdleHandler() { // from class: net.oneplus.h2launcher.quickpage.QuickPageBaseActivity.4
                    @Override // android.os.MessageQueue.IdleHandler
                    public boolean queueIdle() {
                        QuickPageBaseActivity.this.mProvider.notifyUiComponentChanged();
                        return false;
                    }
                });
            }
            sHasContactsPermission = hasContactsPermission;
            if (this.mWelcomePanel != null) {
                this.mWelcomePanel.updateTitleTextSize();
            }
        }
        if (this.mFloatingActionMenu != null) {
            this.mFloatingActionMenu.collapse();
        }
        if (this.mProvider != null) {
            int size = this.mProvider.getCount();
            for (int i = 0; i < size; i++) {
                AbstractDataProvider.Data data = this.mProvider.getItem(i);
                if (data instanceof QuickPageItem) {
                    QuickPageItem item = (QuickPageItem) data;
                    item.onResume();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        dismissWidgetPicker();
        dismissSettingDialog();
        if (this.mProvider != null) {
            int size = this.mProvider.getCount();
            for (int i = 0; i < size; i++) {
                AbstractDataProvider.Data data = this.mProvider.getItem(i);
                if (data instanceof QuickPageItem) {
                    QuickPageItem item = (QuickPageItem) data;
                    item.onNewIntent();
                }
            }
        }
        super.onNewIntent(intent);
    }

    public void dismissWidgetPicker() {
        if (this.mWidgetPicker != null && this.mWidgetPicker.isShowing()) {
            this.mWidgetPicker.dismiss();
        }
    }

    private void dismissSettingDialog() {
        Fragment settingDialog = getFragmentManager().findFragmentByTag(QuickPageDialogFragment.DIALOG_SETTING);
        if (settingDialog != null && (settingDialog instanceof QuickPageDialogFragment)) {
            ((DialogFragment) settingDialog).dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode == 21 && resultCode != -1) {
            int position = this.mProvider.getCount() - 2;
            this.mProvider.removeItem(position);
            this.mHandler.postDelayed(new Runnable() { // from class: net.oneplus.h2launcher.quickpage.QuickPageBaseActivity.5
                @Override // java.lang.Runnable
                public void run() {
                    QuickPageBaseActivity.this.invalidateList();
                }
            }, 700L);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.mHandler.removeCallbacksAndMessages(null);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.mProvider != null) {
            this.mProvider.clear();
        }
        if (this.mWidgetPicker != null) {
            this.mWidgetPicker.destroy();
        }
        if (this.mRecyclerViewDragDropManager != null) {
            this.mRecyclerViewDragDropManager.release();
            this.mRecyclerViewDragDropManager = null;
        }
        if (this.mRecyclerViewTouchActionGuardManager != null) {
            this.mRecyclerViewTouchActionGuardManager.release();
            this.mRecyclerViewTouchActionGuardManager = null;
        }
        if (this.mRecyclerView != null) {
            this.mRecyclerView.clearOnScrollListeners();
            this.mRecyclerView.setItemAnimator(null);
            this.mRecyclerView.setAdapter(null);
            this.mRecyclerView = null;
        }
        if (this.mWrappedAdapter != null) {
            WrapperAdapterUtils.releaseAll(this.mWrappedAdapter);
            this.mWrappedAdapter = null;
        }
        this.mQuickPageAdapter = null;
        this.mLayoutManager = null;
        this.mInflated = false;
        if (this.mSchemeHelper != null) {
            this.mSchemeHelper.destroySchemes();
            this.mSchemeHelper = null;
        }
        if (this.mWelcomePanel != null && PreferencesHelper.isWeatherEnabled(this)) {
            this.mWelcomePanel.toggleWeatherUpdate(false);
        }
        if (this.mQuickPageContentObserver != null) {
            getContentResolver().unregisterContentObserver(this.mQuickPageContentObserver);
        }
        if (this.mFloatingActionMenu != null) {
            this.mFloatingActionMenu.removeGlobalLayoutListeners();
        }
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        switch (requestCode) {
            case 200:
                for (int i = 0; i < permissions.length; i++) {
                    if (permissions[i].equals("android.permission.READ_CONTACTS") && grantResults[i] == 0) {
                        sHasContactsPermission = true;
                        this.mProvider.notifyPermissionsChanged();
                    } else if (permissions[i].equals("android.permission.WRITE_CALENDAR") && grantResults[i] == 0) {
                        this.mProvider.notifyPermissionsChanged();
                    }
                }
                return;
            default:
                return;
        }
    }

    public void onPackageRemoved(String packageName, UserHandleCompat user) {
        updateRemoveWidgetList(packageName);
        if (packageName.equals("net.oneplus.weather") && PreferencesHelper.isWeatherEnabled(this)) {
            dismissSettingDialog();
            if (this.mWelcomePanel != null) {
                this.mWelcomePanel.toggleWeatherUpdate(false);
            }
            LauncherAppState.getInstance().getLauncher().getWeatherProvider().unregisterContentObserver(getContentResolver());
        }
    }

    public void onPackageAdded(String packageName, UserHandleCompat user) {
        addWidgetToWidgetList(packageName);
        if (packageName.equals("net.oneplus.weather") && PreferencesHelper.isWeatherEnabled(this)) {
            dismissSettingDialog();
            if (this.mWelcomePanel != null) {
                this.mWelcomePanel.toggleWeatherUpdate(true);
            }
            LauncherAppState.getInstance().getLauncher().getWeatherProvider().registerContentObserver(getContentResolver());
        }
    }

    public void onPackageChanged(String packageName, UserHandleCompat user) {
        updateRemoveWidgetList(packageName);
    }

    @Override // net.oneplus.h2launcher.compat.LauncherAppsCompat.OnAppsChangedCallbackCompat
    public void onPackagesAvailable(String[] packageNames, UserHandleCompat user, boolean replacing) {
    }

    @Override // net.oneplus.h2launcher.compat.LauncherAppsCompat.OnAppsChangedCallbackCompat
    public void onPackagesUnavailable(String[] packageNames, UserHandleCompat user, boolean replacing) {
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem.ActivityCallback
    public void onItemContentChanged(QuickPageItem item) {
        this.mProvider.updateItemContent(item);
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem.ActivityCallback
    public void onItemAdapterChanged() {
        invalidateList();
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem.ActivityCallback
    public void onItemSizeChanged() {
        this.mProvider.recreateDatabase();
    }

    public void onComponentChanged() {
        if (this.mProvider != null) {
            this.mProvider.notifyUiComponentChanged();
        }
        invalidateListPosted();
    }

    public ViewGroup getQuickPageView() {
        return this.mQuickPage;
    }

    public WelcomePanel getWelcomePanel() {
        return this.mWelcomePanel;
    }

    public SchemeHelper.Scheme getScheme() {
        return this.mSchemeHelper.getCurrentScheme();
    }

    public void resetWidgetPicker() {
        this.mWidgetPicker.initDialog();
    }

    public boolean isQuickPageInflated() {
        return this.mInflated;
    }

    public boolean isDrawerOpen() {
        return this.mQuickPage != null && this.mQuickPage.isDrawerOpen(GravityCompat.START);
    }

    public boolean isEditingQuickPageItem() {
        return this.mQuickPageAdapter != null && this.mQuickPageAdapter.isLongPressing();
    }

    public void leaveQuickPageEditMode() {
        Logger.d(TAG, "leaveQuickPageEditMode: %b %b %b", Boolean.valueOf(this.mInflated), Boolean.valueOf(this.mIsVisible), Boolean.valueOf(isResizingQuickPageItem()));
        if (this.mInflated && this.mIsVisible) {
            if (isResizingQuickPageItem()) {
                int i = 1;
                while (true) {
                    if (i >= this.mQuickPageAdapter.getItemCount() - 1) {
                        break;
                    }
                    RecyclerView.ViewHolder item = this.mRecyclerView.findViewHolderForAdapterPosition(i);
                    if (item != null && (item instanceof QuickPageAdapter.ViewHolder)) {
                        QuickPageAdapter.ViewHolder holder = (QuickPageAdapter.ViewHolder) item;
                        boolean isCurrentEditItem = this.mQuickPageAdapter.getEditableItem() == holder.getAdapterPosition();
                        if (isCurrentEditItem) {
                            holder.actionUp();
                            break;
                        }
                    }
                    i++;
                }
            }
            this.mRecyclerViewTouchActionGuardManager.setEnabled(true);
            this.mRecyclerViewTouchActionGuardManager.setItemInteractionStarted(false);
            this.mRecyclerViewTouchActionGuardManager.setMoveEventsEnabled(true);
            this.mQuickPageAdapter.setEditing(false);
            this.mQuickPageAdapter.setLongPressing(false, -1);
            updateEditableLayout();
            this.mFloatingActionMenu.showMainButton();
            this.mFloatingActionMenu.collapse();
            this.mResizeHandler.removeCallbacksAndMessages(null);
            this.mRecyclerViewDragDropManager.cancelDrag();
            this.mDimmerBackground.hide();
            this.mDragging = false;
            this.mEditingHolder = null;
        }
    }

    public void closeDrawer() {
        this.mQuickPage.closeDrawer(GravityCompat.START);
    }

    public float getCurrentDisplayProgress() {
        return this.mCurrentDisplayProgress;
    }

    public void setCurrentDisplayProgress(float progress) {
        this.mCurrentDisplayProgress = progress;
    }

    public void onQuickPageShow(boolean fromResume) {
        if (this.mInflated && !this.mIsVisible && !fromResume) {
            this.mProvider.notifyContainerVisibilityChanged(true);
            if (!PreferencesHelper.hasShownPreferenceDialog(this)) {
                PermissionUtils.requestPermission(this, new String[]{"android.permission.READ_CONTACTS"}, 200);
                PreferenceManager.getDefaultSharedPreferences(this).edit().putBoolean(Utilities.PREFERENCE_SHOW_REQUEST_WINDOW, true).apply();
            }
            TaskWorker.get().post(new Runnable() { // from class: net.oneplus.h2launcher.quickpage.QuickPageBaseActivity.6
                @Override // java.lang.Runnable
                public void run() {
                    AnalyticHelper.get().putAnalytics(AnalyticHelper.Tag.MDM_SHELF_TAG, AnalyticHelper.Label.MDM_SHELF, "1");
                }
            });
        }
        this.mIsVisible = true;
    }

    public void onQuickPageHide() {
        leaveQuickPageEditMode();
        if (this.mInflated && this.mIsVisible) {
            this.mProvider.notifyContainerVisibilityChanged(false);
            this.mQuickPage.closeDrawers();
            TaskWorker.get().post(new Runnable() { // from class: net.oneplus.h2launcher.quickpage.QuickPageBaseActivity.7
                @Override // java.lang.Runnable
                public void run() {
                    AnalyticHelper.get().putAnalytics(AnalyticHelper.Tag.MDM_SHELF_TAG, AnalyticHelper.Label.MDM_SHELF, "0");
                }
            });
            this.mIsVisible = false;
        }
    }

    public void setWelcomePanel(WelcomePanel welcomePanel) {
        boolean isWeatherEnabled = PreferencesHelper.isWeatherEnabled(this);
        boolean isWeatherInstalled = Utilities.isPackageInstalled(this, "net.oneplus.weather");
        this.mWelcomePanel = welcomePanel;
        this.mWelcomePanel.configurePanel(this, isWeatherEnabled && isWeatherInstalled);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateEditableLayout() {
        for (int i = 1; i < this.mQuickPageAdapter.getItemCount() - 1; i++) {
            RecyclerView.ViewHolder item = this.mRecyclerView.findViewHolderForAdapterPosition(i);
            if (item != null && (item instanceof QuickPageAdapter.ViewHolder)) {
                QuickPageAdapter.ViewHolder holder = (QuickPageAdapter.ViewHolder) item;
                holder.updateItemEditableLayout();
                this.mQuickPageAdapter.updateItemLayout(holder.container, holder.getAdapterPosition());
            }
        }
    }

    private void inflate() {
        this.mQuickPage = (DrawerLayout) View.inflate(this, R.layout.quick_page, null);
        this.mRecyclerView = (RecyclerViewWrapper) this.mQuickPage.findViewById(R.id.listview);
        this.mLayoutManager = new NpaLinearLayoutManager(this);
        this.mRecyclerView.setLayoutManager(this.mLayoutManager);
        this.mRecyclerView.setBackgroundColor(getScheme().getBackgroundColor());
        this.mRecyclerViewDragDropManager = new RecyclerViewDragDropManager();
        this.mRecyclerViewDragDropManager.setInitiateOnLongPress(true);
        this.mRecyclerViewDragDropManager.setInitiateOnMove(false);
        final int extraPadding = Math.abs(getResources().getDimensionPixelSize(R.dimen.quick_page_item_drag_handle_touch_margin_bottom));
        this.mRecyclerViewDragDropManager.setOnItemDragEventListener(new RecyclerViewDragDropManager.OnItemDragEventListener() { // from class: net.oneplus.h2launcher.quickpage.QuickPageBaseActivity.8
            int dragPosition;
            View dragView;

            @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.draggable.RecyclerViewDragDropManager.OnItemDragEventListener
            public void onItemLongPress(View v, int position) {
                if (position != 0 && position != QuickPageBaseActivity.this.mProvider.getCount() - 1) {
                    if (QuickPageBaseActivity.this.isResizingQuickPageItem()) {
                        Logger.d(QuickPageBaseActivity.TAG, "skipped the long press event on resizing items");
                        return;
                    }
                    if (!QuickPageBaseActivity.this.mDragging && !QuickPageBaseActivity.this.mQuickPageAdapter.isItemEditable(position)) {
                        QuickPageBaseActivity.this.mQuickPageAdapter.setLongPressing(true, position);
                        RecyclerView.ViewHolder holder = QuickPageBaseActivity.this.mRecyclerView.findViewHolderForAdapterPosition(position);
                        if (holder != null && (holder instanceof QuickPageAdapter.ViewHolder)) {
                            QuickPageBaseActivity.this.mEditingHolder = (QuickPageAdapter.ViewHolder) holder;
                        }
                        int lastPos = ((NpaLinearLayoutManager) QuickPageBaseActivity.this.mRecyclerView.getLayoutManager()).findLastCompletelyVisibleItemPosition();
                        if (position > lastPos) {
                            QuickPageBaseActivity.this.mRecyclerView.scrollToPosition(position);
                        }
                        QuickPageBaseActivity.this.mRecyclerView.requestDisallowInterceptTouchEvent(false);
                        QuickPageBaseActivity.this.mRecyclerViewTouchActionGuardManager.setEnabled(false);
                        v.performHapticFeedback(0);
                        QuickPageBaseActivity.this.updateEditableLayout();
                        QuickPageBaseActivity.this.mFloatingActionMenu.collapse();
                        QuickPageBaseActivity.this.mFloatingActionMenu.hideMainButton();
                        this.dragView = v;
                        this.dragPosition = position;
                    }
                }
            }

            @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.draggable.RecyclerViewDragDropManager.OnItemDragEventListener
            public void onDragProgress(int translationY) {
                if (!QuickPageBaseActivity.this.mDragging) {
                    QuickPageBaseActivity.this.mResizeHandler.removeCallbacksAndMessages(null);
                    QuickPageBaseActivity.this.mDimmerBackground.hide();
                    QuickPageBaseActivity.this.mDragging = true;
                }
            }

            @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.draggable.RecyclerViewDragDropManager.OnItemDragEventListener
            public void onItemDragPositionChanged(int fromPosition, int toPosition) {
            }

            @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.draggable.RecyclerViewDragDropManager.OnItemDragEventListener
            public void onItemDragFinished(int fromPosition, int toPosition, boolean result) {
                if (QuickPageBaseActivity.this.mDragging) {
                    this.dragPosition = toPosition;
                    QuickPageBaseActivity.this.mQuickPageAdapter.setEditableItem(this.dragPosition);
                    QuickPageBaseActivity.this.mDragging = false;
                }
            }

            @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.draggable.RecyclerViewDragDropManager.OnItemDragEventListener
            public boolean onItemRelease() {
                if (!QuickPageBaseActivity.this.mQuickPageAdapter.isLongPressing() || this.dragPosition == 0 || this.dragPosition == QuickPageBaseActivity.this.mProvider.getCount() - 1) {
                    return false;
                }
                QuickPageBaseActivity.this.mResizeHandler.removeCallbacksAndMessages(null);
                QuickPageBaseActivity.this.mRecyclerViewDragDropManager.cancelLongPressDetection();
                if (QuickPageBaseActivity.this.mDragging || QuickPageBaseActivity.this.mQuickPageAdapter.isItemEditable(this.dragPosition) || this.dragView == null) {
                    if (!QuickPageBaseActivity.this.mQuickPageAdapter.isItemEditable(this.dragPosition)) {
                        QuickPageBaseActivity.this.mRecyclerViewTouchActionGuardManager.setItemInteractionStarted(false);
                        QuickPageBaseActivity.this.mDimmerBackground.hide();
                    }
                    QuickPageBaseActivity.this.mDragging = false;
                    return false;
                }
                QuickPageBaseActivity.this.mDimmerBackground.setType(1);
                QuickPageBaseActivity.this.mDimmerBackground.show();
                QuickPageBaseActivity.this.mDimmerBackground.setInnerPath(this.dragView.getLeft(), this.dragView.getTop(), this.dragView.getRight(), this.dragView.getBottom() + extraPadding);
                QuickPageBaseActivity.this.mQuickPageAdapter.setEditing(true);
                QuickPageBaseActivity.this.invalidateList();
                QuickPageBaseActivity.this.mRecyclerViewTouchActionGuardManager.setEnabled(true);
                QuickPageBaseActivity.this.mRecyclerViewTouchActionGuardManager.setItemInteractionStarted(true);
                QuickPageBaseActivity.this.mRecyclerViewTouchActionGuardManager.setMoveEventsEnabled(false);
                this.dragView = null;
                this.dragPosition = 0;
                return true;
            }
        });
        this.mRecyclerViewTouchActionGuardManager = new RecyclerViewTouchActionGuardManager();
        this.mRecyclerViewTouchActionGuardManager.setInterceptVerticalScrollingWhileAnimationRunning(true);
        this.mRecyclerViewTouchActionGuardManager.setEnabled(true);
        this.mRecyclerViewTouchActionGuardManager.setDragDropManager(this.mRecyclerViewDragDropManager);
        this.mProvider = new DataProvider(this, LauncherAppState.getInstance().getAppWidgetHost(), getStats(), getAssetCache(), this.mSchemeHelper);
        this.mQuickPageAdapter = new QuickPageAdapter(this.mProvider, this.mRecyclerView.getSpring());
        this.mQuickPageAdapter.init(this, this.mRecyclerViewTouchActionGuardManager);
        this.mQuickPageAdapter.setSchemeHelper(this.mSchemeHelper);
        this.mQuickPageAdapter.setEventListener(new QuickPageAdapter.EventListener() { // from class: net.oneplus.h2launcher.quickpage.QuickPageBaseActivity.9
            @Override // net.oneplus.h2launcher.quickpage.QuickPageAdapter.EventListener
            public void onItemRemoved(int position) {
                QuickPageBaseActivity.this.leaveQuickPageEditMode();
            }

            @Override // net.oneplus.h2launcher.quickpage.QuickPageAdapter.EventListener
            public void onItemPinned(int position) {
            }

            @Override // net.oneplus.h2launcher.quickpage.QuickPageAdapter.EventListener
            public void onItemResized(int position, View v) {
                if (v != null) {
                    int listBottom = QuickPageBaseActivity.this.mRecyclerView.getBottom();
                    int itemBottom = v.getBottom();
                    if (position == QuickPageBaseActivity.this.mProvider.getCount() - 2 && listBottom >= itemBottom) {
                        QuickPageBaseActivity.this.mRecyclerView.scrollBy(0, 20);
                        return;
                    }
                    int lastPos = ((NpaLinearLayoutManager) QuickPageBaseActivity.this.mRecyclerView.getLayoutManager()).findLastCompletelyVisibleItemPosition();
                    if (position > lastPos) {
                        QuickPageBaseActivity.this.mRecyclerView.smoothScrollToPosition(position);
                    } else if (listBottom - 100 < itemBottom) {
                        QuickPageBaseActivity.this.mRecyclerView.scrollBy(0, 20);
                    }
                }
            }

            @Override // net.oneplus.h2launcher.quickpage.QuickPageAdapter.EventListener
            public void onItemResizeFinished(int position) {
            }

            @Override // net.oneplus.h2launcher.quickpage.QuickPageAdapter.EventListener
            public void onItemViewClicked(View v, boolean pinned) {
            }

            @Override // net.oneplus.h2launcher.quickpage.QuickPageAdapter.EventListener
            public boolean onItemViewTouched(View v, MotionEvent ev) {
                if (ev.getAction() != 0 || !QuickPageBaseActivity.this.mQuickPageAdapter.isLongPressing()) {
                    return false;
                }
                QuickPageBaseActivity.this.leaveQuickPageEditMode();
                return true;
            }
        });
        this.mWrappedAdapter = this.mRecyclerViewDragDropManager.createWrappedAdapter(this.mQuickPageAdapter);
        GeneralItemAnimator animator = new SwipeDismissItemAnimator();
        animator.setSupportsChangeAnimations(false);
        animator.setAddDuration(getResources().getInteger(android.R.integer.config_mediumAnimTime));
        this.mRecyclerView.setAdapter(this.mWrappedAdapter);
        this.mRecyclerView.setItemAnimator(animator);
        this.mRecyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: net.oneplus.h2launcher.quickpage.QuickPageBaseActivity.10
            @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
                boolean showOverlay = false;
                QuickPageBaseActivity.this.mRecyclerViewDragDropManager.cancelLongPressDetection();
                int first = QuickPageBaseActivity.this.mLayoutManager.findFirstVisibleItemPosition();
                if (first == 0) {
                    View firstView = recyclerView.getChildAt(0);
                    if (firstView == null || firstView.getBottom() <= QuickPageBaseActivity.this.mStatusBarHeight) {
                        showOverlay = true;
                    }
                } else {
                    showOverlay = true;
                }
                if (showOverlay != QuickPageBaseActivity.this.mShowStatusBarOverlay) {
                    QuickPageBaseActivity.this.mStatusBackground.animate().alpha(showOverlay ? 1.0f : 0.0f).setInterpolator(new AccelerateInterpolator());
                    QuickPageBaseActivity.this.mShowStatusBarOverlay = showOverlay;
                }
            }

            @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
                super.onScrollStateChanged(recyclerView, newState);
                if (newState == 1) {
                    QuickPageBaseActivity.this.mFloatingActionMenu.hideMainButton();
                    QuickPageBaseActivity.this.mQuickPageAdapter.setQuickPageScrolling(true);
                } else if (newState == 0) {
                    QuickPageBaseActivity.this.mQuickPageAdapter.setQuickPageScrolling(false);
                }
            }
        });
        this.mRecyclerViewTouchActionGuardManager.attachRecyclerView(this.mRecyclerView);
        this.mRecyclerViewDragDropManager.attachRecyclerView(this.mRecyclerView);
        this.mDimmerBackground = (DimmerBackground) this.mQuickPage.findViewById(R.id.dimmer_background);
        this.mDimmerBackground.setCallback(new DimmerBackground.Callback() { // from class: net.oneplus.h2launcher.quickpage.QuickPageBaseActivity.11
            @Override // net.oneplus.h2launcher.quickpage.view.DimmerBackground.Callback
            public void onTouch(int type) {
                switch (type) {
                    case 0:
                        QuickPageBaseActivity.this.mFloatingActionMenu.collapse();
                        return;
                    case 1:
                        if (QuickPageBaseActivity.this.isResizingQuickPageItem()) {
                            Logger.d(QuickPageBaseActivity.TAG, "skipped the touch event on item resizing");
                            return;
                        } else {
                            QuickPageBaseActivity.this.leaveQuickPageEditMode();
                            return;
                        }
                    default:
                        return;
                }
            }
        });
        this.mNavigationBarBackground = this.mQuickPage.findViewById(R.id.navigation_background);
        this.mStatusBackground = this.mQuickPage.findViewById(R.id.status_background);
        this.mStatusBarHeight = getResources().getDimensionPixelSize(R.dimen.status_bar_height);
        configureFloatingMenu();
        updateMarginsForConfigChange(PreferencesHelper.areSoftwareKeysEnabled(getApplicationContext()));
        this.mRecyclerView.setShowMainButtonRunnable(new Runnable() { // from class: net.oneplus.h2launcher.quickpage.QuickPageBaseActivity.12
            @Override // java.lang.Runnable
            public void run() {
                QuickPageBaseActivity.this.mFloatingActionMenu.showMainButton();
            }
        });
        this.mInflated = true;
    }

    private void configureFloatingMenu() {
        this.mFloatingActionMenu = (FloatingActionMenu) this.mQuickPage.findViewById(R.id.fab_container);
        this.mFloatingActionMenu.setDataProvider(this.mProvider);
        this.mFloatingActionMenu.setCallback(new FloatingActionMenu.ActionMenuCallback() { // from class: net.oneplus.h2launcher.quickpage.QuickPageBaseActivity.13
            @Override // net.oneplus.h2launcher.quickpage.view.FloatingActionMenu.ActionMenuCallback
            public void onExpand() {
                QuickPageBaseActivity.this.mDimmerBackground.setType(0);
                QuickPageBaseActivity.this.mDimmerBackground.show();
            }

            @Override // net.oneplus.h2launcher.quickpage.view.FloatingActionMenu.ActionMenuCallback
            public void onCollapse() {
                QuickPageBaseActivity.this.mDimmerBackground.hide();
            }

            @Override // net.oneplus.h2launcher.quickpage.view.FloatingActionMenu.ActionMenuCallback
            public void onButtonPressed(FloatingActionMenu.MenuItem button) {
                Map<String, String> buttonData = new HashMap<>();
                int id = QuickPageBaseActivity.this.mProvider.getNextAvailableId();
                switch (AnonymousClass20.$SwitchMap$net$oneplus$h2launcher$quickpage$view$FloatingActionMenu$MenuItem[button.ordinal()]) {
                    case 1:
                        QuickPageBaseActivity.this.showWidgetPickerDialog();
                        break;
                    case 2:
                        ComponentName component = new ComponentName(WidgetConstant.COM_ONEPLUS_NOTE, WidgetConstant.COM_ONEPLUS_NOTE_QUICKNOTEWIDGETPROVIDER);
                        QuickPageBaseActivity.this.addBuildinWidget(component);
                        break;
                    case 3:
                        ComponentName component2 = new ComponentName(WidgetConstant.COM_ONEPLUS_CALENDAR, WidgetConstant.COM_ONEPLUS_CALENDAR_OPCALENDARAPPWIDGETPROVIDER);
                        QuickPageBaseActivity.this.addBuildinWidget(component2);
                        break;
                    case 4:
                        ComponentName component3 = new ComponentName(WidgetConstant.COM_ONEPLUS_CARD, WidgetConstant.COM_ONEPLUS_CARD_CARDWIDGETPROVIDER);
                        QuickPageBaseActivity.this.addBuildinWidget(component3);
                        break;
                    case 5:
                        QuickPageItem item = new FrequentAppsGrid(QuickPageBaseActivity.this, QuickPageBaseActivity.this.getStats(), QuickPageBaseActivity.this.getAssetCache(), QuickPageBaseActivity.this.mSchemeHelper, -1, id);
                        item.setCallback(QuickPageBaseActivity.this);
                        QuickPageBaseActivity.this.mProvider.addItem(item);
                        QuickPageBaseActivity.this.invalidateList();
                        QuickPageBaseActivity.this.mRecyclerView.smoothScrollToPosition(QuickPageBaseActivity.this.mWrappedAdapter.getItemCount());
                        buttonData.put(AnalyticHelper.Label.MDM_SHELF_CARD_ADDED, item.getClass().getCanonicalName());
                        break;
                    case 6:
                        if (!PermissionUtils.hasGrantedPermission(QuickPageBaseActivity.this, "android.permission.READ_CONTACTS") && Utilities.shouldShowRequestPermission(QuickPageBaseActivity.this)) {
                            PermissionUtils.requestPermission(QuickPageBaseActivity.this, "android.permission.READ_CONTACTS", 200);
                            PreferenceManager.getDefaultSharedPreferences(QuickPageBaseActivity.this).edit().putBoolean(Utilities.PREFERENCE_SHOW_REQUEST_WINDOW, true).apply();
                        }
                        QuickPageItem item2 = new FavoriteContactsGrid(QuickPageBaseActivity.this, -1, id);
                        item2.setCallback(QuickPageBaseActivity.this);
                        QuickPageBaseActivity.this.mProvider.addItem(item2);
                        QuickPageBaseActivity.this.invalidateList();
                        QuickPageBaseActivity.this.mRecyclerView.smoothScrollToPosition(QuickPageBaseActivity.this.mWrappedAdapter.getItemCount());
                        buttonData.put(AnalyticHelper.Label.MDM_SHELF_CARD_ADDED, item2.getClass().getCanonicalName());
                        break;
                    case 7:
                        QuickPageItem item3 = new NotePanel(QuickPageBaseActivity.this, "", -1L, -1L, System.currentTimeMillis(), -1, id, false);
                        item3.setCallback(QuickPageBaseActivity.this);
                        QuickPageBaseActivity.this.mProvider.addItemToPosition(item3, 1);
                        QuickPageBaseActivity.this.invalidateList();
                        QuickPageBaseActivity.this.mRecyclerView.smoothScrollToPosition(0);
                        buttonData.put(AnalyticHelper.Label.MDM_SHELF_CARD_ADDED, item3.getClass().getCanonicalName());
                        break;
                }
                if (buttonData.size() > 0) {
                    buttonData.put(AnalyticHelper.Label.MDM_SHELF_TILE_COUNT, String.valueOf(QuickPageBaseActivity.this.mQuickPageAdapter.getItemCount()));
                    AnalyticHelper.get().putAnalytics(AnalyticHelper.Tag.MDM_SHELF_TAG, buttonData);
                }
            }
        });
    }

    /* renamed from: net.oneplus.h2launcher.quickpage.QuickPageBaseActivity$20, reason: invalid class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class AnonymousClass20 {
        static final /* synthetic */ int[] $SwitchMap$net$oneplus$h2launcher$quickpage$view$FloatingActionMenu$MenuItem = new int[FloatingActionMenu.MenuItem.values().length];

        static {
            try {
                $SwitchMap$net$oneplus$h2launcher$quickpage$view$FloatingActionMenu$MenuItem[FloatingActionMenu.MenuItem.WIDGETS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$net$oneplus$h2launcher$quickpage$view$FloatingActionMenu$MenuItem[FloatingActionMenu.MenuItem.NOTE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$net$oneplus$h2launcher$quickpage$view$FloatingActionMenu$MenuItem[FloatingActionMenu.MenuItem.CALENDAR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$net$oneplus$h2launcher$quickpage$view$FloatingActionMenu$MenuItem[FloatingActionMenu.MenuItem.CARD.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$net$oneplus$h2launcher$quickpage$view$FloatingActionMenu$MenuItem[FloatingActionMenu.MenuItem.APPS.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$net$oneplus$h2launcher$quickpage$view$FloatingActionMenu$MenuItem[FloatingActionMenu.MenuItem.CONTACTS.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$net$oneplus$h2launcher$quickpage$view$FloatingActionMenu$MenuItem[FloatingActionMenu.MenuItem.MEMO.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    public void addNote(String note, long reminderTime, long reminderId) {
        int index = this.mProvider.getCreateNotePanelIndex() + 1;
        QuickPageItem item = new NotePanel(this, note, reminderTime, reminderId, System.currentTimeMillis(), -1, index - 1, false);
        item.setCallback(this);
        this.mProvider.addItemToPosition(item, index);
        invalidateList();
        this.mRecyclerView.smoothScrollToPosition(index);
        AnalyticHelper.get().putAnalytics(AnalyticHelper.Tag.MDM_SHELF_TAG, AnalyticHelper.Label.MDM_SHELF_CARD_ADDED, item.getClass().getCanonicalName());
    }

    public int addBuildinWidget(ComponentName component) {
        return addBuildinWidget(component, -1);
    }

    public int addBuildinWidget(ComponentName component, int widgetId) {
        int id = this.mProvider.getNextAvailableId();
        final LauncherAppWidgetHost widgetHost = LauncherAppState.getInstance().getAppWidgetHost();
        final WidgetPanel widget = new WidgetPanel(this, widgetHost, component, widgetId, -1, id);
        if (widget.isValid()) {
            widget.setCallback(this);
            this.mProvider.addItem(widget);
            invalidateList();
            this.mRecyclerView.smoothScrollToPosition(this.mWrappedAdapter.getItemCount());
            this.mFloatingActionMenu.collapse();
            this.mRecyclerView.post(new Runnable() { // from class: net.oneplus.h2launcher.quickpage.QuickPageBaseActivity.14
                @Override // java.lang.Runnable
                public void run() {
                    if (widget.getWidgetInfo() != null && widget.getWidgetInfo().configure != null) {
                        widgetHost.startAppWidgetConfigureActivityForResult(QuickPageBaseActivity.this, widget.getWidgetId(), 0, 21, null);
                    }
                }
            });
            Map<String, String> mdmData = new HashMap<>();
            mdmData.put(AnalyticHelper.Label.MDM_SHELF_WIDGET_ADDED, component.getPackageName());
            mdmData.put(AnalyticHelper.Label.MDM_SHELF_WIDGET_COUNT, String.valueOf(this.mQuickPageAdapter.getWidgetCount()));
            AnalyticHelper.get().putAnalytics(AnalyticHelper.Tag.MDM_SHELF_TAG, mdmData);
            return widget.getWidgetId();
        }
        Logger.e(TAG, "the app widget is invalid, widget id: %d", Integer.valueOf(widget.getWidgetId()));
        return -1;
    }

    private List<AppWidgetProviderInfo> getBuildinWidgetProviders() {
        List<AppWidgetProviderInfo> providers = new ArrayList<>();
        AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(getApplicationContext());
        try {
            Class<?> LIST_TYPE = Class.forName("android.appwidget.AppWidgetManager$LIST_TYPE");
            Object h2WindowWidgets = LIST_TYPE.getField("H2_WINDOW_WIDGETS").get(LIST_TYPE);
            Method getInstalledProviders = appWidgetManager.getClass().getMethod("getInstalledProviders", LIST_TYPE, UserHandle.class);
            providers = (List) getInstalledProviders.invoke(appWidgetManager, h2WindowWidgets, null);
            Iterator<AppWidgetProviderInfo> iterator = providers.iterator();
            while (iterator.hasNext()) {
                AppWidgetProviderInfo providerInfo = iterator.next();
                Logger.d(TAG, "Installed: provider=" + providerInfo.provider.flattenToString());
                if (TextUtils.isEmpty(getH2CardCategoryForWidget(providerInfo))) {
                    iterator.remove();
                }
            }
        } catch (ClassNotFoundException e) {
            Logger.d(TAG, "Failed to find class: ", e);
        } catch (IllegalAccessException e2) {
            Logger.d(TAG, "illegal access exception: ", e2);
        } catch (NoSuchFieldException e3) {
            e3.printStackTrace();
        } catch (NoSuchMethodException e4) {
            Logger.d(TAG, "Failed to get method: ", e4);
        } catch (InvocationTargetException e5) {
            Logger.d(TAG, "failed to invoke target: ", e5);
        }
        return providers;
    }

    public static String getH2CardCategoryForWidget(AppWidgetProviderInfo appWidgetInfo) {
        try {
            Field h2CardCategory = appWidgetInfo.getClass().getField("h2CardCategory");
            String category = (String) h2CardCategory.get(appWidgetInfo);
            return category;
        } catch (IllegalAccessException e) {
            Logger.e(TAG, "%s", e.getMessage());
            return "";
        } catch (NoSuchFieldException e2) {
            Logger.e(TAG, "Cannot find the field: AppWidgetProviderInfo:String h2CardCategory, %s", e2.getMessage());
            return "";
        }
    }

    public void showDialog(final String tag) {
        this.mHandler.post(new Runnable() { // from class: net.oneplus.h2launcher.quickpage.QuickPageBaseActivity.15
            @Override // java.lang.Runnable
            public void run() {
                DialogFragment frag = QuickPageDialogFragment.newInstance(tag);
                frag.show(QuickPageBaseActivity.this.getFragmentManager(), tag);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showWidgetPickerDialog() {
        this.mWidgetPicker.show(new WidgetPicker.WidgetPickerCallback() { // from class: net.oneplus.h2launcher.quickpage.QuickPageBaseActivity.16
            @Override // net.oneplus.h2launcher.quickpage.widget.WidgetPicker.WidgetPickerCallback
            public void onWidgetPicked(ComponentName component) {
                int id = QuickPageBaseActivity.this.mProvider.getNextAvailableId();
                final LauncherAppWidgetHost widgetHost = LauncherAppState.getInstance().getAppWidgetHost();
                final WidgetPanel widget = new WidgetPanel(QuickPageBaseActivity.this, widgetHost, component, -1, -1, id);
                widget.setCallback(QuickPageBaseActivity.this);
                QuickPageBaseActivity.this.mProvider.addItem(widget);
                QuickPageBaseActivity.this.invalidateList();
                QuickPageBaseActivity.this.mRecyclerView.smoothScrollToPosition(QuickPageBaseActivity.this.mWrappedAdapter.getItemCount());
                QuickPageBaseActivity.this.mFloatingActionMenu.collapse();
                QuickPageBaseActivity.this.mWidgetPicker.dismiss();
                QuickPageBaseActivity.this.mRecyclerView.post(new Runnable() { // from class: net.oneplus.h2launcher.quickpage.QuickPageBaseActivity.16.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (widget.getWidgetInfo() != null && widget.getWidgetInfo().configure != null) {
                            widgetHost.startAppWidgetConfigureActivityForResult(QuickPageBaseActivity.this, widget.getWidgetId(), 0, 21, null);
                        }
                    }
                });
                Map<String, String> mdmData = new HashMap<>();
                mdmData.put(AnalyticHelper.Label.MDM_SHELF_WIDGET_ADDED, component.getPackageName());
                mdmData.put(AnalyticHelper.Label.MDM_SHELF_WIDGET_COUNT, String.valueOf(QuickPageBaseActivity.this.mQuickPageAdapter.getWidgetCount()));
                AnalyticHelper.get().putAnalytics(AnalyticHelper.Tag.MDM_SHELF_TAG, mdmData);
            }
        });
    }

    public boolean areDialogsShowing() {
        boolean isSettingDialogShowing = getFragmentManager().findFragmentByTag(QuickPageDialogFragment.DIALOG_SETTING) != null;
        return (this.mWidgetPicker != null && this.mWidgetPicker.isShowing()) || isSettingDialogShowing;
    }

    protected void updateMarginsForConfigChange(boolean hasSoftwareKeys) {
        this.mNavigationBarBackground.setVisibility(8);
        this.mFloatingActionMenu.updateMargin(hasSoftwareKeys);
        this.mQuickPageAdapter.setHasSoftwareKeys(hasSoftwareKeys);
    }

    public void setInsets(Rect insets) {
        if (this.mInflated) {
            updateMarginsForConfigChange(insets.bottom != 0);
        }
    }

    public void updateRemoveWidgetList(final String packageName) {
        if (this.mInflated) {
            this.mHandler.postDelayed(new Runnable() { // from class: net.oneplus.h2launcher.quickpage.QuickPageBaseActivity.17
                @Override // java.lang.Runnable
                public void run() {
                    if (QuickPageBaseActivity.this.mWidgetPicker.checkPackageContainsInWidgetList(packageName)) {
                        QuickPageBaseActivity.this.mWidgetPicker.invalidateWidgetList();
                    }
                    if (QuickPageBaseActivity.this.mProvider.containsWidget(packageName)) {
                        QuickPageBaseActivity.this.invalidateContent();
                        QuickPageBaseActivity.this.invalidateList();
                    }
                }
            }, 500L);
        }
    }

    public void addWidgetToWidgetList(final String packageName) {
        if (this.mInflated) {
            this.mHandler.postDelayed(new Runnable() { // from class: net.oneplus.h2launcher.quickpage.QuickPageBaseActivity.18
                @Override // java.lang.Runnable
                public void run() {
                    if (QuickPageBaseActivity.this.mWidgetPicker.checkPackageIsWidget(packageName)) {
                        QuickPageBaseActivity.this.mWidgetPicker.invalidateWidgetList();
                    }
                }
            }, 500L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invalidateContent() {
        if (this.mProvider != null) {
            this.mProvider.validateContent();
        }
    }

    public void invalidateList() {
        if (this.mWrappedAdapter != null) {
            this.mWrappedAdapter.notifyDataSetChanged();
        }
    }

    public void invalidateListPosted() {
        TaskWorker.get().postUI(new Runnable() { // from class: net.oneplus.h2launcher.quickpage.QuickPageBaseActivity.19
            @Override // java.lang.Runnable
            public void run() {
                QuickPageBaseActivity.this.invalidateList();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void invalidateScheme() {
        if (this.mFloatingActionMenu != null) {
            this.mFloatingActionMenu.setMainButtonColor(getScheme().getFloatingButtonColor());
        }
        if (this.mRecyclerView != null) {
            this.mRecyclerView.setBackgroundColor(getScheme().getBackgroundColor());
        }
    }

    protected Uri getHeaderUri() {
        return Uri.fromFile(getHeaderFile());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public File getHeaderFile() {
        File file = new File(getExternalFilesDir(null), HEADER_IMAGE);
        try {
            if (!file.exists() && !file.createNewFile()) {
                Logger.e(TAG, "create file failed: %s", HEADER_IMAGE);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return file;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isResizingQuickPageItem() {
        return this.mQuickPageAdapter != null && this.mQuickPageAdapter.isLongPressing() && this.mEditingHolder != null && this.mEditingHolder.isResizing;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class QuickPageContentObserver extends ContentObserver {
        QuickPageContentObserver() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange) {
            Logger.d(QuickPageBaseActivity.TAG, "got external widget provider change: " + selfChange);
            super.onChange(selfChange);
            TaskWorker.get().post(new Runnable() { // from class: net.oneplus.h2launcher.quickpage.QuickPageBaseActivity.QuickPageContentObserver.1
                @Override // java.lang.Runnable
                public void run() {
                    QuickPageBaseActivity.this.updateExternalWidget();
                }
            });
        }
    }
}

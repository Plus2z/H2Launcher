package net.oneplus.h2launcher.dragndrop;

import android.annotation.TargetApi;
import android.app.ActivityOptions;
import android.appwidget.AppWidgetHost;
import android.content.Intent;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RemoteViews;
import net.oneplus.h2launcher.BaseActivity;
import net.oneplus.h2launcher.InstallShortcutReceiver;
import net.oneplus.h2launcher.InvariantDeviceProfile;
import net.oneplus.h2launcher.LauncherAppState;
import net.oneplus.h2launcher.LauncherAppWidgetProviderInfo;
import net.oneplus.h2launcher.LauncherSettings;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.compat.AppWidgetManagerCompat;
import net.oneplus.h2launcher.compat.PinItemRequestCompat;
import net.oneplus.h2launcher.model.WidgetItem;
import net.oneplus.h2launcher.shortcuts.ShortcutInfoCompat;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.widget.PendingAddShortcutInfo;
import net.oneplus.h2launcher.widget.PendingAddWidgetInfo;
import net.oneplus.h2launcher.widget.WidgetHostViewLoader;
import net.oneplus.h2launcher.widget.WidgetImageView;

@TargetApi(25)
/* loaded from: classes.dex */
public class AddItemActivity extends BaseActivity implements View.OnLongClickListener, View.OnTouchListener {
    private static final int REQUEST_BIND_APPWIDGET = 1;
    private static final int SHADOW_SIZE = 10;
    private static final String STATE_EXTRA_WIDGET_ID = "state.widget.id";
    private LauncherAppState mApp;
    private AppWidgetHost mAppWidgetHost;
    private AppWidgetManagerCompat mAppWidgetManager;
    private InvariantDeviceProfile mIdp;
    private int mPendingBindWidgetId;
    private PendingAddWidgetInfo mPendingWidgetInfo;
    private PinItemRequestCompat mRequest;
    private LivePreviewWidgetCell mWidgetCell;
    private Bundle mWidgetOptions;
    private final String TAG = AddItemActivity.class.getSimpleName();
    private final PointF mLastTouchPos = new PointF();

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mRequest = PinItemRequestCompat.getPinItemRequest(getIntent());
        if (this.mRequest == null) {
            finish();
            return;
        }
        this.mApp = LauncherAppState.getInstance();
        this.mIdp = this.mApp.getInvariantDeviceProfile();
        this.mDeviceProfile = this.mIdp.getDeviceProfile(getApplicationContext());
        setContentView(R.layout.add_item_confirmation_activity);
        this.mWidgetCell = (LivePreviewWidgetCell) findViewById(R.id.widget_cell);
        if (this.mRequest.getRequestType() == 1) {
            setupShortcut();
        } else if (!setupWidget()) {
            finish();
        }
        this.mWidgetCell.setOnTouchListener(this);
        this.mWidgetCell.setOnLongClickListener(this);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        this.mLastTouchPos.set(motionEvent.getX(), motionEvent.getY());
        return false;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        WidgetImageView img = this.mWidgetCell.getWidgetView();
        if (img.getBitmap() != null) {
            Rect bounds = img.getBitmapBounds();
            bounds.offset(img.getLeft() - ((int) this.mLastTouchPos.x), img.getTop() - ((int) this.mLastTouchPos.y));
            Intent homeIntent = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME").setPackage(getPackageName()).setFlags(268435456);
            if (!getResources().getBoolean(R.bool.allow_rotation) && !Utilities.isAllowRotationPrefEnabled(this) && getResources().getConfiguration().orientation == 2 && !isInMultiWindowMode()) {
                homeIntent.addFlags(32768);
            }
            startActivity(homeIntent, ActivityOptions.makeCustomAnimation(this, 0, android.R.anim.fade_out).toBundle());
        }
        return false;
    }

    private void setupShortcut() {
        PinShortcutRequestActivityInfo shortcutInfo = new PinShortcutRequestActivityInfo(this.mRequest, this);
        WidgetItem item = new WidgetItem(shortcutInfo);
        this.mWidgetCell.getWidgetView().setTag(new PendingAddShortcutInfo(shortcutInfo));
        this.mWidgetCell.applyFromCellItem(item, this.mApp.getWidgetCache());
        this.mWidgetCell.ensurePreview();
    }

    private boolean setupWidget() {
        LauncherAppWidgetProviderInfo widgetInfo = LauncherAppWidgetProviderInfo.fromProviderInfo(this, this.mRequest.getAppWidgetProviderInfo(this));
        if (widgetInfo.minSpanX > this.mIdp.numColumns || widgetInfo.minSpanY > this.mIdp.numRows) {
            return false;
        }
        this.mWidgetCell.setPreview(getPreview(this.mRequest));
        this.mAppWidgetManager = AppWidgetManagerCompat.getInstance(this);
        this.mAppWidgetHost = new AppWidgetHost(this, 1024);
        this.mPendingWidgetInfo = new PendingAddWidgetInfo(widgetInfo);
        this.mPendingWidgetInfo.spanX = Math.min(this.mIdp.numColumns, widgetInfo.spanX);
        this.mPendingWidgetInfo.spanY = Math.min(this.mIdp.numRows, widgetInfo.spanY);
        this.mWidgetOptions = WidgetHostViewLoader.getDefaultOptionsForWidget(this, this.mPendingWidgetInfo);
        WidgetItem item = new WidgetItem(widgetInfo, getPackageManager(), this.mIdp);
        this.mWidgetCell.getWidgetView().setTag(this.mPendingWidgetInfo);
        this.mWidgetCell.applyFromCellItem(item, this.mApp.getWidgetCache());
        this.mWidgetCell.ensurePreview();
        return true;
    }

    public static RemoteViews getPreview(PinItemRequestCompat request) {
        Bundle extras = request.getExtras();
        if (extras == null || !(extras.get("appWidgetPreview") instanceof RemoteViews)) {
            return null;
        }
        return (RemoteViews) extras.get("appWidgetPreview");
    }

    public void onCancelClick(View v) {
        finish();
    }

    public void onPlaceAutomaticallyClick(View v) {
        if (this.mRequest.getRequestType() == 1) {
            Logger.d(this.TAG, "onPlaceAutomaticallyClick : queueShortcut= " + this.mRequest.getShortcutInfo());
            InstallShortcutReceiver.queueShortcut(new ShortcutInfoCompat(this.mRequest.getShortcutInfo()), this);
            this.mRequest.accept();
            finish();
            return;
        }
        this.mPendingBindWidgetId = this.mAppWidgetHost.allocateAppWidgetId();
        boolean success = this.mAppWidgetManager.bindAppWidgetIdIfAllowed(this.mPendingBindWidgetId, this.mRequest.getAppWidgetProviderInfo(this), this.mWidgetOptions);
        if (success) {
            acceptWidget(this.mPendingBindWidgetId);
            return;
        }
        Intent intent = new Intent("android.appwidget.action.APPWIDGET_BIND");
        intent.putExtra(LauncherSettings.Favorites.APPWIDGET_ID, this.mPendingBindWidgetId);
        intent.putExtra(LauncherSettings.Favorites.APPWIDGET_PROVIDER, this.mPendingWidgetInfo.componentName);
        intent.putExtra("appWidgetProviderProfile", this.mRequest.getAppWidgetProviderInfo(this).getProfile());
        startActivityForResult(intent, 1);
    }

    private void acceptWidget(int widgetId) {
        InstallShortcutReceiver.queueWidget(this.mRequest.getAppWidgetProviderInfo(this), widgetId, this);
        this.mWidgetOptions.putInt(LauncherSettings.Favorites.APPWIDGET_ID, widgetId);
        this.mRequest.accept(this.mWidgetOptions);
        finish();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
    }

    @Override // android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode == 1) {
            int widgetId = data != null ? data.getIntExtra(LauncherSettings.Favorites.APPWIDGET_ID, this.mPendingBindWidgetId) : this.mPendingBindWidgetId;
            if (resultCode == -1) {
                acceptWidget(widgetId);
                return;
            } else {
                this.mAppWidgetHost.deleteAppWidgetId(widgetId);
                this.mPendingBindWidgetId = -1;
                return;
            }
        }
        super.onActivityResult(requestCode, resultCode, data);
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        outState.putInt(STATE_EXTRA_WIDGET_ID, this.mPendingBindWidgetId);
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(Bundle savedInstanceState) {
        super.onRestoreInstanceState(savedInstanceState);
        this.mPendingBindWidgetId = savedInstanceState.getInt(STATE_EXTRA_WIDGET_ID, this.mPendingBindWidgetId);
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        finish();
    }
}

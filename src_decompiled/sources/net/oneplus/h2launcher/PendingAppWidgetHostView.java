package net.oneplus.h2launcher;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public class PendingAppWidgetHostView extends LauncherAppWidgetHostView implements View.OnClickListener {
    private static final float MIN_SATUNATION = 0.7f;
    private static final float SETUP_ICON_SIZE_FACTOR = 0.4f;
    private static Resources.Theme sPreloaderTheme;
    private Drawable mCenterDrawable;
    private View.OnClickListener mClickListener;
    private View mDefaultView;
    private final boolean mDisabledForSafeMode;
    private boolean mDrawableSizeChanged;
    private Bitmap mIcon;
    private final Intent mIconLookupIntent;
    private final LauncherAppWidgetInfo mInfo;
    private Launcher mLauncher;
    private final TextPaint mPaint;
    private final Rect mRect;
    private Drawable mSettingIconDrawable;
    private Layout mSetupTextLayout;
    private final int mStartState;

    @TargetApi(21)
    public PendingAppWidgetHostView(Context context, LauncherAppWidgetInfo info, boolean disabledForSafeMode) {
        super(context);
        this.mRect = new Rect();
        this.mLauncher = (Launcher) context;
        this.mInfo = info;
        this.mStartState = info.restoreStatus;
        this.mIconLookupIntent = new Intent().setComponent(info.providerName);
        this.mDisabledForSafeMode = disabledForSafeMode;
        this.mPaint = new TextPaint();
        this.mPaint.setColor(-1);
        this.mPaint.setTextSize(TypedValue.applyDimension(0, this.mLauncher.getDeviceProfile().iconTextSizePx, getResources().getDisplayMetrics()));
        setBackgroundResource(R.drawable.quantum_panel_dark);
        setWillNotDraw(false);
        if (Utilities.ATLEAST_LOLLIPOP) {
            setElevation(getResources().getDimension(R.dimen.pending_widget_elevation));
        }
    }

    @Override // android.appwidget.AppWidgetHostView
    public void updateAppWidgetSize(Bundle newOptions, int minWidth, int minHeight, int maxWidth, int maxHeight) {
    }

    @Override // android.appwidget.AppWidgetHostView
    protected View getDefaultView() {
        if (this.mDefaultView == null) {
            this.mDefaultView = this.mInflater.inflate(R.layout.appwidget_not_ready, (ViewGroup) this, false);
            this.mDefaultView.setOnClickListener(this);
            applyState();
        }
        return this.mDefaultView;
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener l) {
        this.mClickListener = l;
    }

    @Override // net.oneplus.h2launcher.LauncherAppWidgetHostView
    public boolean isReinflateRequired() {
        return this.mStartState != this.mInfo.restoreStatus;
    }

    @Override // android.view.View
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        this.mDrawableSizeChanged = true;
    }

    public void updateIcon(AssetCache cache) {
        Bitmap icon = cache.getIcon(this.mIconLookupIntent, this.mInfo.user);
        if (this.mIcon != icon) {
            this.mIcon = icon;
            if (this.mCenterDrawable != null) {
                this.mCenterDrawable.setCallback(null);
                this.mCenterDrawable = null;
            }
            if (this.mIcon != null) {
                if (this.mDisabledForSafeMode) {
                    FastBitmapDrawable disabledIcon = this.mLauncher.createIconDrawable(this.mIcon);
                    disabledIcon.setGhostModeEnabled(true);
                    this.mCenterDrawable = disabledIcon;
                    this.mSettingIconDrawable = null;
                } else if (isReadyForClickSetup()) {
                    this.mCenterDrawable = new FastBitmapDrawable(this.mIcon);
                    this.mSettingIconDrawable = getResources().getDrawable(R.drawable.ic_setting).mutate();
                    updateSettingColor();
                } else {
                    if (sPreloaderTheme == null) {
                        sPreloaderTheme = getResources().newTheme();
                        sPreloaderTheme.applyStyle(R.style.PreloadIcon, true);
                    }
                    FastBitmapDrawable drawable = this.mLauncher.createIconDrawable(this.mIcon);
                    this.mCenterDrawable = new PreloadIconDrawable(drawable, sPreloaderTheme);
                    this.mCenterDrawable.setCallback(this);
                    this.mSettingIconDrawable = null;
                    applyState();
                }
                this.mDrawableSizeChanged = true;
            }
        }
    }

    private void updateSettingColor() {
        int color = Utilities.findDominantColorByHue(this.mIcon, 20);
        Color.colorToHSV(color, hsv);
        float[] hsv = {0.0f, Math.min(hsv[1], MIN_SATUNATION), 1.0f};
        int color2 = Color.HSVToColor(hsv);
        this.mSettingIconDrawable.setColorFilter(color2, PorterDuff.Mode.SRC_IN);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable who) {
        return who == this.mCenterDrawable || super.verifyDrawable(who);
    }

    public void applyState() {
        if (this.mCenterDrawable != null) {
            this.mCenterDrawable.setLevel(Math.max(this.mInfo.installProgress, 0));
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        if (this.mClickListener != null) {
            this.mClickListener.onClick(this);
        }
    }

    public boolean isReadyForClickSetup() {
        return (this.mInfo.restoreStatus & 2) == 0 && (this.mInfo.restoreStatus & 4) != 0;
    }

    private void updateDrawableBounds() {
        int iconTop;
        DeviceProfile grid = this.mLauncher.getDeviceProfile();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int minPadding = getResources().getDimensionPixelSize(R.dimen.pending_widget_min_padding);
        int availableWidth = ((getWidth() - paddingLeft) - paddingRight) - (minPadding * 2);
        int availableHeight = ((getHeight() - paddingTop) - paddingBottom) - (minPadding * 2);
        if (this.mSettingIconDrawable == null) {
            int outset = this.mCenterDrawable instanceof PreloadIconDrawable ? ((PreloadIconDrawable) this.mCenterDrawable).getOutset() : 0;
            int size = Math.min(grid.iconSizePx + (outset * 2), Math.min(availableWidth, availableHeight));
            this.mRect.set(0, 0, size, size);
            this.mRect.inset(outset, outset);
            this.mRect.offsetTo((getWidth() - this.mRect.width()) / 2, (getHeight() - this.mRect.height()) / 2);
            this.mCenterDrawable.setBounds(this.mRect);
            return;
        }
        float iconSize = Math.min(availableWidth, availableHeight);
        int maxSize = Math.max(availableWidth, availableHeight);
        if (iconSize * 1.8f > maxSize) {
            iconSize = maxSize / 1.8f;
        }
        int actualIconSize = (int) Math.min(iconSize, grid.iconSizePx);
        this.mSetupTextLayout = new StaticLayout(getResources().getText(R.string.gadget_setup_text), this.mPaint, availableWidth, Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, true);
        int textHeight = this.mSetupTextLayout.getHeight();
        float minHeightWithText = textHeight + (actualIconSize * 1.8f) + grid.iconDrawablePaddingPx;
        if (minHeightWithText < availableHeight) {
            iconTop = (((getHeight() - textHeight) - grid.iconDrawablePaddingPx) - actualIconSize) / 2;
        } else {
            iconTop = (getHeight() - actualIconSize) / 2;
            this.mSetupTextLayout = null;
        }
        this.mRect.set(0, 0, actualIconSize, actualIconSize);
        this.mRect.offset((getWidth() - actualIconSize) / 2, iconTop);
        this.mCenterDrawable.setBounds(this.mRect);
        this.mRect.left = paddingLeft + minPadding;
        this.mRect.right = this.mRect.left + ((int) (SETUP_ICON_SIZE_FACTOR * actualIconSize));
        this.mRect.top = paddingTop + minPadding;
        this.mRect.bottom = this.mRect.top + ((int) (SETUP_ICON_SIZE_FACTOR * actualIconSize));
        this.mSettingIconDrawable.setBounds(this.mRect);
        if (this.mSetupTextLayout != null) {
            this.mRect.left = paddingLeft + minPadding;
            this.mRect.top = this.mCenterDrawable.getBounds().bottom + grid.iconDrawablePaddingPx;
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.mCenterDrawable != null) {
            if (this.mDrawableSizeChanged) {
                updateDrawableBounds();
                this.mDrawableSizeChanged = false;
            }
            this.mCenterDrawable.draw(canvas);
            if (this.mSettingIconDrawable != null) {
                this.mSettingIconDrawable.draw(canvas);
            }
            if (this.mSetupTextLayout != null) {
                canvas.save();
                canvas.translate(this.mRect.left, this.mRect.top);
                this.mSetupTextLayout.draw(canvas);
                canvas.restore();
            }
        }
    }
}

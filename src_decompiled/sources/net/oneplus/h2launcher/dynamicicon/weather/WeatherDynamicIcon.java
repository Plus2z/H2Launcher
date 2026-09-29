package net.oneplus.h2launcher.dynamicicon.weather;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import net.oneplus.h2launcher.BubbleTextView;
import net.oneplus.h2launcher.FastBitmapDrawable;
import net.oneplus.h2launcher.Folder;
import net.oneplus.h2launcher.ShortcutInfo;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.dynamicicon.IDynamicIcon;
import net.oneplus.h2launcher.dynamicicon.IDynamicShortcut;
import net.oneplus.h2launcher.dynamicicon.calendar.CalendarShortcutInfo;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.widget.OneplusTransitionDrawable;

/* loaded from: classes.dex */
public class WeatherDynamicIcon extends BubbleTextView implements IDynamicIcon {
    private static final int ICON_DRAWABLE_ANIMATION_DURATION = 1000;
    private static final String TAG = WeatherDynamicIcon.class.getSimpleName();
    private OneplusTransitionDrawable mAnimationDrawable;
    private float mIconTextLeftPadding;
    private float mIconTextTopPadding;
    private Paint mTextPaint;

    public WeatherDynamicIcon(Context context) {
        this(context, null, 0);
    }

    public WeatherDynamicIcon(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public WeatherDynamicIcon(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    @Override // net.oneplus.h2launcher.BubbleTextView
    public void applyFromShortcutInfo(ShortcutInfo info, boolean promiseStateChanged, boolean animateChange) {
        super.applyFromShortcutInfo(info, promiseStateChanged, animateChange);
        WeatherShortcutInfo weatherInfo = (WeatherShortcutInfo) info;
        FastBitmapDrawable fastBitmapDrawable = weatherInfo.getStaticDrawable();
        fastBitmapDrawable.setGhostModeEnabled(info.isDisabled());
        setIcon(fastBitmapDrawable, (int) (this.mIconSize * Utilities.getIconScaleValue(this.mLauncher.getApplicationContext())));
        if (info.contentDescription != null) {
            setContentDescription(info.contentDescription);
        }
        setText(info.getLabel(this.mAssetCache, promiseStateChanged));
        setTag(info);
        if ((promiseStateChanged || info.isPromise()) && animateChange) {
            applyState(promiseStateChanged);
        }
        invalidate();
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable left, Drawable top, Drawable right, Drawable bottom) {
        super.setCompoundDrawables(left, top, right, bottom);
    }

    private void generateAnimationDrawable() {
        this.mLauncher.getDeviceProfile();
        WeatherShortcutInfo info = (WeatherShortcutInfo) getTag();
        FastBitmapDrawable oldDrawable = info.getCurrentIconDrawable();
        FastBitmapDrawable newDrawable = info.getNewIconDrawable();
        int iconSize = (int) (this.mIconSize * Utilities.getIconScaleValue(this.mLauncher.getApplicationContext()));
        oldDrawable.setGhostModeEnabled(info.isDisabled());
        oldDrawable.setBounds(0, 0, iconSize, iconSize);
        newDrawable.setGhostModeEnabled(info.isDisabled());
        newDrawable.setBounds(0, 0, iconSize, iconSize);
        OneplusTransitionDrawable transitionDrawable = new OneplusTransitionDrawable(new Drawable[]{oldDrawable, newDrawable});
        String resId = info.getNewWeatherImageId();
        if (resId.equals(info.getOldWeatherImageId())) {
            FastBitmapDrawable originalDrawable = info.getOriginalIconDrawable(resId);
            originalDrawable.setGhostModeEnabled(info.isDisabled());
            originalDrawable.setBounds(0, 0, iconSize, iconSize);
            transitionDrawable.setBaseDrawable(originalDrawable);
        }
        transitionDrawable.setBounds(0, 0, iconSize, iconSize);
        transitionDrawable.setFirstLayerHidden(true);
        transitionDrawable.setCrossFadeEnabled(true);
        transitionDrawable.setAnimationDoneCallback(new OneplusTransitionDrawable.AnimationDoneCallback() { // from class: net.oneplus.h2launcher.dynamicicon.weather.WeatherDynamicIcon.1
            @Override // net.oneplus.h2launcher.widget.OneplusTransitionDrawable.AnimationDoneCallback
            public void onAnimationDone(Drawable fromDrawable, Drawable endDrawable) {
                WeatherDynamicIcon.this.onTransitionDrawableFinish(fromDrawable, endDrawable);
            }

            @Override // net.oneplus.h2launcher.widget.OneplusTransitionDrawable.AnimationDoneCallback
            public void onAnimationCancel(Drawable fromDrawable, Drawable endDrawable) {
                WeatherDynamicIcon.this.onTransitionDrawableFinish(fromDrawable, endDrawable);
            }
        });
        this.mAnimationDrawable = transitionDrawable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onTransitionDrawableFinish(Drawable fromDrawable, Drawable endDrawable) {
        fromDrawable.setAlpha(255);
        endDrawable.setAlpha(255);
        setIcon(endDrawable, (int) (this.mIconSize * Utilities.getIconScaleValue(this.mLauncher.getApplicationContext())));
        tryToUpdateParentFolderIcon();
        IDynamicShortcut shortcut = (IDynamicShortcut) getTag();
        shortcut.onAnimationEnd();
        this.mAnimationDrawable = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.BubbleTextView
    public void updateIconState() {
        if (this.mIcon != null && (this.mIcon instanceof OneplusTransitionDrawable)) {
            ((OneplusTransitionDrawable) this.mIcon).setPressed(isPressed() || this.mStayPressed);
        } else {
            super.updateIconState();
        }
    }

    @Override // net.oneplus.h2launcher.dynamicicon.IDynamicIcon
    public void invalidateIcon() {
        IDynamicShortcut shortcut = (IDynamicShortcut) getTag();
        Logger.d(TAG, "DynamicIcon WeatherDynamicIcon invalidateIcon");
        if (shortcut.needInvalidate()) {
            performUpdateIcon();
        } else {
            invalidate();
        }
    }

    @Override // net.oneplus.h2launcher.dynamicicon.IDynamicIcon
    public void performUpdateIcon() {
        Logger.d(TAG, "DynamicIcon WeatherDynamicIcon performUpdateIcon");
        IDynamicShortcut shortcut = (IDynamicShortcut) getTag();
        if (shortcut.needInvalidate()) {
            shortcut.onAnimationStart();
            generateAnimationDrawable();
            OneplusTransitionDrawable drawable = this.mAnimationDrawable;
            copyPressedAndBrightness(this.mIcon, drawable);
            setIcon(drawable, (int) (this.mIconSize * Utilities.getIconScaleValue(this.mLauncher.getApplicationContext())));
            drawable.startTransition(1000);
        }
    }

    private void copyPressedAndBrightness(Drawable sourceIcon, Drawable targetIcon) {
        boolean pressed;
        int brightness;
        if (sourceIcon instanceof FastBitmapDrawable) {
            pressed = ((FastBitmapDrawable) sourceIcon).isPressed();
            brightness = ((FastBitmapDrawable) sourceIcon).getBrightness();
        } else if (sourceIcon instanceof OneplusTransitionDrawable) {
            pressed = ((OneplusTransitionDrawable) sourceIcon).isPressed();
            brightness = ((OneplusTransitionDrawable) sourceIcon).getBrightness();
        } else {
            return;
        }
        if (targetIcon instanceof FastBitmapDrawable) {
            ((FastBitmapDrawable) targetIcon).setPressed(pressed);
            ((FastBitmapDrawable) targetIcon).setBrightness(brightness);
        } else if (targetIcon instanceof OneplusTransitionDrawable) {
            ((OneplusTransitionDrawable) targetIcon).setPressed(pressed);
            ((OneplusTransitionDrawable) targetIcon).setBrightness(brightness);
        }
    }

    @Override // net.oneplus.h2launcher.dynamicicon.IDynamicIcon
    public void finishUpdateIcon() {
        OneplusTransitionDrawable drawable = this.mAnimationDrawable;
        if (drawable != null && drawable.isRunning()) {
            drawable.cancelTransition();
        }
    }

    private void tryToUpdateParentFolderIcon() {
        Folder folder = this.mLauncher.getWorkspace().getOpenFolder();
        if (folder != null) {
            folder.invalidateFolderIcon();
        }
    }

    @Override // net.oneplus.h2launcher.dynamicicon.IDynamicIcon
    public void updateAssetPackChange() {
        IDynamicShortcut shortcut = (IDynamicShortcut) getTag();
        FastBitmapDrawable drawable = ((CalendarShortcutInfo) shortcut).getCurrentIconDrawable();
        copyPressedAndBrightness(this.mIcon, drawable);
        setIcon(drawable, (int) (this.mIconSize * Utilities.getIconScaleValue(this.mLauncher.getApplicationContext())));
    }
}

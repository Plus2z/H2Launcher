package net.oneplus.h2launcher.allapps;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import net.oneplus.h2launcher.BubbleTextView;
import net.oneplus.h2launcher.ClickShadowView;
import net.oneplus.h2launcher.DeviceProfile;
import net.oneplus.h2launcher.Launcher;

/* loaded from: classes.dex */
public class AllAppsRecyclerViewContainerView extends FrameLayout implements BubbleTextView.BubbleTextShadowHandler {
    private final ClickShadowView mTouchFeedbackView;

    public AllAppsRecyclerViewContainerView(Context context) {
        this(context, null);
    }

    public AllAppsRecyclerViewContainerView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public AllAppsRecyclerViewContainerView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        Launcher launcher = (Launcher) context;
        DeviceProfile grid = launcher.getDeviceProfile();
        this.mTouchFeedbackView = new ClickShadowView(context);
        int size = grid.allAppsIconSizePx + this.mTouchFeedbackView.getExtraSize();
        addView(this.mTouchFeedbackView, size, size);
    }

    @Override // net.oneplus.h2launcher.BubbleTextView.BubbleTextShadowHandler
    public void setPressedIcon(BubbleTextView icon, Bitmap background) {
        if (icon == null || background == null) {
            this.mTouchFeedbackView.setBitmap(null);
            this.mTouchFeedbackView.animate().cancel();
        } else if (this.mTouchFeedbackView.setBitmap(background)) {
            this.mTouchFeedbackView.alignWithIconView(icon, (ViewGroup) icon.getParent());
            this.mTouchFeedbackView.animateShadow();
        }
    }
}

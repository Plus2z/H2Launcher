package net.oneplus.h2launcher.quickpage.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import net.oneplus.h2launcher.quickpage.rebound.Spring;
import net.oneplus.h2launcher.quickpage.rebound.SpringListener;

/* loaded from: classes.dex */
public class SpringFrameLayout extends FrameLayout implements SpringListener {
    public SpringFrameLayout(Context context) {
        super(context);
    }

    public SpringFrameLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public SpringFrameLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    @Override // net.oneplus.h2launcher.quickpage.rebound.SpringListener
    public void onSpringUpdate(Spring spring) {
        float val = (float) spring.getCurrentValue();
        setTranslationY(val);
    }

    @Override // net.oneplus.h2launcher.quickpage.rebound.SpringListener
    public void onSpringChainUpdate(Spring spring, Spring springControl) {
    }

    @Override // net.oneplus.h2launcher.quickpage.rebound.SpringListener
    public void onSpringAtRest(Spring spring) {
    }

    @Override // net.oneplus.h2launcher.quickpage.rebound.SpringListener
    public void onSpringActivate(Spring spring) {
    }

    @Override // net.oneplus.h2launcher.quickpage.rebound.SpringListener
    public void onSpringEndStateChange(Spring spring) {
    }
}

package net.oneplus.h2launcher;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public class BaseRecyclerViewFastScrollPopup {
    private static final float FAST_SCROLL_OVERLAY_Y_OFFSET_FACTOR = 1.5f;
    private float mAlpha;
    private Animator mAlphaAnimator;
    private Drawable mBg;
    private int mBgOriginalSize;
    private Resources mRes;
    private BaseRecyclerView mRv;
    private String mSectionName;
    private Paint mTextPaint;
    private boolean mVisible;
    private int mBgColor = 0;
    private Rect mBgBounds = new Rect();
    private Rect mInvalidateRect = new Rect();
    private Rect mTmpRect = new Rect();
    private Rect mTextBounds = new Rect();

    public BaseRecyclerViewFastScrollPopup(BaseRecyclerView rv, Resources res) {
        this.mRes = res;
        this.mRv = rv;
        this.mBgOriginalSize = res.getDimensionPixelSize(R.dimen.container_fastscroll_popup_size);
        this.mBg = res.getDrawable(R.drawable.container_fastscroll_popup_bg);
        this.mBg.setBounds(0, 0, this.mBgOriginalSize, this.mBgOriginalSize);
        this.mTextPaint = new Paint();
        this.mTextPaint.setColor(-1);
        this.mTextPaint.setAntiAlias(true);
        this.mTextPaint.setTextSize(res.getDimensionPixelSize(R.dimen.container_fastscroll_popup_text_size));
    }

    public void setSectionName(String sectionName) {
        if (!sectionName.equals(this.mSectionName)) {
            this.mSectionName = sectionName;
            this.mTextPaint.getTextBounds(sectionName, 0, sectionName.length(), this.mTextBounds);
            this.mTextBounds.right = (int) (this.mTextBounds.left + this.mTextPaint.measureText(sectionName));
        }
    }

    public Rect updateFastScrollerBounds(BaseRecyclerView rv, int lastTouchY) {
        this.mInvalidateRect.set(this.mBgBounds);
        if (isVisible()) {
            int edgePadding = rv.getMaxScrollbarWidth();
            int bgPadding = (this.mBgOriginalSize - this.mTextBounds.height()) / 2;
            int bgHeight = this.mBgOriginalSize;
            int bgWidth = Math.max(this.mBgOriginalSize, this.mTextBounds.width() + (bgPadding * 2));
            if (Utilities.isRtl(this.mRes)) {
                this.mBgBounds.left = rv.getBackgroundPadding().left + (rv.getMaxScrollbarWidth() * 2);
                this.mBgBounds.right = this.mBgBounds.left + bgWidth;
            } else {
                this.mBgBounds.right = (rv.getWidth() - rv.getBackgroundPadding().right) - (rv.getMaxScrollbarWidth() * 2);
                this.mBgBounds.left = this.mBgBounds.right - bgWidth;
            }
            this.mBgBounds.top = lastTouchY - ((int) (FAST_SCROLL_OVERLAY_Y_OFFSET_FACTOR * bgHeight));
            this.mBgBounds.top = Math.max(edgePadding, Math.min(this.mBgBounds.top, (rv.getHeight() - edgePadding) - bgHeight));
            this.mBgBounds.bottom = this.mBgBounds.top + bgHeight;
        } else {
            this.mBgBounds.setEmpty();
        }
        this.mInvalidateRect.union(this.mBgBounds);
        return this.mInvalidateRect;
    }

    public void animateVisibility(boolean visible) {
        if (this.mVisible != visible) {
            this.mVisible = visible;
            if (this.mAlphaAnimator != null) {
                this.mAlphaAnimator.cancel();
            }
            float[] fArr = new float[1];
            fArr[0] = visible ? 1.0f : 0.0f;
            this.mAlphaAnimator = ObjectAnimator.ofFloat(this, "alpha", fArr);
            this.mAlphaAnimator.setDuration(visible ? 200L : 150L);
            this.mAlphaAnimator.start();
        }
    }

    public void setBackgroundColor(int bgColor) {
        this.mBgColor = bgColor;
    }

    public void setAlpha(float alpha) {
        this.mAlpha = alpha;
        this.mRv.invalidate(this.mBgBounds);
    }

    public float getAlpha() {
        return this.mAlpha;
    }

    public int getHeight() {
        return this.mBgOriginalSize;
    }

    public void draw(Canvas c) {
        if (isVisible()) {
            int restoreCount = c.save();
            c.translate(this.mBgBounds.left, this.mBgBounds.top);
            this.mTmpRect.set(this.mBgBounds);
            this.mTmpRect.offsetTo(0, 0);
            this.mBg.setBounds(this.mTmpRect);
            this.mBg.setAlpha((int) (this.mAlpha * 255.0f));
            if (this.mBgColor != 0) {
                this.mBg.setColorFilter(this.mBgColor, PorterDuff.Mode.SRC_IN);
            }
            this.mBg.draw(c);
            this.mTextPaint.setAlpha((int) (this.mAlpha * 255.0f));
            c.drawText(this.mSectionName, (this.mBgBounds.width() - this.mTextBounds.width()) / 2, this.mBgBounds.height() - ((this.mBgBounds.height() - this.mTextBounds.height()) / 2), this.mTextPaint);
            c.restoreToCount(restoreCount);
        }
    }

    public boolean isVisible() {
        return this.mAlpha > 0.0f && this.mSectionName != null;
    }
}

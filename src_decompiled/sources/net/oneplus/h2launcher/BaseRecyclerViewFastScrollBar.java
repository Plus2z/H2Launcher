package net.oneplus.h2launcher;

import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.Rect;
import android.support.v4.content.ContextCompat;
import android.view.MotionEvent;
import android.view.ViewConfiguration;

/* loaded from: classes.dex */
public class BaseRecyclerViewFastScrollBar {
    private static final int MAX_TRACK_ALPHA = 30;
    private static final int SCROLL_BAR_VIS_DURATION = 150;
    private boolean mCanThumbDetach;
    private Context mContext;
    private boolean mIgnoreDragGesture;
    private boolean mIsDragging;
    private boolean mIsThumbDetached;
    private float mLastTouchY;
    private int mPathTopMargin;
    private BaseRecyclerViewFastScrollPopup mPopup;
    BaseRecyclerView mRv;
    private AnimatorSet mScrollbarAnimator;
    private int mThumbActiveColor;
    private int mThumbCurvature;
    int mThumbHeight;
    private int mThumbInactiveColor;
    private int mThumbMaxWidth;
    private int mThumbMinWidth;
    Paint mThumbPaint;
    int mThumbWidth;
    private int mTouchInset;
    private int mTouchOffset;
    private Paint mTrackPaint;
    private int mTrackWidth;
    Point mThumbOffset = new Point(-1, -1);
    private Path mThumbPath = new Path();
    private Rect mInvalidateRect = new Rect();
    private Rect mTmpRect = new Rect();

    /* loaded from: classes.dex */
    public interface FastScrollFocusableView {
        void setFastScrollFocused(boolean z, boolean z2);
    }

    public BaseRecyclerViewFastScrollBar(BaseRecyclerView rv, Context context) {
        this.mContext = context;
        this.mRv = rv;
        Resources res = this.mContext.getResources();
        this.mPopup = new BaseRecyclerViewFastScrollPopup(rv, res);
        this.mTrackPaint = new Paint();
        this.mTrackPaint.setColor(rv.getFastScrollerTrackColor(-16777216));
        this.mTrackPaint.setAlpha(30);
        this.mThumbPaint = new Paint();
        this.mThumbPaint.setAntiAlias(true);
        updateColors();
        this.mThumbPaint.setStyle(Paint.Style.FILL);
        int dimensionPixelSize = res.getDimensionPixelSize(R.dimen.container_fastscroll_thumb_min_width);
        this.mThumbMinWidth = dimensionPixelSize;
        this.mThumbWidth = dimensionPixelSize;
        this.mThumbMaxWidth = res.getDimensionPixelSize(R.dimen.container_fastscroll_thumb_max_width);
        this.mThumbHeight = res.getDimensionPixelSize(R.dimen.container_fastscroll_thumb_height);
        this.mThumbCurvature = this.mThumbMaxWidth - this.mThumbMinWidth;
        this.mTouchInset = res.getDimensionPixelSize(R.dimen.container_fastscroll_thumb_touch_inset);
    }

    public void setDarkMode(boolean darkMode) {
        updateColors();
    }

    public void updateColors() {
        int color = ContextCompat.getColor(this.mContext, R.color.oneplus_accent_color);
        this.mThumbInactiveColor = this.mRv.getFastScrollerThumbInactiveColor(color);
        this.mThumbActiveColor = color;
        this.mThumbPaint.setColor(this.mThumbInactiveColor);
        this.mPopup.setBackgroundColor(color);
    }

    public void setDetachThumbOnFastScroll() {
        this.mCanThumbDetach = true;
    }

    public void reattachThumbToScroll() {
        this.mIsThumbDetached = false;
    }

    public void setThumbOffset(int x, int y) {
        if (this.mThumbOffset.x != x || this.mThumbOffset.y != y) {
            this.mInvalidateRect.set(this.mThumbOffset.x - this.mThumbCurvature, this.mThumbOffset.y, this.mThumbOffset.x + this.mThumbWidth, this.mThumbOffset.y + this.mThumbHeight);
            this.mThumbOffset.set(x, y);
            updateThumbPath();
            this.mInvalidateRect.union(this.mThumbOffset.x - this.mThumbCurvature, this.mThumbOffset.y, this.mThumbOffset.x + this.mThumbWidth, this.mThumbOffset.y + this.mThumbHeight);
            this.mRv.invalidate(this.mInvalidateRect);
        }
    }

    public Point getThumbOffset() {
        return this.mThumbOffset;
    }

    public void setThumbWidth(int width) {
        this.mInvalidateRect.set(this.mThumbOffset.x - this.mThumbCurvature, this.mThumbOffset.y, this.mThumbOffset.x + this.mThumbWidth, this.mThumbOffset.y + this.mThumbHeight);
        this.mThumbWidth = width;
        updateThumbPath();
        this.mInvalidateRect.union(this.mThumbOffset.x - this.mThumbCurvature, this.mThumbOffset.y, this.mThumbOffset.x + this.mThumbWidth, this.mThumbOffset.y + this.mThumbHeight);
        this.mRv.invalidate(this.mInvalidateRect);
    }

    public int getThumbWidth() {
        return this.mThumbWidth;
    }

    public void setTrackWidth(int width) {
        this.mInvalidateRect.set(this.mThumbOffset.x - this.mThumbCurvature, 0, this.mThumbOffset.x + this.mThumbWidth, this.mRv.getHeight());
        this.mTrackWidth = width;
        updateThumbPath();
        this.mInvalidateRect.union(this.mThumbOffset.x - this.mThumbCurvature, 0, this.mThumbOffset.x + this.mThumbWidth, this.mRv.getHeight());
        this.mRv.invalidate(this.mInvalidateRect);
    }

    public int getTrackWidth() {
        return this.mTrackWidth;
    }

    public void setPathTopMargin(int pathTopMargin) {
        this.mPathTopMargin = pathTopMargin;
    }

    public int getThumbHeight() {
        return this.mThumbHeight;
    }

    public int getThumbMaxWidth() {
        return this.mThumbMaxWidth;
    }

    public float getLastTouchY() {
        return this.mLastTouchY;
    }

    public boolean isDraggingThumb() {
        return this.mIsDragging;
    }

    public boolean isThumbDetached() {
        return this.mIsThumbDetached;
    }

    public void handleTouchEvent(MotionEvent ev, int downX, int downY, int lastY) {
        ViewConfiguration config = ViewConfiguration.get(this.mRv.getContext());
        int action = ev.getAction();
        int y = (int) ev.getY();
        switch (action) {
            case 0:
                if (isNearThumb(downX, downY)) {
                    this.mTouchOffset = downY - this.mThumbOffset.y;
                    return;
                }
                return;
            case 1:
            case 3:
                this.mTouchOffset = 0;
                this.mLastTouchY = 0.0f;
                this.mIgnoreDragGesture = false;
                if (this.mIsDragging) {
                    this.mIsDragging = false;
                    this.mPopup.animateVisibility(false);
                    animateScrollbar(false);
                    return;
                }
                return;
            case 2:
                this.mIgnoreDragGesture = (Math.abs(y - downY) > config.getScaledPagingTouchSlop()) | this.mIgnoreDragGesture;
                if (!this.mIsDragging && !this.mIgnoreDragGesture && isNearThumb(downX, lastY) && Math.abs(y - downY) > config.getScaledTouchSlop()) {
                    this.mRv.getParent().requestDisallowInterceptTouchEvent(true);
                    this.mIsDragging = true;
                    if (this.mCanThumbDetach) {
                        this.mIsThumbDetached = true;
                    }
                    this.mTouchOffset += lastY - downY;
                    this.mPopup.animateVisibility(true);
                    animateScrollbar(true);
                }
                if (this.mIsDragging) {
                    int top = this.mRv.getBackgroundPadding().top;
                    int bottom = (this.mRv.getHeight() - this.mRv.getBackgroundPadding().bottom) - this.mThumbHeight;
                    float boundedY = Math.max(top, Math.min(bottom, y - this.mTouchOffset));
                    String sectionName = this.mRv.scrollToPositionAtProgress((boundedY - top) / (bottom - top));
                    this.mPopup.setSectionName(sectionName);
                    this.mPopup.animateVisibility(!sectionName.isEmpty());
                    this.mRv.invalidate(this.mPopup.updateFastScrollerBounds(this.mRv, lastY));
                    this.mLastTouchY = boundedY;
                    return;
                }
                return;
            default:
                return;
        }
    }

    public void draw(Canvas canvas) {
        if (this.mThumbOffset.x >= 0 && this.mThumbOffset.y >= 0) {
            if (this.mTrackPaint.getAlpha() > 0) {
                canvas.drawRect(this.mThumbOffset.x, this.mPathTopMargin, this.mThumbOffset.x + this.mThumbWidth, this.mRv.getHeight(), this.mTrackPaint);
            }
            canvas.drawPath(this.mThumbPath, this.mThumbPaint);
            this.mPopup.draw(canvas);
        }
    }

    private void animateScrollbar(boolean isScrolling) {
        if (this.mScrollbarAnimator != null) {
            this.mScrollbarAnimator.cancel();
        }
        this.mScrollbarAnimator = new AnimatorSet();
        int[] iArr = new int[1];
        iArr[0] = isScrolling ? this.mThumbMaxWidth : this.mThumbMinWidth;
        ObjectAnimator trackWidthAnim = ObjectAnimator.ofInt(this, "trackWidth", iArr);
        int[] iArr2 = new int[1];
        iArr2[0] = isScrolling ? this.mThumbMaxWidth : this.mThumbMinWidth;
        ObjectAnimator thumbWidthAnim = ObjectAnimator.ofInt(this, "thumbWidth", iArr2);
        this.mScrollbarAnimator.playTogether(trackWidthAnim, thumbWidthAnim);
        if (this.mThumbActiveColor != this.mThumbInactiveColor) {
            ArgbEvaluator argbEvaluator = new ArgbEvaluator();
            Object[] objArr = new Object[2];
            objArr[0] = Integer.valueOf(this.mThumbPaint.getColor());
            objArr[1] = Integer.valueOf(isScrolling ? this.mThumbActiveColor : this.mThumbInactiveColor);
            ValueAnimator colorAnimation = ValueAnimator.ofObject(argbEvaluator, objArr);
            colorAnimation.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: net.oneplus.h2launcher.BaseRecyclerViewFastScrollBar.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator animator) {
                    BaseRecyclerViewFastScrollBar.this.mThumbPaint.setColor(((Integer) animator.getAnimatedValue()).intValue());
                    BaseRecyclerViewFastScrollBar.this.mRv.invalidate(BaseRecyclerViewFastScrollBar.this.mThumbOffset.x, BaseRecyclerViewFastScrollBar.this.mThumbOffset.y, BaseRecyclerViewFastScrollBar.this.mThumbOffset.x + BaseRecyclerViewFastScrollBar.this.mThumbWidth, BaseRecyclerViewFastScrollBar.this.mThumbOffset.y + BaseRecyclerViewFastScrollBar.this.mThumbHeight);
                }
            });
            this.mScrollbarAnimator.play(colorAnimation);
        }
        this.mScrollbarAnimator.setDuration(150L);
        this.mScrollbarAnimator.start();
    }

    private void updateThumbPath() {
        this.mThumbCurvature = this.mThumbMaxWidth - this.mThumbWidth;
        this.mThumbPath.reset();
        this.mThumbPath.moveTo(this.mThumbOffset.x + this.mThumbWidth, this.mThumbOffset.y);
        this.mThumbPath.lineTo(this.mThumbOffset.x + this.mThumbWidth, this.mThumbOffset.y + this.mThumbHeight);
        this.mThumbPath.lineTo(this.mThumbOffset.x, this.mThumbOffset.y + this.mThumbHeight);
        this.mThumbPath.cubicTo(this.mThumbOffset.x, this.mThumbOffset.y + this.mThumbHeight, this.mThumbOffset.x - this.mThumbCurvature, this.mThumbOffset.y + (this.mThumbHeight / 2), this.mThumbOffset.x, this.mThumbOffset.y);
        this.mThumbPath.close();
    }

    private boolean isNearThumb(int x, int y) {
        this.mTmpRect.set(this.mThumbOffset.x, this.mThumbOffset.y, this.mThumbOffset.x + this.mThumbWidth, this.mThumbOffset.y + this.mThumbHeight);
        this.mTmpRect.inset(this.mTouchInset, this.mTouchInset);
        return this.mTmpRect.contains(x, y);
    }
}

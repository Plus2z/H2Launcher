package net.oneplus.h2launcher;

import android.animation.Animator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.View;

/* loaded from: classes.dex */
public class FolderScrollBar extends View implements View.OnScrollChangeListener {
    private static final int AUTO_HIDE_DELAY = 1500;
    private static final boolean ENABLE_AUTO_HIDE = false;
    private static final int FADE_DURATION = 225;
    private static final long SHOW_SCROLL_BAR_DELAY = 300;
    private FolderScrollView mFolderScrollView;
    private final Runnable mHideRunnable;
    private Runnable mPendingRunnable;
    private Runnable mShowScrollBarRunnable;
    private State mState;
    private Paint mThumb;
    private int mThumbHeight;
    private Point mThumbPosition;
    private Paint mTrack;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum State {
        SHOW,
        HIDE,
        PLAY_SHOW_ANIMATION,
        PLAY_HIDE_ANIMATION
    }

    public FolderScrollBar(Context context) {
        this(context, null, 0);
    }

    public FolderScrollBar(Context context, @Nullable AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public FolderScrollBar(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mThumbPosition = new Point(0, 0);
        this.mPendingRunnable = null;
        this.mState = State.HIDE;
        this.mShowScrollBarRunnable = new Runnable() { // from class: net.oneplus.h2launcher.FolderScrollBar.2
            @Override // java.lang.Runnable
            public void run() {
                if ((FolderScrollBar.this.mState == State.HIDE || FolderScrollBar.this.mState == State.PLAY_HIDE_ANIMATION) && FolderScrollBar.this.shouldShowScrollBar()) {
                    FolderScrollBar.this.playShowAnimation();
                    FolderScrollBar.this.postAutoHideDelayed();
                }
                FolderScrollBar.this.updateThumbPosition();
            }
        };
        Resources resources = context.getResources();
        Resources.Theme theme = context.getTheme();
        this.mThumbHeight = resources.getDimensionPixelSize(R.dimen.folder_scrollbar_thumb_height);
        this.mThumb = new Paint(1);
        this.mTrack = new Paint(1);
        this.mTrack.setColor(resources.getColor(R.color.folder_content_scrollbar_track, theme));
        this.mThumb.setColor(resources.getColor(R.color.folder_content_scrollbar_thumb, theme));
        this.mHideRunnable = new Runnable() { // from class: net.oneplus.h2launcher.FolderScrollBar.1
            @Override // java.lang.Runnable
            public void run() {
                FolderScrollBar.this.mState = State.PLAY_HIDE_ANIMATION;
                FolderScrollBar.this.animate().setDuration(225L).alpha(0.0f).setListener(new Animator.AnimatorListener() { // from class: net.oneplus.h2launcher.FolderScrollBar.1.1
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animation) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animation) {
                        FolderScrollBar.this.mState = State.HIDE;
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animation) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animation) {
                    }
                }).start();
            }
        };
    }

    public void setFolderScrollView(FolderScrollView scrollView) {
        this.mFolderScrollView = scrollView;
        this.mFolderScrollView.addOnScrollChangeListener(this);
    }

    @Override // android.view.View.OnScrollChangeListener
    public void onScrollChange(View v, int scrollX, int scrollY, int oldScrollX, int oldScrollY) {
        if ((this.mState == State.HIDE || this.mState == State.PLAY_HIDE_ANIMATION) && shouldShowScrollBar()) {
            playShowAnimation();
        }
        updateThumbPosition();
        postAutoHideDelayed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postAutoHideDelayed() {
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.mState != State.HIDE) {
            canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), this.mTrack);
            canvas.drawRect(0.0f, this.mThumbPosition.y, getWidth(), this.mThumbPosition.y + this.mThumbHeight, this.mThumb);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateThumbPosition() {
        int y = 0;
        if (shouldShowScrollBar()) {
            y = (this.mFolderScrollView.getScrollY() * (getHeight() - this.mThumbHeight)) / (this.mFolderScrollView.getVerticalScrollRange() - this.mFolderScrollView.getVerticalScrollExtent());
        }
        if (this.mThumbPosition.y != y) {
            this.mThumbPosition.set(0, y);
            if (this.mState != State.HIDE) {
                invalidate();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldShowScrollBar() {
        return this.mFolderScrollView.getVerticalScrollExtent() > 0 && this.mFolderScrollView.getVerticalScrollExtent() < this.mFolderScrollView.getVerticalScrollRange();
    }

    private void showScrollBarDelay(long delay) {
        removeCallbacks(this.mShowScrollBarRunnable);
        postDelayed(this.mShowScrollBarRunnable, delay);
        postAutoHideDelayed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void playShowAnimation() {
        if (!isAttachedToWindow()) {
            this.mPendingRunnable = new Runnable() { // from class: net.oneplus.h2launcher.FolderScrollBar.3
                @Override // java.lang.Runnable
                public void run() {
                    FolderScrollBar.this.playShowAnimation();
                }
            };
            return;
        }
        this.mState = State.PLAY_SHOW_ANIMATION;
        postInvalidateOnAnimation();
        animate().setDuration(225L).alpha(1.0f).setListener(new Animator.AnimatorListener() { // from class: net.oneplus.h2launcher.FolderScrollBar.4
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animation) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                FolderScrollBar.this.mState = State.SHOW;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animation) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animation) {
            }
        }).start();
    }

    public void notifyFolderOpen() {
        showScrollBarDelay(SHOW_SCROLL_BAR_DELAY);
    }

    public void notifyFolderRearrange(boolean isRearrange) {
        if (isRearrange) {
            showScrollBarDelay(0L);
        }
    }

    public void notifyFolderItemChanged() {
        dismissScrollBar();
        showScrollBarDelay(0L);
    }

    public void dismissScrollBar() {
        removeCallbacks(this.mHideRunnable);
        removeCallbacks(this.mShowScrollBarRunnable);
        animate().cancel();
        setAlpha(0.0f);
        this.mState = State.HIDE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void cancelShowScrollbarAnimation() {
        removeCallbacks(this.mShowScrollBarRunnable);
        animate().cancel();
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mPendingRunnable != null) {
            post(this.mPendingRunnable);
            this.mPendingRunnable = null;
        }
    }

    @Override // android.view.View
    public boolean isShown() {
        return this.mState == State.SHOW;
    }
}

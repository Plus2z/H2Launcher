package com.oneplus.lib.widget.listview;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.ListView;
import java.security.InvalidParameterException;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class OPListView extends ListView {
    static final String TAG = "OPListView";
    private boolean mAnimRunning;
    private ArrayList<ObjectAnimator> mAnimatorList;
    ValueAnimator.AnimatorUpdateListener mAnimatorUpdateListener;
    private DecelerateInterpolator mDecelerateInterpolator;
    AnimatorSet mDelAniSet;
    private boolean mDelAnimationFlag;
    private ArrayList<Integer> mDelOriViewTopList;
    private ArrayList<Integer> mDelPosList;
    private ArrayList<View> mDelViewList;
    private DeleteAnimationListener mDeleteAnimationListener;
    private boolean mDisableTouchEvent;
    private Drawable mDivider;
    private IOPDividerController mDividerController;
    private int mDividerHeight;
    private boolean mFooterDividersEnabled;
    private boolean mHeaderDividersEnabled;
    private boolean mInDeleteAnimation;
    private boolean mIsClipToPadding;
    private boolean mIsDisableAnimation;
    private ArrayList<View> mNowViewList;
    private int mOriBelowLeftCount;
    private int mOriCurDeleteCount;
    private int mOriCurLeftCount;
    private int mOriFirstPosition;
    private boolean mOriLastPage;
    private int mOriUpperDeleteCount;
    Rect mTempRect;

    /* loaded from: classes.dex */
    public interface DeleteAnimationListener {
        void onAnimationEnd();

        void onAnimationStart();

        void onAnimationUpdate();
    }

    public OPListView(Context context) {
        this(context, null);
    }

    public OPListView(Context context, AttributeSet attrs) {
        this(context, attrs, R.attr.listViewStyle);
    }

    public OPListView(Context context, AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr, 0);
    }

    public OPListView(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        this.mDividerHeight = 1;
        this.mIsDisableAnimation = true;
        this.mDelViewList = null;
        this.mDelPosList = null;
        this.mNowViewList = null;
        this.mDelOriViewTopList = null;
        this.mDelAniSet = null;
        this.mDecelerateInterpolator = new DecelerateInterpolator(1.2f);
        this.mAnimatorList = new ArrayList<>();
        this.mTempRect = new Rect();
        this.mHeaderDividersEnabled = true;
        this.mFooterDividersEnabled = true;
        this.mIsClipToPadding = true;
        this.mDividerController = null;
        this.mAnimatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.oneplus.lib.widget.listview.OPListView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator animation) {
                OPListView.this.invalidate();
            }
        };
        init(context, attrs, defStyleAttr, defStyleRes);
    }

    private void init(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        TypedArray a = context.obtainStyledAttributes(attrs, com.oneplus.commonctrl.R.styleable.OPListView, com.oneplus.commonctrl.R.attr.OPListViewStyle, 0);
        Drawable d = a.getDrawable(com.oneplus.commonctrl.R.styleable.OPListView_android_divider);
        Drawable bg = a.getDrawable(com.oneplus.commonctrl.R.styleable.OPListView_android_background);
        if (d != null) {
            setDivider(d);
        }
        if (bg != null) {
            setBackground(bg);
        }
        this.mDividerHeight = getResources().getDimensionPixelSize(com.oneplus.commonctrl.R.dimen.listview_divider_height);
        setOverScrollMode(0);
        super.setDivider(new ColorDrawable(R.color.transparent));
        setDividerHeight(this.mDividerHeight);
        setFooterDividersEnabled(false);
    }

    @Override // android.widget.ListView
    public void setHeaderDividersEnabled(boolean headerDividersEnabled) {
        this.mHeaderDividersEnabled = headerDividersEnabled;
    }

    @Override // android.widget.ListView
    public void setFooterDividersEnabled(boolean footerDividersEnabled) {
        this.mFooterDividersEnabled = footerDividersEnabled;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        Drawable overscrollHeader = getOverscrollHeader();
        Drawable overscrollFooter = getOverscrollFooter();
        boolean drawOverscrollHeader = overscrollHeader != null;
        boolean drawOverscrollFooter = overscrollFooter != null;
        boolean drawDividers = getDivider() != null;
        if (drawDividers || drawOverscrollHeader || drawOverscrollFooter) {
            Rect bounds = this.mTempRect;
            bounds.left = getPaddingLeft();
            bounds.right = (getRight() - getLeft()) - getPaddingRight();
            int count = getChildCount();
            int headerCount = getHeaderViewsCount();
            int itemCount = getCount();
            int footerLimit = itemCount - getFooterViewsCount();
            boolean headerDividers = this.mHeaderDividersEnabled;
            boolean footerDividers = this.mFooterDividersEnabled;
            int first = getFirstVisiblePosition();
            getAdapter();
            int effectivePaddingTop = 0;
            int effectivePaddingBottom = 0;
            if (isClipToPadding()) {
                effectivePaddingTop = getListPaddingTop();
                effectivePaddingBottom = getListPaddingBottom();
            }
            int listBottom = ((getBottom() - getTop()) - effectivePaddingBottom) + getScrollY();
            if (!isStackFromBottom()) {
                int scrollY = getScrollY();
                if (count > 0 && scrollY < 0 && drawDividers) {
                    bounds.bottom = 0;
                    bounds.top = -getDividerHeight();
                    drawDivider(canvas, bounds, -1);
                }
                int i = 0;
                while (i < count) {
                    int itemIndex = first + i;
                    boolean isHeader = itemIndex < headerCount;
                    boolean isFooter = itemIndex >= footerLimit;
                    if ((headerDividers || !isHeader) && (footerDividers || !isFooter)) {
                        View child = getChildAt(i);
                        int bottom = child.getBottom();
                        boolean isLastItem = i == count + (-1);
                        if (drawDividers && shouldDrawDivider(i) && child.getHeight() > 0 && bottom < listBottom && (!drawOverscrollFooter || !isLastItem)) {
                            int nextIndex = itemIndex + 1;
                            if ((headerDividers || (!isHeader && nextIndex >= headerCount)) && (isLastItem || footerDividers || (!isFooter && nextIndex < footerLimit))) {
                                int translationOffsetY = (int) child.getTranslationY();
                                bounds.top = bottom + translationOffsetY;
                                bounds.bottom = getDividerHeight() + bottom + translationOffsetY;
                                drawDivider(canvas, bounds, i);
                            }
                        }
                    }
                    i++;
                }
            } else {
                int scrollY2 = getScrollY();
                int start = drawOverscrollHeader ? 1 : 0;
                int i2 = start;
                while (i2 < count) {
                    int itemIndex2 = first + i2;
                    boolean isHeader2 = itemIndex2 < headerCount;
                    boolean isFooter2 = itemIndex2 >= footerLimit;
                    if ((headerDividers || !isHeader2) && (footerDividers || !isFooter2)) {
                        int top = getChildAt(i2).getTop();
                        if (drawDividers && shouldDrawDivider(i2) && top > effectivePaddingTop) {
                            boolean isFirstItem = i2 == start;
                            int previousIndex = itemIndex2 - 1;
                            if ((headerDividers || (!isHeader2 && previousIndex >= headerCount)) && (isFirstItem || footerDividers || (!isFooter2 && previousIndex < footerLimit))) {
                                bounds.top = top - getDividerHeight();
                                bounds.bottom = top;
                                drawDivider(canvas, bounds, i2 - 1);
                            }
                        }
                    }
                    i2++;
                }
                if (count > 0 && scrollY2 > 0 && drawDividers) {
                    bounds.top = listBottom;
                    bounds.bottom = getDividerHeight() + listBottom;
                    drawDivider(canvas, bounds, -1);
                }
            }
        }
        if (this.mDelAnimationFlag) {
            this.mDelAnimationFlag = false;
            startDelDropAnimation();
        }
    }

    @Override // android.widget.ListView
    public Drawable getDivider() {
        return this.mDivider;
    }

    @Override // android.widget.ListView
    public void setDivider(Drawable divider) {
        this.mDivider = divider;
        requestLayout();
        invalidate();
    }

    @Override // android.widget.ListView
    public int getDividerHeight() {
        return this.mDividerHeight;
    }

    private boolean isClipToPadding() {
        return this.mIsClipToPadding;
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean clipToPadding) {
        super.setClipToPadding(clipToPadding);
        this.mIsClipToPadding = clipToPadding;
    }

    void drawDivider(Canvas canvas, Rect bounds, int childIndex) {
        Drawable divider = getDivider();
        int positionInAdapter = childIndex + getFirstVisiblePosition();
        int dividerType = getDividerType(positionInAdapter);
        if (this.mDividerController != null) {
            if (dividerType == 1) {
                bounds.left = 0;
                bounds.right = getWidth();
            } else if (dividerType == 2) {
                bounds.left = 100;
                bounds.right = getWidth() - 32;
            }
        }
        divider.setBounds(bounds);
        divider.draw(canvas);
    }

    public void setDividerController(IOPDividerController dividerController) {
        this.mDividerController = dividerController;
    }

    private int getDividerType(int position) {
        if (this.mDividerController == null) {
            return -1;
        }
        return this.mDividerController.getDividerType(position);
    }

    private boolean shouldDrawDivider(int childIndex) {
        int positionInAdapter = childIndex + getFirstVisiblePosition();
        int dividerType = getDividerType(positionInAdapter);
        return this.mDividerController == null || (this.mDividerController != null && dividerType > 0);
    }

    private ObjectAnimator getAnimator(int index, View child, float startValue) {
        if (index >= this.mAnimatorList.size()) {
            PropertyValuesHolder y = PropertyValuesHolder.ofFloat("y", startValue, child.getTop());
            ObjectAnimator animator = ObjectAnimator.ofPropertyValuesHolder(child, y);
            this.mAnimatorList.add(animator);
            return animator;
        }
        ObjectAnimator animator2 = this.mAnimatorList.get(index);
        PropertyValuesHolder[] pvhArray = animator2.getValues();
        PropertyValuesHolder y2 = pvhArray[0];
        y2.setFloatValues(startValue, child.getTop());
        animator2.setTarget(child);
        return animator2;
    }

    public void setDeleteAnimationListener(DeleteAnimationListener listener) {
        this.mDeleteAnimationListener = listener;
    }

    public void setDelPositionsList(ArrayList<Integer> deleteList) {
        View child;
        if (deleteList == null) {
            this.mDisableTouchEvent = false;
            throw new InvalidParameterException("The input parameter d is null!");
        }
        if (this.mAnimRunning) {
            this.mDisableTouchEvent = false;
            return;
        }
        if (!isDeleteAnimationEnabled()) {
            if (this.mDeleteAnimationListener != null) {
                this.mDeleteAnimationListener.onAnimationUpdate();
                this.mDeleteAnimationListener.onAnimationStart();
                this.mDeleteAnimationListener.onAnimationEnd();
            }
            this.mDisableTouchEvent = false;
            return;
        }
        int listLength = deleteList.size();
        if (listLength == 0) {
            this.mDisableTouchEvent = false;
            return;
        }
        this.mAnimRunning = true;
        if (this.mDeleteAnimationListener != null) {
            this.mDeleteAnimationListener.onAnimationStart();
        }
        this.mInDeleteAnimation = true;
        this.mOriFirstPosition = getFirstVisiblePosition();
        int childCount = getChildCount();
        if (this.mOriFirstPosition + childCount == getAdapter().getCount() + listLength) {
            this.mOriLastPage = true;
        } else {
            this.mOriLastPage = false;
        }
        this.mOriUpperDeleteCount = 0;
        this.mOriCurDeleteCount = 0;
        this.mOriCurLeftCount = 0;
        this.mOriBelowLeftCount = 0;
        if (this.mDelOriViewTopList == null) {
            this.mDelOriViewTopList = new ArrayList<>();
        } else {
            this.mDelOriViewTopList.clear();
        }
        if (this.mDelViewList == null) {
            this.mDelViewList = new ArrayList<>();
        } else {
            this.mDelViewList.clear();
        }
        if (this.mDelPosList == null) {
            this.mDelPosList = new ArrayList<>();
        } else {
            this.mDelPosList.clear();
        }
        int belowDeleteCount = 0;
        for (int i = 0; i < listLength; i++) {
            int delPos = deleteList.get(i).intValue();
            if (delPos < this.mOriFirstPosition) {
                this.mOriUpperDeleteCount++;
            } else if (delPos < this.mOriFirstPosition + childCount) {
                this.mDelPosList.add(Integer.valueOf(delPos));
                this.mDelViewList.add(getChildAt(delPos - this.mOriFirstPosition));
                this.mOriCurDeleteCount++;
            } else {
                belowDeleteCount++;
            }
        }
        boolean isDel = false;
        if (this.mOriUpperDeleteCount > 0 || this.mDelPosList.size() > 0) {
            isDel = true;
        }
        if (!isDel) {
            this.mAnimRunning = false;
            this.mInDeleteAnimation = false;
            this.mDisableTouchEvent = false;
            if (this.mDeleteAnimationListener != null) {
                this.mDeleteAnimationListener.onAnimationUpdate();
                this.mDeleteAnimationListener.onAnimationEnd();
                return;
            }
            return;
        }
        int size = this.mDelPosList.size();
        for (int i2 = 0; i2 < childCount; i2++) {
            if (size > 0) {
                int pos = this.mOriFirstPosition + i2;
                if (!this.mDelPosList.contains(Integer.valueOf(pos)) && (child = getChildAt(i2)) != null) {
                    this.mDelOriViewTopList.add(Integer.valueOf(child.getTop()));
                }
            } else {
                View child2 = getChildAt(i2);
                if (child2 != null) {
                    this.mDelOriViewTopList.add(Integer.valueOf(child2.getTop()));
                }
            }
        }
        this.mOriCurLeftCount = getChildCount() - this.mOriCurDeleteCount;
        this.mOriBelowLeftCount = (((getAdapter().getCount() + listLength) - getLastVisiblePosition()) - 1) - belowDeleteCount;
        startDelGoneAnimation();
    }

    private void startDelGoneAnimation() {
        this.mAnimRunning = true;
        int size = this.mDelViewList.size();
        if (size == 0) {
            this.mDelAnimationFlag = true;
            if (this.mDeleteAnimationListener != null) {
                this.mDeleteAnimationListener.onAnimationUpdate();
            }
            this.mDisableTouchEvent = false;
            return;
        }
        this.mDelAniSet = new AnimatorSet();
        PropertyValuesHolder pvhAlpha = PropertyValuesHolder.ofFloat("alpha", 1.0f, 0.0f);
        for (int i = 0; i < size; i++) {
            View child = this.mDelViewList.get(i);
            ObjectAnimator anim = ObjectAnimator.ofPropertyValuesHolder(child, pvhAlpha);
            anim.setDuration(200);
            anim.setInterpolator(this.mDecelerateInterpolator);
            anim.addUpdateListener(this.mAnimatorUpdateListener);
            this.mDelAniSet.playTogether(anim);
        }
        this.mDelAniSet.addListener(new AnimatorListenerAdapter() { // from class: com.oneplus.lib.widget.listview.OPListView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                int size2 = OPListView.this.mDelViewList.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    View child2 = (View) OPListView.this.mDelViewList.get(i2);
                    child2.setAlpha(1.0f);
                }
                if (OPListView.this.getAdapter() == null || (OPListView.this.getAdapter().getCount() != 0 && (OPListView.this.getEmptyView() == null || !OPListView.this.getAdapter().isEmpty()))) {
                    OPListView.this.mDelAnimationFlag = true;
                    if (OPListView.this.mDeleteAnimationListener != null) {
                        OPListView.this.mDeleteAnimationListener.onAnimationUpdate();
                        return;
                    }
                    return;
                }
                OPListView.this.mAnimRunning = false;
                OPListView.this.mInDeleteAnimation = false;
                OPListView.this.mDisableTouchEvent = false;
                OPListView.this.mDelPosList.clear();
                OPListView.this.mDelOriViewTopList.clear();
                OPListView.this.mDelViewList.clear();
                if (OPListView.this.mDeleteAnimationListener != null) {
                    OPListView.this.mDeleteAnimationListener.onAnimationUpdate();
                    OPListView.this.mDeleteAnimationListener.onAnimationEnd();
                }
            }
        });
        this.mDelAniSet.start();
    }

    private void startDelDropAnimation() {
        this.mDelAniSet = new AnimatorSet();
        setDelViewLocation();
        for (int i = 0; i < this.mNowViewList.size(); i++) {
            View child = this.mNowViewList.get(i);
            ObjectAnimator anim = getAnimator(i, child, this.mDelOriViewTopList.get(i).intValue());
            anim.setDuration(200);
            anim.setInterpolator(this.mDecelerateInterpolator);
            anim.addUpdateListener(this.mAnimatorUpdateListener);
            this.mDelAniSet.playTogether(anim);
        }
        this.mDelAniSet.addListener(new AnimatorListenerAdapter() { // from class: com.oneplus.lib.widget.listview.OPListView.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                OPListView.this.mAnimRunning = false;
                OPListView.this.mInDeleteAnimation = false;
                OPListView.this.mDisableTouchEvent = false;
                OPListView.this.mDelPosList.clear();
                OPListView.this.mDelOriViewTopList.clear();
                OPListView.this.mDelViewList.clear();
                OPListView.this.mNowViewList.clear();
                OPListView.this.invalidate();
                if (OPListView.this.mDeleteAnimationListener != null) {
                    OPListView.this.mDeleteAnimationListener.onAnimationEnd();
                }
            }
        });
        this.mDelAniSet.start();
    }

    private void setDelViewLocation() {
        int nowFirstPosition = getFirstVisiblePosition();
        int nowCurChildCount = getChildCount();
        boolean nowLastPage = false;
        if (getLastVisiblePosition() == getAdapter().getCount() - 1) {
            nowLastPage = true;
        }
        boolean nowFirstPage = false;
        if (nowFirstPosition == 0) {
            nowFirstPage = true;
        }
        getTop();
        int bottom = getBottom();
        int childCount = getChildCount();
        int height = 0;
        if (this.mNowViewList == null) {
            this.mNowViewList = new ArrayList<>();
        } else {
            this.mNowViewList.clear();
        }
        for (int i = 0; i < childCount; i++) {
            View child = getChildAt(i);
            this.mNowViewList.add(child);
            if (i == 0 && child != null) {
                height = child.getHeight();
            }
        }
        if (!this.mOriLastPage) {
            if (!nowLastPage) {
                if (this.mOriUpperDeleteCount == 0) {
                    Log.d(TAG, "DeleteAnimation Case 1");
                } else if (this.mOriUpperDeleteCount >= this.mOriCurLeftCount) {
                    Log.d(TAG, "DeleteAnimation Case 3 ");
                    this.mDelOriViewTopList.clear();
                } else {
                    Log.d(TAG, "DeleteAnimation Case 2 ");
                    for (int i2 = 0; i2 < this.mOriUpperDeleteCount; i2++) {
                        this.mDelOriViewTopList.remove(0);
                    }
                }
            } else {
                if (!nowFirstPage) {
                    if (this.mOriUpperDeleteCount == 0) {
                        Log.d(TAG, "DeleteAnimation Case 4 ");
                    } else if (this.mOriCurDeleteCount == 0) {
                        if (this.mOriUpperDeleteCount >= this.mOriCurLeftCount) {
                            Log.d(TAG, "DeleteAnimation Case 9 ");
                        } else {
                            Log.d(TAG, "DeleteAnimation Case 10 ");
                        }
                    } else if (this.mOriUpperDeleteCount >= this.mOriCurLeftCount) {
                        Log.d(TAG, "DeleteAnimation Case 5 ");
                    } else {
                        Log.d(TAG, "DeleteAnimation Case 6 ");
                    }
                } else if (this.mOriCurDeleteCount == 0) {
                    Log.d(TAG, "DeleteAnimation Case 11 ");
                } else if (this.mOriUpperDeleteCount >= this.mOriCurLeftCount) {
                    Log.d(TAG, "DeleteAnimation Case 7 ");
                } else {
                    Log.d(TAG, "DeleteAnimation Case 8 ");
                }
                for (int i3 = 0; i3 < this.mOriBelowLeftCount; i3++) {
                    this.mDelOriViewTopList.add(Integer.valueOf(((i3 + 1) * height) + bottom));
                }
                int diff = this.mDelOriViewTopList.size() - nowCurChildCount;
                for (int i4 = 0; i4 < diff; i4++) {
                    this.mDelOriViewTopList.remove(0);
                }
                int childIndex = 1;
                while (nowCurChildCount > this.mDelOriViewTopList.size()) {
                    this.mDelOriViewTopList.add(0, Integer.valueOf((-height) * childIndex));
                    childIndex++;
                }
            }
        } else {
            if (this.mOriUpperDeleteCount == 0) {
                if (this.mOriCurDeleteCount != 0) {
                    Log.d(TAG, "DeleteAnimation Case 14 ");
                }
            } else if (this.mOriCurDeleteCount == 0) {
                if (this.mOriUpperDeleteCount >= this.mOriCurLeftCount) {
                    Log.d(TAG, "DeleteAnimation Case 12 ");
                    this.mDelOriViewTopList.clear();
                } else {
                    Log.d(TAG, "DeleteAnimation Case 13 ");
                    for (int i5 = 0; i5 < this.mOriUpperDeleteCount; i5++) {
                        this.mDelOriViewTopList.remove(0);
                    }
                }
            } else if (!nowFirstPage) {
                if (this.mOriUpperDeleteCount >= this.mOriCurLeftCount) {
                    Log.d(TAG, "DeleteAnimation Case 15 ");
                } else {
                    Log.d(TAG, "DeleteAnimation Case 16 ");
                }
            } else {
                Log.d(TAG, "DeleteAnimation Case 17 ");
            }
            int childIndex2 = 1;
            while (nowCurChildCount > this.mDelOriViewTopList.size()) {
                this.mDelOriViewTopList.add(0, Integer.valueOf((-height) * childIndex2));
                childIndex2++;
            }
        }
        int diff2 = this.mNowViewList.size() - this.mDelOriViewTopList.size();
        for (int i6 = 0; i6 < diff2; i6++) {
            this.mDelOriViewTopList.add(Integer.valueOf(((i6 + 1) * height) + bottom));
        }
        int invertCount = 0;
        for (int i7 = childCount - 1; i7 >= 0; i7--) {
            if (this.mNowViewList.get(i7).getTop() == this.mDelOriViewTopList.get(i7).intValue()) {
                this.mNowViewList.remove(i7);
                this.mDelOriViewTopList.remove(i7);
            } else if (this.mDelOriViewTopList.get(i7).intValue() < this.mNowViewList.get(i7).getTop()) {
                invertCount++;
            }
        }
        if (invertCount > 1) {
            ArrayList<View> tmpViewList = (ArrayList) this.mNowViewList.clone();
            ArrayList<Integer> tmpOriTopList = (ArrayList) this.mDelOriViewTopList.clone();
            this.mNowViewList.clear();
            this.mDelOriViewTopList.clear();
            for (int i8 = 0; i8 < tmpViewList.size(); i8++) {
                int tmpPos = i8 < invertCount ? (invertCount - i8) - 1 : i8;
                this.mNowViewList.add(tmpViewList.get(tmpPos));
                this.mDelOriViewTopList.add(tmpOriTopList.get(tmpPos));
            }
        }
    }

    public void setDeleteAnimationEnabled(boolean enabled) {
        this.mIsDisableAnimation = enabled;
    }

    public boolean isDeleteAnimationEnabled() {
        return this.mIsDisableAnimation;
    }
}

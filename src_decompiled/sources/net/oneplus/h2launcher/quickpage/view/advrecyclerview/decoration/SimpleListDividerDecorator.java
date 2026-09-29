package net.oneplus.h2launcher.quickpage.view.advrecyclerview.decoration;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.support.v4.view.ViewCompat;
import android.view.View;
import com.oneplus.lib.widget.recyclerview.RecyclerView;

/* loaded from: classes.dex */
public class SimpleListDividerDecorator extends RecyclerView.ItemDecoration {
    private final int mHorizontalDividerHeight;
    private final Drawable mHorizontalDrawable;
    private boolean mOverlap;
    private final int mVerticalDividerWidth;
    private final Drawable mVerticalDrawable;

    public SimpleListDividerDecorator(@Nullable Drawable divider, boolean overlap) {
        this(divider, null, overlap);
    }

    public SimpleListDividerDecorator(@Nullable Drawable horizontalDivider, @Nullable Drawable verticalDivider, boolean overlap) {
        this.mHorizontalDrawable = horizontalDivider;
        this.mVerticalDrawable = verticalDivider;
        this.mHorizontalDividerHeight = this.mHorizontalDrawable != null ? this.mHorizontalDrawable.getIntrinsicHeight() : 0;
        this.mVerticalDividerWidth = this.mVerticalDrawable != null ? this.mVerticalDrawable.getIntrinsicWidth() : 0;
        this.mOverlap = overlap;
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.ItemDecoration
    public void onDrawOver(Canvas c, RecyclerView parent, RecyclerView.State state) {
        int childCount = parent.getChildCount();
        if (childCount != 0) {
            float xPositionThreshold = this.mOverlap ? 1.0f : this.mVerticalDividerWidth + 1.0f;
            float yPositionThreshold = this.mOverlap ? 1.0f : this.mHorizontalDividerHeight + 1.0f;
            for (int i = 0; i < childCount - 1; i++) {
                View child = parent.getChildAt(i);
                View nextChild = parent.getChildAt(i + 1);
                if (child.getVisibility() == 0 && nextChild.getVisibility() == 0) {
                    float childBottom = child.getBottom() + ViewCompat.getTranslationY(child);
                    float nextChildTop = nextChild.getTop() + ViewCompat.getTranslationY(nextChild);
                    float childRight = child.getRight() + ViewCompat.getTranslationX(child);
                    float nextChildLeft = nextChild.getLeft() + ViewCompat.getTranslationX(nextChild);
                    if ((this.mHorizontalDividerHeight != 0 && Math.abs(nextChildTop - childBottom) < yPositionThreshold) || (this.mVerticalDividerWidth != 0 && Math.abs(nextChildLeft - childRight) < xPositionThreshold)) {
                        float childZ = ViewCompat.getTranslationZ(child) + ViewCompat.getElevation(child);
                        float nextChildZ = ViewCompat.getTranslationZ(nextChild) + ViewCompat.getElevation(nextChild);
                        if (Math.abs(nextChildZ - childZ) < 1.0f) {
                            float childAlpha = ViewCompat.getAlpha(child);
                            float nextChildAlpha = ViewCompat.getAlpha(nextChild);
                            int tx = (int) (ViewCompat.getTranslationX(child) + 0.5f);
                            int ty = (int) (ViewCompat.getTranslationY(child) + 0.5f);
                            if (this.mHorizontalDividerHeight != 0) {
                                int left = child.getLeft();
                                int right = child.getRight();
                                int top = child.getBottom() - (this.mOverlap ? this.mHorizontalDividerHeight : 0);
                                int bottom = top + this.mHorizontalDividerHeight;
                                this.mHorizontalDrawable.setAlpha((int) ((127.5f * (childAlpha + nextChildAlpha)) + 0.5f));
                                this.mHorizontalDrawable.setBounds(left + tx, top + ty, right + tx, bottom + ty);
                                this.mHorizontalDrawable.draw(c);
                            }
                            if (this.mVerticalDividerWidth != 0) {
                                int left2 = child.getRight() - (this.mOverlap ? this.mVerticalDividerWidth : 0);
                                int right2 = left2 + this.mVerticalDividerWidth;
                                int top2 = child.getTop();
                                int bottom2 = child.getBottom();
                                this.mVerticalDrawable.setAlpha((int) ((127.5f * (childAlpha + nextChildAlpha)) + 0.5f));
                                this.mVerticalDrawable.setBounds(left2 + tx, top2 + ty, right2 + tx, bottom2 + ty);
                                this.mVerticalDrawable.draw(c);
                            }
                        }
                    }
                }
            }
        }
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
        if (this.mOverlap) {
            outRect.set(0, 0, 0, 0);
        } else {
            outRect.set(0, 0, this.mVerticalDividerWidth, this.mHorizontalDividerHeight);
        }
    }
}

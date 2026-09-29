package net.oneplus.h2launcher.quickpage.view.advrecyclerview.decoration;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.support.annotation.NonNull;
import android.support.v4.view.ViewCompat;
import android.view.View;
import com.oneplus.lib.widget.recyclerview.RecyclerView;

/* loaded from: classes.dex */
public class ItemShadowDecorator extends RecyclerView.ItemDecoration {
    private final NinePatchDrawable mShadowDrawable;
    private final Rect mShadowPadding = new Rect();

    public ItemShadowDecorator(@NonNull NinePatchDrawable shadow) {
        this.mShadowDrawable = shadow;
        this.mShadowDrawable.getPadding(this.mShadowPadding);
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.ItemDecoration
    public void onDraw(Canvas c, RecyclerView parent, RecyclerView.State state) {
        int childCount = parent.getChildCount();
        if (childCount != 0) {
            for (int i = 0; i < childCount; i++) {
                View child = parent.getChildAt(i);
                if (shouldDrawDropShadow(child)) {
                    int tx = (int) (ViewCompat.getTranslationX(child) + 0.5f);
                    int ty = (int) (ViewCompat.getTranslationY(child) + 0.5f);
                    int left = child.getLeft() - this.mShadowPadding.left;
                    int right = child.getRight() + this.mShadowPadding.right;
                    int top = child.getTop() - this.mShadowPadding.top;
                    int bottom = child.getBottom() + this.mShadowPadding.bottom;
                    this.mShadowDrawable.setBounds(left + tx, top + ty, right + tx, bottom + ty);
                    this.mShadowDrawable.draw(c);
                }
            }
        }
    }

    private static boolean shouldDrawDropShadow(View child) {
        Drawable background;
        if (child.getVisibility() == 0 && ViewCompat.getAlpha(child) == 1.0f && (background = child.getBackground()) != null) {
            return ((background instanceof ColorDrawable) && ((ColorDrawable) background).getAlpha() == 0) ? false : true;
        }
        return false;
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
        outRect.set(0, 0, 0, 0);
    }
}

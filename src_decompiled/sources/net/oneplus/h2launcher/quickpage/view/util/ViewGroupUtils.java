package net.oneplus.h2launcher.quickpage.view.util;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.ScrollView;

/* loaded from: classes.dex */
public class ViewGroupUtils {
    public static boolean hasScrollableChildren(ViewGroup viewGroup) {
        boolean hasScrollableChildren = false;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View view = viewGroup.getChildAt(i);
            hasScrollableChildren = isViewScrollable(view);
            if (view instanceof ViewGroup) {
                hasScrollableChildren = hasScrollableChildren || hasScrollableChildren((ViewGroup) view);
            }
            if (hasScrollableChildren) {
                break;
            }
        }
        return hasScrollableChildren;
    }

    public static boolean isEventOnScrollableView(View parent, int x, int y) {
        boolean isScrollable = false;
        if (parent instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) parent;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                View child = viewGroup.getChildAt(i);
                if (isEventOnViewBounds(child, x, y)) {
                    isScrollable = isScrollable || isViewScrollable(child) || isEventOnScrollableView(child, x, y);
                }
            }
        }
        return isScrollable;
    }

    private static boolean isViewScrollable(View child) {
        return (child instanceof AdapterView) || (child instanceof ScrollView) || (child instanceof WebView) || (child instanceof EditText);
    }

    private static boolean isEventOnViewBounds(View view, int x, int y) {
        Rect hitRect = new Rect();
        view.getGlobalVisibleRect(hitRect);
        return hitRect.contains(x, y);
    }

    public static View findViewAtPosition(View parent, int x, int y) {
        if (parent instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) parent;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                View child = viewGroup.getChildAt(i);
                View viewAtPosition = findViewAtPosition(child, x, y);
                if (viewAtPosition != null) {
                    return viewAtPosition;
                }
            }
            return null;
        }
        Rect rect = new Rect();
        parent.getGlobalVisibleRect(rect);
        if (rect.contains(x, y)) {
            return parent;
        }
        return null;
    }
}

package com.oneplus.lib.design.widget;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.Toolbar;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public class Utils {
    private static final ThreadLocal<Matrix> sMatrix = new ThreadLocal<>();
    private static final ThreadLocal<RectF> sRectF = new ThreadLocal<>();
    private static final Matrix IDENTITY = new Matrix();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean objectEquals(Object a, Object b) {
        return a == b || (a != null && a.equals(b));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int constrain(int amount, int low, int high) {
        return amount < low ? low : amount > high ? high : amount;
    }

    static float constrain(float amount, float low, float high) {
        return amount < low ? low : amount > high ? high : amount;
    }

    static void offsetDescendantMatrix(ViewParent target, View view, Matrix m) {
        Object parent = view.getParent();
        if ((parent instanceof View) && parent != target) {
            View vp = (View) parent;
            offsetDescendantMatrix(target, vp, m);
            m.preTranslate(-vp.getScrollX(), -vp.getScrollY());
        }
        m.preTranslate(view.getLeft(), view.getTop());
        if (!view.getMatrix().isIdentity()) {
            m.preConcat(view.getMatrix());
        }
    }

    static void offsetDescendantRect(ViewGroup parent, View descendant, Rect rect) {
        Matrix m = sMatrix.get();
        if (m == null) {
            m = new Matrix();
            sMatrix.set(m);
        } else {
            m.set(IDENTITY);
        }
        offsetDescendantMatrix(parent, descendant, m);
        RectF rectF = sRectF.get();
        if (rectF == null) {
            rectF = new RectF();
        }
        rectF.set(rect);
        m.mapRect(rectF);
        rect.set((int) (rectF.left + 0.5f), (int) (rectF.top + 0.5f), (int) (rectF.right + 0.5f), (int) (rectF.bottom + 0.5f));
    }

    public static void getDescendantRect(ViewGroup parent, View descendant, Rect out) {
        out.set(0, 0, descendant.getWidth(), descendant.getHeight());
        offsetDescendantRect(parent, descendant, out);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float lerp(float startValue, float endValue, float fraction) {
        return ((endValue - startValue) * fraction) + startValue;
    }

    static int lerp(int startValue, int endValue, float fraction) {
        return Math.round((endValue - startValue) * fraction) + startValue;
    }

    public static int getTitleMarginStart(Toolbar toolbar) {
        Field titleMarginStart = null;
        if (Build.VERSION.SDK_INT >= 24) {
            return toolbar.getTitleMarginStart();
        }
        try {
            titleMarginStart = Toolbar.class.getDeclaredField("mTitleMarginStart");
            titleMarginStart.setAccessible(true);
        } catch (NoSuchFieldException e) {
        }
        if (titleMarginStart != null) {
            try {
                return ((Integer) titleMarginStart.get(toolbar)).intValue();
            } catch (Exception e2) {
            }
        }
        return 0;
    }

    public static int getTitleMarginTop(Toolbar toolbar) {
        Field titleMarginTop = null;
        if (Build.VERSION.SDK_INT >= 24) {
            return toolbar.getTitleMarginTop();
        }
        try {
            titleMarginTop = Toolbar.class.getDeclaredField("mTitleMarginTop");
            titleMarginTop.setAccessible(true);
        } catch (NoSuchFieldException e) {
        }
        if (titleMarginTop != null) {
            try {
                return ((Integer) titleMarginTop.get(toolbar)).intValue();
            } catch (Exception e2) {
            }
        }
        return 0;
    }

    public static int getTitleMarginEnd(Toolbar toolbar) {
        Field titleMarginEnd = null;
        if (Build.VERSION.SDK_INT >= 24) {
            return toolbar.getTitleMarginEnd();
        }
        try {
            titleMarginEnd = Toolbar.class.getDeclaredField("mTitleMarginEnd");
            titleMarginEnd.setAccessible(true);
        } catch (NoSuchFieldException e) {
        }
        if (titleMarginEnd != null) {
            try {
                return ((Integer) titleMarginEnd.get(toolbar)).intValue();
            } catch (Exception e2) {
            }
        }
        return 0;
    }

    public static int getTitleMarginBottom(Toolbar toolbar) {
        Field titleMarginBottom = null;
        if (Build.VERSION.SDK_INT >= 24) {
            return toolbar.getTitleMarginBottom();
        }
        try {
            titleMarginBottom = Toolbar.class.getDeclaredField("mTitleMarginBottom");
            titleMarginBottom.setAccessible(true);
        } catch (NoSuchFieldException e) {
        }
        if (titleMarginBottom != null) {
            try {
                return ((Integer) titleMarginBottom.get(toolbar)).intValue();
            } catch (Exception e2) {
            }
        }
        return 0;
    }
}

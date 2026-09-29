package android.support.v7.widget;

import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ScaleDrawable;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.v4.graphics.drawable.DrawableWrapper;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class DrawableUtils {
    public static final Rect INSETS_NONE = new Rect();
    private static final String TAG = "DrawableUtils";
    private static final String VECTOR_DRAWABLE_CLAZZ_NAME = "android.graphics.drawable.VectorDrawable";
    private static Class<?> sInsetsClazz;

    static {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                sInsetsClazz = Class.forName("android.graphics.Insets");
            } catch (ClassNotFoundException e) {
            }
        }
    }

    private DrawableUtils() {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x003c, code lost:
    
        switch(r5) {
            case 0: goto L24;
            case 1: goto L30;
            case 2: goto L31;
            case 3: goto L32;
            default: goto L37;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x006b, code lost:
    
        r4.left = r1.getInt(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003f, code lost:
    
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x007d, code lost:
    
        r4.top = r1.getInt(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0084, code lost:
    
        r4.right = r1.getInt(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x008b, code lost:
    
        r4.bottom = r1.getInt(r3);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Rect getOpticalBounds(android.graphics.drawable.Drawable r12) {
        /*
            r6 = 0
            java.lang.Class<?> r5 = android.support.v7.widget.DrawableUtils.sInsetsClazz
            if (r5 == 0) goto L7a
            android.graphics.drawable.Drawable r12 = android.support.v4.graphics.drawable.DrawableCompat.unwrap(r12)     // Catch: java.lang.Exception -> L72
            java.lang.Class r5 = r12.getClass()     // Catch: java.lang.Exception -> L72
            java.lang.String r7 = "getOpticalInsets"
            r8 = 0
            java.lang.Class[] r8 = new java.lang.Class[r8]     // Catch: java.lang.Exception -> L72
            java.lang.reflect.Method r2 = r5.getMethod(r7, r8)     // Catch: java.lang.Exception -> L72
            r5 = 0
            java.lang.Object[] r5 = new java.lang.Object[r5]     // Catch: java.lang.Exception -> L72
            java.lang.Object r3 = r2.invoke(r12, r5)     // Catch: java.lang.Exception -> L72
            if (r3 == 0) goto L7a
            android.graphics.Rect r4 = new android.graphics.Rect     // Catch: java.lang.Exception -> L72
            r4.<init>()     // Catch: java.lang.Exception -> L72
            java.lang.Class<?> r5 = android.support.v7.widget.DrawableUtils.sInsetsClazz     // Catch: java.lang.Exception -> L72
            java.lang.reflect.Field[] r8 = r5.getFields()     // Catch: java.lang.Exception -> L72
            int r9 = r8.length     // Catch: java.lang.Exception -> L72
            r7 = r6
        L2c:
            if (r7 >= r9) goto L7c
            r1 = r8[r7]     // Catch: java.lang.Exception -> L72
            java.lang.String r10 = r1.getName()     // Catch: java.lang.Exception -> L72
            r5 = -1
            int r11 = r10.hashCode()     // Catch: java.lang.Exception -> L72
            switch(r11) {
                case -1383228885: goto L61;
                case 115029: goto L4d;
                case 3317767: goto L43;
                case 108511772: goto L57;
                default: goto L3c;
            }     // Catch: java.lang.Exception -> L72
        L3c:
            switch(r5) {
                case 0: goto L6b;
                case 1: goto L7d;
                case 2: goto L84;
                case 3: goto L8b;
                default: goto L3f;
            }     // Catch: java.lang.Exception -> L72
        L3f:
            int r5 = r7 + 1
            r7 = r5
            goto L2c
        L43:
            java.lang.String r11 = "left"
            boolean r10 = r10.equals(r11)     // Catch: java.lang.Exception -> L72
            if (r10 == 0) goto L3c
            r5 = r6
            goto L3c
        L4d:
            java.lang.String r11 = "top"
            boolean r10 = r10.equals(r11)     // Catch: java.lang.Exception -> L72
            if (r10 == 0) goto L3c
            r5 = 1
            goto L3c
        L57:
            java.lang.String r11 = "right"
            boolean r10 = r10.equals(r11)     // Catch: java.lang.Exception -> L72
            if (r10 == 0) goto L3c
            r5 = 2
            goto L3c
        L61:
            java.lang.String r11 = "bottom"
            boolean r10 = r10.equals(r11)     // Catch: java.lang.Exception -> L72
            if (r10 == 0) goto L3c
            r5 = 3
            goto L3c
        L6b:
            int r5 = r1.getInt(r3)     // Catch: java.lang.Exception -> L72
            r4.left = r5     // Catch: java.lang.Exception -> L72
            goto L3f
        L72:
            r0 = move-exception
            java.lang.String r5 = "DrawableUtils"
            java.lang.String r6 = "Couldn't obtain the optical insets. Ignoring."
            android.util.Log.e(r5, r6)
        L7a:
            android.graphics.Rect r4 = android.support.v7.widget.DrawableUtils.INSETS_NONE
        L7c:
            return r4
        L7d:
            int r5 = r1.getInt(r3)     // Catch: java.lang.Exception -> L72
            r4.top = r5     // Catch: java.lang.Exception -> L72
            goto L3f
        L84:
            int r5 = r1.getInt(r3)     // Catch: java.lang.Exception -> L72
            r4.right = r5     // Catch: java.lang.Exception -> L72
            goto L3f
        L8b:
            int r5 = r1.getInt(r3)     // Catch: java.lang.Exception -> L72
            r4.bottom = r5     // Catch: java.lang.Exception -> L72
            goto L3f
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.DrawableUtils.getOpticalBounds(android.graphics.drawable.Drawable):android.graphics.Rect");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void fixDrawable(@NonNull Drawable drawable) {
        if (Build.VERSION.SDK_INT == 21 && VECTOR_DRAWABLE_CLAZZ_NAME.equals(drawable.getClass().getName())) {
            fixVectorDrawableTinting(drawable);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean canSafelyMutateDrawable(@NonNull Drawable drawable) {
        if (Build.VERSION.SDK_INT < 15 && (drawable instanceof InsetDrawable)) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 15 && (drawable instanceof GradientDrawable)) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 17 && (drawable instanceof LayerDrawable)) {
            return false;
        }
        if (drawable instanceof DrawableContainer) {
            Drawable.ConstantState state = drawable.getConstantState();
            if (state instanceof DrawableContainer.DrawableContainerState) {
                DrawableContainer.DrawableContainerState containerState = (DrawableContainer.DrawableContainerState) state;
                for (Drawable child : containerState.getChildren()) {
                    if (!canSafelyMutateDrawable(child)) {
                        return false;
                    }
                }
            }
        } else {
            if (drawable instanceof DrawableWrapper) {
                return canSafelyMutateDrawable(((DrawableWrapper) drawable).getWrappedDrawable());
            }
            if (drawable instanceof android.support.v7.graphics.drawable.DrawableWrapper) {
                return canSafelyMutateDrawable(((android.support.v7.graphics.drawable.DrawableWrapper) drawable).getWrappedDrawable());
            }
            if (drawable instanceof ScaleDrawable) {
                return canSafelyMutateDrawable(((ScaleDrawable) drawable).getDrawable());
            }
        }
        return true;
    }

    private static void fixVectorDrawableTinting(Drawable drawable) {
        int[] originalState = drawable.getState();
        if (originalState == null || originalState.length == 0) {
            drawable.setState(ThemeUtils.CHECKED_STATE_SET);
        } else {
            drawable.setState(ThemeUtils.EMPTY_STATE_SET);
        }
        drawable.setState(originalState);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PorterDuff.Mode parseTintMode(int value, PorterDuff.Mode defaultMode) {
        switch (value) {
            case 3:
                return PorterDuff.Mode.SRC_OVER;
            case 4:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            default:
                return defaultMode;
            case 5:
                return PorterDuff.Mode.SRC_IN;
            case 9:
                return PorterDuff.Mode.SRC_ATOP;
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                if (Build.VERSION.SDK_INT >= 11) {
                    return PorterDuff.Mode.valueOf("ADD");
                }
                return defaultMode;
        }
    }
}

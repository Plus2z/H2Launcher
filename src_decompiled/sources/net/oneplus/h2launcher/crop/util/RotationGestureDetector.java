package net.oneplus.h2launcher.crop.util;

/* loaded from: classes.dex */
public class RotationGestureDetector {
    private static final int INVALID_POINTER_INDEX = -1;
    private float fX;
    private float fY;
    private float mAngle;
    private boolean mIsFirstTouch;
    private OnRotationGestureListener mListener;
    private int mPointerIndex1 = -1;
    private int mPointerIndex2 = -1;
    private float sX;
    private float sY;

    /* loaded from: classes.dex */
    public interface OnRotationGestureListener {
        boolean onRotation(RotationGestureDetector rotationGestureDetector);
    }

    public RotationGestureDetector(OnRotationGestureListener listener) {
        this.mListener = listener;
    }

    public float getAngle() {
        return this.mAngle;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x000b, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(@android.support.annotation.NonNull android.view.MotionEvent r11) {
        /*
            r10 = this;
            r3 = 0
            r9 = 1
            r2 = 0
            r1 = -1
            int r0 = r11.getActionMasked()
            switch(r0) {
                case 0: goto Lc;
                case 1: goto L95;
                case 2: goto L46;
                case 3: goto Lb;
                case 4: goto Lb;
                case 5: goto L27;
                case 6: goto L99;
                default: goto Lb;
            }
        Lb:
            return r9
        Lc:
            float r0 = r11.getX()
            r10.sX = r0
            float r0 = r11.getY()
            r10.sY = r0
            int r0 = r11.getPointerId(r3)
            int r0 = r11.findPointerIndex(r0)
            r10.mPointerIndex1 = r0
            r10.mAngle = r2
            r10.mIsFirstTouch = r9
            goto Lb
        L27:
            float r0 = r11.getX()
            r10.fX = r0
            float r0 = r11.getY()
            r10.fY = r0
            int r0 = r11.getActionIndex()
            int r0 = r11.getPointerId(r0)
            int r0 = r11.findPointerIndex(r0)
            r10.mPointerIndex2 = r0
            r10.mAngle = r2
            r10.mIsFirstTouch = r9
            goto Lb
        L46:
            int r0 = r10.mPointerIndex1
            if (r0 == r1) goto Lb
            int r0 = r10.mPointerIndex2
            if (r0 == r1) goto Lb
            int r0 = r11.getPointerCount()
            int r1 = r10.mPointerIndex2
            if (r0 <= r1) goto Lb
            int r0 = r10.mPointerIndex1
            float r7 = r11.getX(r0)
            int r0 = r10.mPointerIndex1
            float r8 = r11.getY(r0)
            int r0 = r10.mPointerIndex2
            float r5 = r11.getX(r0)
            int r0 = r10.mPointerIndex2
            float r6 = r11.getY(r0)
            boolean r0 = r10.mIsFirstTouch
            if (r0 == 0) goto L88
            r10.mAngle = r2
            r10.mIsFirstTouch = r3
        L76:
            net.oneplus.h2launcher.crop.util.RotationGestureDetector$OnRotationGestureListener r0 = r10.mListener
            if (r0 == 0) goto L7f
            net.oneplus.h2launcher.crop.util.RotationGestureDetector$OnRotationGestureListener r0 = r10.mListener
            r0.onRotation(r10)
        L7f:
            r10.fX = r5
            r10.fY = r6
            r10.sX = r7
            r10.sY = r8
            goto Lb
        L88:
            float r1 = r10.fX
            float r2 = r10.fY
            float r3 = r10.sX
            float r4 = r10.sY
            r0 = r10
            r0.calculateAngleBetweenLines(r1, r2, r3, r4, r5, r6, r7, r8)
            goto L76
        L95:
            r10.mPointerIndex1 = r1
            goto Lb
        L99:
            r10.mPointerIndex2 = r1
            goto Lb
        */
        throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.crop.util.RotationGestureDetector.onTouchEvent(android.view.MotionEvent):boolean");
    }

    private float calculateAngleBetweenLines(float fx1, float fy1, float fx2, float fy2, float sx1, float sy1, float sx2, float sy2) {
        return calculateAngleDelta((float) Math.toDegrees((float) Math.atan2(fy1 - fy2, fx1 - fx2)), (float) Math.toDegrees((float) Math.atan2(sy1 - sy2, sx1 - sx2)));
    }

    private float calculateAngleDelta(float angleFrom, float angleTo) {
        this.mAngle = (angleTo % 360.0f) - (angleFrom % 360.0f);
        if (this.mAngle < -180.0f) {
            this.mAngle += 360.0f;
        } else if (this.mAngle > 180.0f) {
            this.mAngle -= 360.0f;
        }
        return this.mAngle;
    }

    /* loaded from: classes.dex */
    public static class SimpleOnRotationGestureListener implements OnRotationGestureListener {
        @Override // net.oneplus.h2launcher.crop.util.RotationGestureDetector.OnRotationGestureListener
        public boolean onRotation(RotationGestureDetector rotationDetector) {
            return false;
        }
    }
}

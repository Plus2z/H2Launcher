package android.support.design.widget;

/* loaded from: classes.dex */
class MathUtils {
    MathUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int constrain(int amount, int low, int high) {
        return amount < low ? low : amount > high ? high : amount;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float constrain(float amount, float low, float high) {
        return amount < low ? low : amount > high ? high : amount;
    }
}

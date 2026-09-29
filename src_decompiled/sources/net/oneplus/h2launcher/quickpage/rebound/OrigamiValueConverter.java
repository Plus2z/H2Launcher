package net.oneplus.h2launcher.quickpage.rebound;

/* loaded from: classes.dex */
public class OrigamiValueConverter {
    public static double tensionFromOrigamiValue(double oValue) {
        if (oValue == 0.0d) {
            return 0.0d;
        }
        return ((oValue - 30.0d) * 3.62d) + 194.0d;
    }

    public static double origamiValueFromTension(double tension) {
        if (tension == 0.0d) {
            return 0.0d;
        }
        return ((tension - 194.0d) / 3.62d) + 30.0d;
    }

    public static double frictionFromOrigamiValue(double oValue) {
        if (oValue == 0.0d) {
            return 0.0d;
        }
        return ((oValue - 8.0d) * 3.0d) + 25.0d;
    }

    public static double origamiValueFromFriction(double friction) {
        if (friction == 0.0d) {
            return 0.0d;
        }
        return ((friction - 25.0d) / 3.0d) + 8.0d;
    }
}

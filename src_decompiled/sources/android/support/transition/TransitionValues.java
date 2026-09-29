package android.support.transition;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class TransitionValues {
    public View view;
    public final Map<String, Object> values = new HashMap();
    final ArrayList<Transition> mTargetedTransitions = new ArrayList<>();

    public boolean equals(Object other) {
        return (other instanceof TransitionValues) && this.view == ((TransitionValues) other).view && this.values.equals(((TransitionValues) other).values);
    }

    public int hashCode() {
        return (this.view.hashCode() * 31) + this.values.hashCode();
    }

    public String toString() {
        String returnValue = "TransitionValues@" + Integer.toHexString(hashCode()) + ":\n";
        String returnValue2 = (returnValue + "    view = " + this.view + "\n") + "    values:";
        for (String s : this.values.keySet()) {
            returnValue2 = returnValue2 + "    " + s + ": " + this.values.get(s) + "\n";
        }
        return returnValue2;
    }
}

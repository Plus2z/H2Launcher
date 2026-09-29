package android.support.v4.content.res;

import android.content.res.Resources;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;

@RequiresApi(17)
/* loaded from: classes.dex */
class ConfigurationHelperJellybeanMr1 {
    ConfigurationHelperJellybeanMr1() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getDensityDpi(@NonNull Resources resources) {
        return resources.getConfiguration().densityDpi;
    }
}

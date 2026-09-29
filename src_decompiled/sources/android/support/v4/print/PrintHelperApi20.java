package android.support.v4.print;

import android.content.Context;
import android.support.annotation.RequiresApi;

@RequiresApi(20)
/* loaded from: classes.dex */
class PrintHelperApi20 extends PrintHelperKitkat {
    /* JADX INFO: Access modifiers changed from: package-private */
    public PrintHelperApi20(Context context) {
        super(context);
        this.mPrintActivityRespectsOrientation = false;
    }
}

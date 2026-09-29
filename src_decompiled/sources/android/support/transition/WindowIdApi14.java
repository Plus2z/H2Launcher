package android.support.transition;

import android.os.IBinder;
import android.support.annotation.RequiresApi;

@RequiresApi(14)
/* loaded from: classes.dex */
class WindowIdApi14 implements WindowIdImpl {
    private final IBinder mToken;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WindowIdApi14(IBinder token) {
        this.mToken = token;
    }

    public boolean equals(Object o) {
        return (o instanceof WindowIdApi14) && ((WindowIdApi14) o).mToken.equals(this.mToken);
    }
}

package android.support.v7.app;

import android.content.Context;
import android.support.annotation.RequiresApi;
import android.util.AttributeSet;
import android.view.View;
import android.view.Window;

/* JADX INFO: Access modifiers changed from: package-private */
@RequiresApi(11)
/* loaded from: classes.dex */
public class AppCompatDelegateImplV11 extends AppCompatDelegateImplV9 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AppCompatDelegateImplV11(Context context, Window window, AppCompatCallback callback) {
        super(context, window, callback);
    }

    @Override // android.support.v7.app.AppCompatDelegateImplV9, android.support.v7.app.AppCompatDelegate
    public boolean hasWindowFeature(int featureId) {
        return super.hasWindowFeature(featureId) || this.mWindow.hasFeature(featureId);
    }

    @Override // android.support.v7.app.AppCompatDelegateImplV9
    View callActivityOnCreateView(View parent, String name, Context context, AttributeSet attrs) {
        return null;
    }
}

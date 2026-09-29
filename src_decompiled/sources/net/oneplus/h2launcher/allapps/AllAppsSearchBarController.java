package net.oneplus.h2launcher.allapps;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import net.oneplus.h2launcher.util.ComponentKey;

/* loaded from: classes.dex */
public abstract class AllAppsSearchBarController {
    protected AlphabeticalAppsList mApps;
    protected Callbacks mCb;

    /* loaded from: classes.dex */
    public interface Callbacks {
        void clearSearchResult();

        void onBoundsChanged(Rect rect);

        void onSearchResult(String str, ArrayList<ComponentKey> arrayList);
    }

    public abstract void focusSearchField();

    public abstract View getView(ViewGroup viewGroup);

    public abstract boolean isSearchFieldFocused();

    protected abstract void onInitialize();

    public abstract void reset();

    @Deprecated
    public abstract boolean shouldShowPredictionBar();

    public final void initialize(AlphabeticalAppsList apps, Callbacks cb) {
        this.mApps = apps;
        this.mCb = cb;
        onInitialize();
    }
}

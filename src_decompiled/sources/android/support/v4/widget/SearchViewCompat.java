package android.support.v4.widget;

import android.app.SearchManager;
import android.content.ComponentName;
import android.content.Context;
import android.view.View;
import android.widget.SearchView;
import net.oneplus.h2launcher.Stats;

@Deprecated
/* loaded from: classes.dex */
public final class SearchViewCompat {

    @Deprecated
    /* loaded from: classes.dex */
    public interface OnCloseListener {
        boolean onClose();
    }

    @Deprecated
    /* loaded from: classes.dex */
    public interface OnQueryTextListener {
        boolean onQueryTextChange(String str);

        boolean onQueryTextSubmit(String str);
    }

    private static void checkIfLegalArg(View searchView) {
        if (searchView == null) {
            throw new IllegalArgumentException("searchView must be non-null");
        }
        if (!(searchView instanceof SearchView)) {
            throw new IllegalArgumentException("searchView must be an instance of android.widget.SearchView");
        }
    }

    private SearchViewCompat(Context context) {
    }

    @Deprecated
    public static View newSearchView(Context context) {
        return new SearchView(context);
    }

    @Deprecated
    public static void setSearchableInfo(View searchView, ComponentName searchableComponent) {
        checkIfLegalArg(searchView);
        SearchManager searchManager = (SearchManager) searchView.getContext().getSystemService(Stats.SUB_CONTAINER_ALL_APPS_SEARCH);
        ((SearchView) searchView).setSearchableInfo(searchManager.getSearchableInfo(searchableComponent));
    }

    @Deprecated
    public static void setImeOptions(View searchView, int imeOptions) {
        checkIfLegalArg(searchView);
        ((SearchView) searchView).setImeOptions(imeOptions);
    }

    @Deprecated
    public static void setInputType(View searchView, int inputType) {
        checkIfLegalArg(searchView);
        ((SearchView) searchView).setInputType(inputType);
    }

    @Deprecated
    public static void setOnQueryTextListener(View searchView, OnQueryTextListener listener) {
        checkIfLegalArg(searchView);
        ((SearchView) searchView).setOnQueryTextListener(newOnQueryTextListener(listener));
    }

    private static SearchView.OnQueryTextListener newOnQueryTextListener(final OnQueryTextListener listener) {
        return new SearchView.OnQueryTextListener() { // from class: android.support.v4.widget.SearchViewCompat.1
            @Override // android.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextSubmit(String query) {
                return OnQueryTextListener.this.onQueryTextSubmit(query);
            }

            @Override // android.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextChange(String newText) {
                return OnQueryTextListener.this.onQueryTextChange(newText);
            }
        };
    }

    @Deprecated
    /* loaded from: classes.dex */
    public static abstract class OnQueryTextListenerCompat implements OnQueryTextListener {
        @Override // android.support.v4.widget.SearchViewCompat.OnQueryTextListener
        public boolean onQueryTextSubmit(String query) {
            return false;
        }

        @Override // android.support.v4.widget.SearchViewCompat.OnQueryTextListener
        public boolean onQueryTextChange(String newText) {
            return false;
        }
    }

    @Deprecated
    public static void setOnCloseListener(View searchView, OnCloseListener listener) {
        checkIfLegalArg(searchView);
        ((SearchView) searchView).setOnCloseListener(newOnCloseListener(listener));
    }

    private static SearchView.OnCloseListener newOnCloseListener(final OnCloseListener listener) {
        return new SearchView.OnCloseListener() { // from class: android.support.v4.widget.SearchViewCompat.2
            @Override // android.widget.SearchView.OnCloseListener
            public boolean onClose() {
                return OnCloseListener.this.onClose();
            }
        };
    }

    @Deprecated
    /* loaded from: classes.dex */
    public static abstract class OnCloseListenerCompat implements OnCloseListener {
        @Override // android.support.v4.widget.SearchViewCompat.OnCloseListener
        public boolean onClose() {
            return false;
        }
    }

    @Deprecated
    public static CharSequence getQuery(View searchView) {
        checkIfLegalArg(searchView);
        return ((SearchView) searchView).getQuery();
    }

    @Deprecated
    public static void setQuery(View searchView, CharSequence query, boolean submit) {
        checkIfLegalArg(searchView);
        ((SearchView) searchView).setQuery(query, submit);
    }

    @Deprecated
    public static void setQueryHint(View searchView, CharSequence hint) {
        checkIfLegalArg(searchView);
        ((SearchView) searchView).setQueryHint(hint);
    }

    @Deprecated
    public static void setIconified(View searchView, boolean iconify) {
        checkIfLegalArg(searchView);
        ((SearchView) searchView).setIconified(iconify);
    }

    @Deprecated
    public static boolean isIconified(View searchView) {
        checkIfLegalArg(searchView);
        return ((SearchView) searchView).isIconified();
    }

    @Deprecated
    public static void setSubmitButtonEnabled(View searchView, boolean enabled) {
        checkIfLegalArg(searchView);
        ((SearchView) searchView).setSubmitButtonEnabled(enabled);
    }

    @Deprecated
    public static boolean isSubmitButtonEnabled(View searchView) {
        checkIfLegalArg(searchView);
        return ((SearchView) searchView).isSubmitButtonEnabled();
    }

    @Deprecated
    public static void setQueryRefinementEnabled(View searchView, boolean enable) {
        checkIfLegalArg(searchView);
        ((SearchView) searchView).setQueryRefinementEnabled(enable);
    }

    @Deprecated
    public static boolean isQueryRefinementEnabled(View searchView) {
        checkIfLegalArg(searchView);
        return ((SearchView) searchView).isQueryRefinementEnabled();
    }

    @Deprecated
    public static void setMaxWidth(View searchView, int maxpixels) {
        checkIfLegalArg(searchView);
        ((SearchView) searchView).setMaxWidth(maxpixels);
    }
}

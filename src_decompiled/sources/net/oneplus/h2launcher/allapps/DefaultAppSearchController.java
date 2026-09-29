package net.oneplus.h2launcher.allapps;

import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import java.util.List;
import net.oneplus.h2launcher.ExtendedEditText;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.allapps.AlphabeticalAppsList;

/* loaded from: classes.dex */
final class DefaultAppSearchController extends AllAppsSearchBarController implements TextWatcher, TextView.OnEditorActionListener, View.OnClickListener {
    private static final boolean ALLOW_SINGLE_APP_LAUNCH = true;
    private static final int FADE_IN_DURATION = 175;
    private static final int FADE_OUT_DURATION = 100;
    private static final int SEARCH_TRANSLATION_X_DP = 18;
    AllAppsRecyclerView mAppsRecyclerView;
    private ViewGroup mContainerView;
    private final Context mContext;
    private View mDismissSearchButtonView;
    Runnable mFocusRecyclerViewRunnable = new Runnable() { // from class: net.oneplus.h2launcher.allapps.DefaultAppSearchController.1
        @Override // java.lang.Runnable
        public void run() {
            DefaultAppSearchController.this.mAppsRecyclerView.requestFocus();
        }
    };
    final InputMethodManager mInputMethodManager;
    View mSearchBarContainerView;
    ExtendedEditText mSearchBarEditView;
    private View mSearchButtonView;
    private DefaultAppSearchAlgorithm mSearchManager;
    private View mSearchView;

    public DefaultAppSearchController(Context context, ViewGroup containerView, AllAppsRecyclerView appsRecyclerView) {
        this.mContext = context;
        this.mInputMethodManager = (InputMethodManager) this.mContext.getSystemService("input_method");
        this.mContainerView = containerView;
        this.mAppsRecyclerView = appsRecyclerView;
    }

    @Override // net.oneplus.h2launcher.allapps.AllAppsSearchBarController
    public View getView(ViewGroup parent) {
        LayoutInflater inflater = LayoutInflater.from(parent.getContext());
        this.mSearchView = inflater.inflate(R.layout.all_apps_search_bar, parent, false);
        this.mSearchView.setOnClickListener(this);
        this.mSearchButtonView = this.mSearchView.findViewById(R.id.search_button);
        this.mSearchBarContainerView = this.mSearchView.findViewById(R.id.search_container);
        this.mDismissSearchButtonView = this.mSearchBarContainerView.findViewById(R.id.dismiss_search_button);
        this.mDismissSearchButtonView.setOnClickListener(this);
        this.mSearchBarEditView = (ExtendedEditText) this.mSearchBarContainerView.findViewById(R.id.search_box_input);
        this.mSearchBarEditView.addTextChangedListener(this);
        this.mSearchBarEditView.setOnEditorActionListener(this);
        this.mSearchBarEditView.setOnBackKeyListener(new ExtendedEditText.OnBackKeyListener() { // from class: net.oneplus.h2launcher.allapps.DefaultAppSearchController.2
            @Override // net.oneplus.h2launcher.ExtendedEditText.OnBackKeyListener
            public boolean onBackKey() {
                String query = Utilities.trim(DefaultAppSearchController.this.mSearchBarEditView.getEditableText().toString());
                if (!query.isEmpty() && !DefaultAppSearchController.this.mApps.hasNoFilteredResults()) {
                    return false;
                }
                DefaultAppSearchController.this.hideSearchField(true, DefaultAppSearchController.this.mFocusRecyclerViewRunnable);
                return true;
            }
        });
        return this.mSearchView;
    }

    @Override // net.oneplus.h2launcher.allapps.AllAppsSearchBarController
    public void focusSearchField() {
        this.mSearchBarEditView.requestFocus();
        showSearchField();
    }

    @Override // net.oneplus.h2launcher.allapps.AllAppsSearchBarController
    public boolean isSearchFieldFocused() {
        return this.mSearchBarEditView.isFocused();
    }

    @Override // net.oneplus.h2launcher.allapps.AllAppsSearchBarController
    protected void onInitialize() {
        this.mSearchManager = new DefaultAppSearchAlgorithm(this.mApps.getApps());
    }

    @Override // net.oneplus.h2launcher.allapps.AllAppsSearchBarController
    public void reset() {
        hideSearchField(false, null);
    }

    @Override // net.oneplus.h2launcher.allapps.AllAppsSearchBarController
    public boolean shouldShowPredictionBar() {
        return false;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        if (v == this.mSearchView) {
            showSearchField();
        } else if (v == this.mDismissSearchButtonView) {
            hideSearchField(true, this.mFocusRecyclerViewRunnable);
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence s, int start, int count, int after) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence s, int start, int before, int count) {
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable s) {
        String query = s.toString();
        if (query.isEmpty()) {
            this.mSearchManager.cancel(true);
            this.mCb.clearSearchResult();
        } else {
            this.mSearchManager.cancel(false);
            this.mSearchManager.doSearch(query, this.mCb);
        }
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView v, int actionId, KeyEvent event) {
        if (actionId != 3 || this.mApps.getNumFilteredApps() > 1) {
            return false;
        }
        List<AlphabeticalAppsList.AdapterItem> items = this.mApps.getAdapterItems();
        for (int i = 0; i < items.size(); i++) {
            AlphabeticalAppsList.AdapterItem item = items.get(i);
            switch (item.viewType) {
                case 1:
                case 5:
                    View goMarketView = this.mAppsRecyclerView.getChildAt(i);
                    if (goMarketView.getVisibility() == 0) {
                        goMarketView.performClick();
                    }
                    this.mInputMethodManager.hideSoftInputFromWindow(this.mContainerView.getWindowToken(), 0);
                    return true;
                default:
            }
        }
        return false;
    }

    private void showSearchField() {
        int translationX = Utilities.pxFromDp(18.0f, this.mContext.getResources().getDisplayMetrics());
        this.mSearchBarContainerView.setVisibility(0);
        this.mSearchBarContainerView.setAlpha(0.0f);
        this.mSearchBarContainerView.setTranslationX(translationX);
        this.mSearchBarContainerView.animate().alpha(1.0f).translationX(0.0f).setDuration(175L).withLayer().withEndAction(new Runnable() { // from class: net.oneplus.h2launcher.allapps.DefaultAppSearchController.3
            @Override // java.lang.Runnable
            public void run() {
                DefaultAppSearchController.this.mSearchBarEditView.requestFocus();
                DefaultAppSearchController.this.mInputMethodManager.showSoftInput(DefaultAppSearchController.this.mSearchBarEditView, 1);
            }
        });
        this.mSearchButtonView.animate().alpha(0.0f).translationX(-translationX).setDuration(100L).withLayer();
    }

    void hideSearchField(boolean animated, final Runnable postAnimationRunnable) {
        this.mSearchManager.cancel(true);
        final boolean resetTextField = this.mSearchBarEditView.getText().toString().length() > 0;
        int translationX = Utilities.pxFromDp(18.0f, this.mContext.getResources().getDisplayMetrics());
        if (animated) {
            this.mSearchBarContainerView.animate().alpha(0.0f).translationX(0.0f).setDuration(175L).withLayer().withEndAction(new Runnable() { // from class: net.oneplus.h2launcher.allapps.DefaultAppSearchController.4
                @Override // java.lang.Runnable
                public void run() {
                    DefaultAppSearchController.this.mSearchBarContainerView.setVisibility(4);
                    if (resetTextField) {
                        DefaultAppSearchController.this.mSearchBarEditView.setText("");
                    }
                    DefaultAppSearchController.this.mCb.clearSearchResult();
                    if (postAnimationRunnable != null) {
                        postAnimationRunnable.run();
                    }
                }
            });
            this.mSearchButtonView.setTranslationX(-translationX);
            this.mSearchButtonView.animate().alpha(1.0f).translationX(0.0f).setDuration(100L).withLayer();
        } else {
            this.mSearchBarContainerView.setVisibility(4);
            if (resetTextField) {
                this.mSearchBarEditView.setText("");
            }
            this.mCb.clearSearchResult();
            this.mSearchButtonView.setAlpha(1.0f);
            this.mSearchButtonView.setTranslationX(0.0f);
            if (postAnimationRunnable != null) {
                postAnimationRunnable.run();
            }
        }
        this.mInputMethodManager.hideSoftInputFromWindow(this.mContainerView.getWindowToken(), 0);
    }
}

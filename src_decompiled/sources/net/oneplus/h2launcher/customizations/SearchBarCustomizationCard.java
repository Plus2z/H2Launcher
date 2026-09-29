package net.oneplus.h2launcher.customizations;

import android.content.Context;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import net.oneplus.gallery3d.exif.ExifInterface;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.config.PreferencesHelper;
import net.oneplus.h2launcher.customizations.BaseCustomizationCard;
import net.oneplus.h2launcher.util.AnalyticHelper;

/* loaded from: classes.dex */
public class SearchBarCustomizationCard extends BaseCustomizationCard implements View.OnClickListener {
    private static final String TAG = SearchBarCustomizationCard.class.getSimpleName();
    private CustomizationsContainerView mCustomizationsView;
    private PreferencesHelper.SearchBarStyle mSearchBarStyle;
    private Selection mSelectionCurrent;
    private Selection mSelectionDefault;
    private Selection mSelectionHidden;
    private Selection mSelectionTransparent;

    public SearchBarCustomizationCard(Context context) {
        this(context, null, 0);
    }

    public SearchBarCustomizationCard(Context context, @Nullable AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SearchBarCustomizationCard(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        setupContentView(this.mContent);
        reloadCustomizationSettings();
    }

    @Override // net.oneplus.h2launcher.customizations.BaseCustomizationCard
    protected View getContentView() {
        LayoutInflater layoutInflater = LayoutInflater.from(getContext());
        return layoutInflater.inflate(R.layout.customization_search_bar, (ViewGroup) this, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.customizations.BaseCustomizationCard
    public void reloadCustomizationSettings() {
        Selection lastSelection = this.mSelectionCurrent;
        this.mSearchBarStyle = PreferencesHelper.getSearchBarStyle(getContext());
        switch (this.mSearchBarStyle) {
            case DEFAULT:
                this.mSelectionCurrent = this.mSelectionDefault;
                break;
            case TRANSPARENT:
                this.mSelectionCurrent = this.mSelectionTransparent;
                break;
            case HIDDEN:
                this.mSelectionCurrent = this.mSelectionHidden;
                break;
        }
        if (lastSelection != null) {
            lastSelection.setSelected(false, 0);
        }
        if (this.mSelectionCurrent != null) {
            this.mSelectionCurrent.setSelected(true, 0);
        }
        if (this.mCustomizationsView != null) {
            PreferencesHelper.SearchBarStyle searchBarStyle = getSearchBarStyleFromView(this.mSelectionCurrent);
            this.mCustomizationsView.animateToPreview(searchBarStyle, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.customizations.BaseCustomizationCard
    public BaseCustomizationCard.SaveCustomizationTask getSaveCustomizationTask() {
        final PreferencesHelper.SearchBarStyle searchBarStyle = getSearchBarStyleFromView(this.mSelectionCurrent);
        if (searchBarStyle.equals(this.mSearchBarStyle)) {
            return null;
        }
        return new BaseCustomizationCard.SaveCustomizationTask(TAG) { // from class: net.oneplus.h2launcher.customizations.SearchBarCustomizationCard.1
            @Override // java.lang.Runnable
            public void run() {
                PreferencesHelper.setSearchBarStyle(SearchBarCustomizationCard.this.getContext(), searchBarStyle);
                String style = "0";
                switch (AnonymousClass2.$SwitchMap$net$oneplus$h2launcher$config$PreferencesHelper$SearchBarStyle[searchBarStyle.ordinal()]) {
                    case 1:
                        style = "0";
                        break;
                    case 2:
                        style = "1";
                        break;
                    case 3:
                        style = ExifInterface.GpsMeasureMode.MODE_2_DIMENSIONAL;
                        break;
                }
                AnalyticHelper.get().putAnalytics(AnalyticHelper.Tag.MDM_OPTIONS_TAG, AnalyticHelper.Label.MDM_OPTIONS_SEARCH_BAR, style);
            }
        };
    }

    private void setupContentView(View content) {
        this.mCustomizationsView = this.mLauncher.getCustomizationsView();
        this.mSelectionDefault = (Selection) content.findViewById(R.id.selection_default);
        this.mSelectionTransparent = (Selection) content.findViewById(R.id.selection_transparent);
        this.mSelectionHidden = (Selection) content.findViewById(R.id.selection_hidden);
        View searchBarDefaultView = content.findViewById(R.id.search_bar_default_view);
        View searchBarTransparentView = content.findViewById(R.id.search_bar_transparent_view);
        if (searchBarDefaultView != null && searchBarTransparentView != null) {
            boolean isRtl = Utilities.isRtl(getResources());
            searchBarDefaultView.setBackgroundResource(isRtl ? R.drawable.search_bar_default_rtl : R.drawable.search_bar_default);
            searchBarTransparentView.setBackgroundResource(isRtl ? R.drawable.search_bar_transparent_rtl : R.drawable.search_bar_transparent);
        }
        ViewGroup selections = (ViewGroup) content.findViewById(R.id.selections);
        if (selections != null) {
            int count = selections.getChildCount();
            for (int index = 0; index < count; index++) {
                View child = selections.getChildAt(index);
                if (child instanceof Selection) {
                    child.setOnClickListener(this);
                }
            }
        }
    }

    private PreferencesHelper.SearchBarStyle getSearchBarStyleFromView(View selection) {
        switch (selection.getId()) {
            case R.id.selection_default /* 2131820750 */:
                return PreferencesHelper.SearchBarStyle.DEFAULT;
            case R.id.search_bar_default_view /* 2131820751 */:
            case R.id.search_bar_transparent_view /* 2131820753 */:
            default:
                throw new IllegalArgumentException("Unknown view identifier.");
            case R.id.selection_transparent /* 2131820752 */:
                return PreferencesHelper.SearchBarStyle.TRANSPARENT;
            case R.id.selection_hidden /* 2131820754 */:
                return PreferencesHelper.SearchBarStyle.HIDDEN;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        if (this.mSelectionCurrent != null) {
            this.mSelectionCurrent.setSelected(false);
        }
        this.mSelectionCurrent = (Selection) v;
        this.mSelectionCurrent.setSelected(true);
        if (this.mCustomizationsView != null) {
            PreferencesHelper.SearchBarStyle searchBarStyle = getSearchBarStyleFromView(this.mSelectionCurrent);
            this.mCustomizationsView.animateToPreview(searchBarStyle);
        }
    }
}

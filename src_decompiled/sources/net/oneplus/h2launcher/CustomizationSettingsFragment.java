package net.oneplus.h2launcher;

import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.Switch;
import android.widget.TextView;
import com.oneplus.lib.widget.recyclerview.LinearLayoutManager;
import com.oneplus.lib.widget.recyclerview.RecyclerView;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import net.oneplus.h2launcher.oos.StyleManager;
import net.oneplus.h2launcher.quickpage.view.RecyclerFastScrollerUtils;
import net.oneplus.h2launcher.util.AnalyticHelper;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class CustomizationSettingsFragment extends Fragment {
    public static final String ACTION_SHELF_ENABLED_CHANGED = "net.oneplus.h2launcher.action.SHELF_ENABLED_CHANGED";
    public static final String DOUBLE_TAP_ENABLED_SAVED = "double_tap_to_lock_enabled_saved";
    public static final String EXTRA_SHELF_ENABLED = "net.oneplus.h2launcher.extra.SHELF_ENABLED";
    public static final String GESTURE_SETTINGS = "gesture_settings";
    public static final int GESTURE_TYPE_DOUBLE_TAP = 8;
    public static final int GESTURE_TYPE_SHELF = 0;
    public static final int GESTURE_TYPE_SWIPE_DOWN = 2;
    public static final int GESTURE_TYPE_SWIPE_UP = 1;
    public static final int GESTURE_TYPE_WIDGETS = 3;
    public static final String SHELF_ENABLED_SAVED = "shelf_enabled_saved";
    public static final String SWIPE_DOWN_ENABLED_SAVED = "swipe_down_enabled_saved";
    public static final String SWIPE_UP_ENABLED_SAVED = "swipe_up_enabled_saved";
    public static final int TYPE_SWITCH_LAYOUT = 4;
    public static final String WIDGETS_ENABLED_SAVED = "widgets_enabled_saved";
    private SharedPreferences mGestureSharedPrefs;
    private final String TAG = CustomizationSettingsFragment.class.getSimpleName();
    private View mView = null;
    private RecyclerView mRecyclerView = null;
    private ArrayList<SettingEntry> mSettingEntries = new ArrayList<>();
    private final String SYSTEM_PROPERTY_KEY_IS_BETA_ROM = "ro.build.beta";

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mGestureSharedPrefs = getActivity().getSharedPreferences(GESTURE_SETTINGS, 0);
    }

    @Override // android.support.v4.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        if (this.mView == null) {
            this.mView = inflater.inflate(R.layout.fragment_settings, container, false);
            this.mRecyclerView = (RecyclerView) this.mView.findViewById(R.id.recycler_view);
            this.mRecyclerView.setHasFixedSize(true);
            SettingAdapter adapter = new SettingAdapter();
            LinearLayoutManager layoutManager = new LinearLayoutManager(getActivity());
            layoutManager.setOrientation(1);
            this.mRecyclerView.setLayoutManager(layoutManager);
            this.mRecyclerView.setAdapter(adapter);
            View actionbar = this.mView.findViewById(R.id.action_bar);
            actionbar.setBackgroundResource(R.color.customization_setting_background_color);
            String deviceTag = Utilities.getDeviceTag();
            char c = 65535;
            switch (deviceTag.hashCode()) {
                case 46976240:
                    if (deviceTag.equals(Utilities.DEVICE_18821)) {
                        c = 0;
                        break;
                    }
                    break;
                case 46976339:
                    if (deviceTag.equals(Utilities.DEVICE_18857)) {
                        c = 1;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                case 1:
                    RelativeLayout.LayoutParams lp = (RelativeLayout.LayoutParams) actionbar.getLayoutParams();
                    lp.topMargin = RecyclerFastScrollerUtils.convertDpToPx(getContext(), 36.0f);
                    break;
            }
            ImageView backButton = (ImageView) this.mView.findViewById(R.id.up);
            if (backButton != null) {
                backButton.setImageResource(R.drawable.ic_arrow_back_grey);
                backButton.setOnClickListener(new View.OnClickListener() { // from class: net.oneplus.h2launcher.CustomizationSettingsFragment.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View v) {
                        CustomizationSettingsFragment.this.getActivity().onBackPressed();
                    }
                });
            }
            TextView title = (TextView) this.mView.findViewById(R.id.title);
            if (title != null) {
                title.setTextColor(getResources().getColor(R.color.customization_common_text_color));
                title.setText(R.string.launcher_settings);
            }
            TextView saveButton = (TextView) this.mView.findViewById(R.id.menu_save);
            saveButton.setVisibility(8);
        } else {
            ViewGroup parent = (ViewGroup) this.mView.getParent();
            if (parent != null) {
                parent.removeView(this.mView);
            }
        }
        return this.mView;
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        updateSwitchLayoutSub();
    }

    private void updateSwitchLayoutSub() {
        SettingEntry entry;
        if (this.mSettingEntries != null) {
            Iterator<SettingEntry> it = this.mSettingEntries.iterator();
            while (it.hasNext() && (entry = it.next()) != null) {
                if (entry.type == 4) {
                    int subtitleResId = StyleManager.isStandardLayout() ? R.string.standard_layout_title : R.string.simplified_layout_title;
                    entry.subtitle = subtitleResId == 0 ? null : getResources().getString(subtitleResId);
                    return;
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public class SettingAdapter extends RecyclerView.Adapter<ViewHolder> {
        public SettingAdapter() {
            CustomizationSettingsFragment.this.mSettingEntries.add(new SettingEntry(0, R.drawable.ic_shelf, R.string.pref_quick_page_switch, R.string.pref_quick_page_switch_summary_on));
            CustomizationSettingsFragment.this.mSettingEntries.add(new SettingEntry(1, R.drawable.ic_swipe_up, R.string.gesture_swipe_up_switch, R.string.gesture_swipe_up_switch_subtitle));
            CustomizationSettingsFragment.this.mSettingEntries.add(new SettingEntry(2, R.drawable.ic_swipe_down, R.string.gesture_swipe_down_switch, R.string.gesture_swipe_down_switch_subtitle));
            if (StyleManager.getInstance().showWidgetsButtonConfigurable()) {
                CustomizationSettingsFragment.this.mSettingEntries.add(new SettingEntry(3, R.drawable.ic_enable_widgets, R.string.gesture_enable_widget_switch, R.string.gesture_enable_widget_switch_subtitle));
            }
            CustomizationSettingsFragment.this.mSettingEntries.add(new SettingEntry(8, R.drawable.ic_double_tap_lock, R.string.pref_double_tap_to_lock, R.string.content_double_tap_to_lock));
            CustomizationSettingsFragment.this.loadSettingsFromPreferences();
        }

        @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.Adapter
        public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
            View v = LayoutInflater.from(parent.getContext()).inflate(R.layout.gesture_settings_row, parent, false);
            ViewHolder vh = new ViewHolder(v);
            v.setTag(vh);
            return vh;
        }

        @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.Adapter
        public void onBindViewHolder(ViewHolder holder, int position) {
            if (holder.mRowLayout != null) {
                holder.mRowLayout.setOnClickListener(new ItemClick());
            }
            SettingEntry entry = (SettingEntry) CustomizationSettingsFragment.this.mSettingEntries.get(position);
            holder.mIcon.setImageDrawable(entry.icon);
            holder.mTitle.setText(entry.title);
            holder.mSubtitle.setText(entry.subtitle);
            holder.mSubtitle.setVisibility(TextUtils.isEmpty(entry.subtitle) ? 8 : 0);
            holder.mSwitch.setVisibility(entry.type == 4 ? 4 : 0);
            holder.mSwitch.setChecked(entry.enabled);
            holder.mSwitch.setTag(entry);
            holder.mSwitch.setOnClickListener(new ItemClick());
            int visibility = position == getItemCount() + (-1) ? 4 : 0;
            holder.mDivider.setVisibility(visibility);
        }

        @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.Adapter
        public int getItemCount() {
            return CustomizationSettingsFragment.this.mSettingEntries.size();
        }

        /* loaded from: classes.dex */
        public class ViewHolder extends RecyclerView.ViewHolder {
            public View mDivider;
            public ImageView mIcon;
            public RelativeLayout mRowLayout;
            public TextView mSubtitle;
            public Switch mSwitch;
            public TextView mTitle;

            public ViewHolder(View v) {
                super(v);
                this.mRowLayout = null;
                this.mIcon = null;
                this.mSwitch = null;
                this.mTitle = null;
                this.mSubtitle = null;
                this.mDivider = null;
                this.mRowLayout = (RelativeLayout) v.findViewById(R.id.row_layout);
                this.mIcon = (ImageView) v.findViewById(R.id.icon);
                this.mSwitch = (Switch) v.findViewById(R.id.switch_status);
                this.mTitle = (TextView) v.findViewById(R.id.title);
                this.mSubtitle = (TextView) v.findViewById(R.id.subtitle);
                this.mDivider = v.findViewById(R.id.divider);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public class ItemClick implements View.OnClickListener {
            private ItemClick() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Switch theSwitch = null;
                if (view.getId() == R.id.row_layout) {
                    ViewHolder viewHolder = (ViewHolder) view.getTag();
                    theSwitch = viewHolder.mSwitch;
                    theSwitch.setChecked(!theSwitch.isChecked());
                } else if (view.getId() == R.id.switch_status) {
                    theSwitch = (Switch) view;
                }
                if (theSwitch != null) {
                    if (theSwitch.getVisibility() == 0) {
                        SettingEntry entry = (SettingEntry) theSwitch.getTag();
                        if (entry != null) {
                            entry.enabled = theSwitch.isChecked();
                            return;
                        }
                        return;
                    }
                    FragmentManager fragmentManager = CustomizationSettingsFragment.this.getFragmentManager();
                    FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
                    SwitchLayoutFragment fragment = new SwitchLayoutFragment();
                    fragmentTransaction.replace(R.id.fragment_container, fragment);
                    fragmentTransaction.addToBackStack(null);
                    fragmentTransaction.commit();
                }
            }
        }
    }

    private boolean isEnableLayoutSwitch() {
        String isBeta = null;
        try {
            Class<?> clazz = Class.forName("android.os.SystemProperties");
            Method method = clazz.getDeclaredMethod("get", String.class);
            isBeta = (String) method.invoke(null, "ro.build.beta");
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            e.printStackTrace();
        }
        if ("1".equals(isBeta)) {
            Logger.d(this.TAG, "[isEnableLayoutSwitch] true");
            return true;
        }
        Logger.d(this.TAG, "[isEnableLayoutSwitch] false");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadSettingsFromPreferences() {
        Iterator<SettingEntry> it = this.mSettingEntries.iterator();
        while (it.hasNext()) {
            SettingEntry entry = it.next();
            switch (entry.type) {
                case 0:
                    entry.enabled = this.mGestureSharedPrefs.getBoolean(SHELF_ENABLED_SAVED, true);
                    break;
                case 1:
                    entry.enabled = this.mGestureSharedPrefs.getBoolean(SWIPE_UP_ENABLED_SAVED, true);
                    break;
                case 2:
                    entry.enabled = this.mGestureSharedPrefs.getBoolean(SWIPE_DOWN_ENABLED_SAVED, true);
                    break;
                case 3:
                    entry.enabled = StyleManager.getInstance().showWidgetsButton();
                    break;
                case 8:
                    entry.enabled = this.mGestureSharedPrefs.getBoolean(DOUBLE_TAP_ENABLED_SAVED, true);
                    break;
            }
        }
    }

    void saveCustomizationSettings() {
        SharedPreferences.Editor editor = this.mGestureSharedPrefs.edit();
        preparePreferencesEditor(editor);
        editor.apply();
    }

    private void preparePreferencesEditor(SharedPreferences.Editor editor) {
        String shelfEnabled = "0";
        String swipeUpEnabled = "0";
        String swipeDownEnabled = "0";
        String widgetEnabled = "0";
        Iterator<SettingEntry> it = this.mSettingEntries.iterator();
        while (it.hasNext()) {
            SettingEntry entry = it.next();
            boolean enabled = entry.enabled;
            switch (entry.type) {
                case 0:
                    editor.putBoolean(SHELF_ENABLED_SAVED, enabled);
                    shelfEnabled = enabled ? "1" : "0";
                    Intent intent = new Intent("net.oneplus.h2launcher.action.SHELF_ENABLED_CHANGED");
                    intent.putExtra("net.oneplus.h2launcher.extra.SHELF_ENABLED", enabled);
                    getContext().sendBroadcast(intent);
                    break;
                case 1:
                    editor.putBoolean(SWIPE_UP_ENABLED_SAVED, enabled);
                    if (!enabled) {
                        swipeUpEnabled = "0";
                        break;
                    } else {
                        swipeUpEnabled = "1";
                        break;
                    }
                case 2:
                    editor.putBoolean(SWIPE_DOWN_ENABLED_SAVED, enabled);
                    if (!enabled) {
                        swipeDownEnabled = "0";
                        break;
                    } else {
                        swipeDownEnabled = "1";
                        break;
                    }
                case 3:
                    editor.putBoolean(WIDGETS_ENABLED_SAVED, enabled);
                    if (!enabled) {
                        widgetEnabled = "0";
                        break;
                    } else {
                        widgetEnabled = "1";
                        break;
                    }
                case 8:
                    editor.putBoolean(DOUBLE_TAP_ENABLED_SAVED, enabled);
                    if (!enabled) {
                        break;
                    } else {
                        break;
                    }
            }
        }
        Map<String, String> mdmData = new HashMap<>();
        mdmData.put(AnalyticHelper.Label.MDM_OPTIONS_GESTURE_SHELF, shelfEnabled);
        mdmData.put(AnalyticHelper.Label.MDM_OPTIONS_GESTURE_QUICK_SEARCH, swipeUpEnabled);
        mdmData.put(AnalyticHelper.Label.MDM_OPTIONS_GESTURE_QUICK_NOTIFY, swipeDownEnabled);
        AnalyticHelper.get().putAnalytics(AnalyticHelper.Tag.MDM_OPTIONS_TAG, mdmData);
        AnalyticHelper.get().putAnalytics(AnalyticHelper.Tag.MDM_OPTIONS_H2_TAG, AnalyticHelper.Label.MDM_OPTIONS_H2_WIDGET, widgetEnabled);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class SettingEntry {
        public boolean enabled;
        public Drawable icon;
        public String subtitle;
        public String title;
        public int type;

        public SettingEntry(int type, int iconResId, int titleResId, int subtitleResId) {
            Resources res = CustomizationSettingsFragment.this.getResources();
            Resources.Theme theme = CustomizationSettingsFragment.this.getContext().getTheme();
            this.type = type;
            this.icon = iconResId == 0 ? null : res.getDrawable(iconResId, theme).mutate();
            this.title = titleResId == 0 ? null : res.getString(titleResId);
            this.subtitle = subtitleResId != 0 ? res.getString(subtitleResId) : null;
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
        saveCustomizationSettings();
    }
}

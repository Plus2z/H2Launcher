package net.oneplus.h2launcher;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceManager;
import android.preference.SwitchPreference;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class LauncherSettingsActivity extends Activity {
    private static final String ICON_PACK = "pref_icon_pack";
    private static final String QUICK_PAGE = "pref_quick_page";

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTheme(Utilities.isDarkModeTheme(this) ? R.style.SettingsThemeDark : R.style.SettingsTheme);
        getFragmentManager().beginTransaction().replace(android.R.id.content, new SettingsFragment()).commit();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        finish();
    }

    /* loaded from: classes.dex */
    public static class SettingsFragment extends PreferenceFragment {
        private static final String MDM_SHELF_STATE = "shelf_state";

        @Override // android.preference.PreferenceFragment, android.app.Fragment
        public void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
            addPreferencesFromResource(R.xml.preferences);
            PreferenceManager manager = getPreferenceManager();
            SwitchPreference quickPage = (SwitchPreference) manager.findPreference("pref_quick_page");
            quickPage.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: net.oneplus.h2launcher.LauncherSettingsActivity.SettingsFragment.1
                @Override // android.preference.Preference.OnPreferenceChangeListener
                public boolean onPreferenceChange(Preference preference, Object newValue) {
                    boolean switchValue = Boolean.valueOf(newValue.toString()).booleanValue();
                    Map<String, String> shelfStatusData = new HashMap<>();
                    shelfStatusData.put(SettingsFragment.MDM_SHELF_STATE, switchValue + "");
                    return true;
                }
            });
            String currentValue = getActivity().getSharedPreferences(IconPackHelper.SHARED_PREFERENCES, 0).getString(IconPackHelper.CURRENT_ICON_PACK_PACKAGE_NAME, IconPackHelper.CUSTOM_SYSTEM_DEFAULT_ICONS);
            final CharSequence[][] iconPackList = IconPackHelper.getIconPackList(getActivity(), true);
            final ListPreference listPref = (ListPreference) findPreference(LauncherSettingsActivity.ICON_PACK);
            listPref.setEntries(iconPackList[0]);
            listPref.setEntryValues(iconPackList[1]);
            listPref.setValue(currentValue);
            listPref.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: net.oneplus.h2launcher.LauncherSettingsActivity.SettingsFragment.2
                @Override // android.preference.Preference.OnPreferenceChangeListener
                public boolean onPreferenceChange(Preference preference, Object newValue) {
                    SettingsFragment.this.getActivity().getSharedPreferences(IconPackHelper.SHARED_PREFERENCES, 0).edit().putString(IconPackHelper.CURRENT_ICON_PACK_PACKAGE_NAME, newValue.toString()).commit();
                    Intent intent = new Intent(Launcher.INTENT_ICON_PACK_CHANGED);
                    SettingsFragment.this.getActivity().sendBroadcast(intent);
                    for (int i = 0; i < iconPackList[1].length; i++) {
                        String value = iconPackList[1][i].toString();
                        if (value.equals(newValue)) {
                            listPref.setSummary(iconPackList[0][i]);
                        }
                    }
                    return true;
                }
            });
        }

        @Override // android.preference.PreferenceFragment, android.app.Fragment
        public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
            View v = super.onCreateView(inflater, container, savedInstanceState);
            if (v != null) {
                ListView lv = (ListView) v.findViewById(android.R.id.list);
                lv.setPadding(0, 0, 0, 0);
            }
            return v;
        }
    }
}

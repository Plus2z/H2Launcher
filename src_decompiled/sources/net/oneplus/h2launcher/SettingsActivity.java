package net.oneplus.h2launcher;

import android.app.Activity;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.SwitchPreference;
import android.support.v4.os.BuildCompat;
import net.oneplus.h2launcher.LauncherSettings;

/* loaded from: classes.dex */
public class SettingsActivity extends Activity {
    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getFragmentManager().beginTransaction().replace(android.R.id.content, new LauncherSettingsFragment()).commit();
    }

    /* loaded from: classes.dex */
    public static class LauncherSettingsFragment extends PreferenceFragment implements Preference.OnPreferenceChangeListener {
        @Override // android.preference.PreferenceFragment, android.app.Fragment
        public void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
            addPreferencesFromResource(R.xml.launcher_preferences);
            SwitchPreference pref = (SwitchPreference) findPreference(Utilities.ALLOW_ROTATION_PREFERENCE_KEY);
            pref.setPersistent(false);
            Bundle extras = new Bundle();
            extras.putBoolean(LauncherSettings.Settings.EXTRA_DEFAULT_VALUE, false);
            Bundle value = getActivity().getContentResolver().call(LauncherSettings.Settings.CONTENT_URI, LauncherSettings.Settings.METHOD_GET_BOOLEAN, Utilities.ALLOW_ROTATION_PREFERENCE_KEY, extras);
            pref.setChecked(value.getBoolean("value"));
            pref.setOnPreferenceChangeListener(this);
            if (!BuildCompat.isAtLeastO()) {
                getPreferenceScreen().removePreference(findPreference(SessionCommitReceiver.ADD_ICON_PREFERENCE_KEY));
            }
        }

        @Override // android.preference.Preference.OnPreferenceChangeListener
        public boolean onPreferenceChange(Preference preference, Object newValue) {
            Bundle extras = new Bundle();
            extras.putBoolean("value", ((Boolean) newValue).booleanValue());
            getActivity().getContentResolver().call(LauncherSettings.Settings.CONTENT_URI, LauncherSettings.Settings.METHOD_SET_BOOLEAN, preference.getKey(), extras);
            return true;
        }
    }
}

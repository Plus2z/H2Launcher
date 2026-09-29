package net.oneplus.h2launcher.quickpage;

import android.content.Context;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.Switch;
import android.widget.TextView;
import com.oneplus.lib.app.OPAlertDialog;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.config.PreferencesHelper;
import net.oneplus.h2launcher.quickpage.view.WelcomePanel;
import net.oneplus.h2launcher.util.AnalyticHelper;

/* loaded from: classes.dex */
public class QuickPageSettingDialog extends OPAlertDialog {
    private QuickPageBaseActivity mActivity;

    /* JADX INFO: Access modifiers changed from: protected */
    public QuickPageSettingDialog(Context context, int themeResId) {
        super(context, themeResId);
        this.mActivity = (QuickPageBaseActivity) context;
    }

    public void initDialog() {
        String welcomeTitle = PreferencesHelper.getWelcomeTitle(this.mActivity);
        View settingsView = LayoutInflater.from(this.mActivity).inflate(R.layout.quick_page_settings, (ViewGroup) null);
        setView(settingsView);
        final EditText welcomeTitleEditText = (EditText) settingsView.findViewById(R.id.temp_settings_header_edit_text);
        welcomeTitleEditText.setText(welcomeTitle);
        welcomeTitleEditText.setSelection(welcomeTitle.length());
        ViewGroup weatherContainer = (ViewGroup) settingsView.findViewById(R.id.temp_settings_weather_container);
        final Switch weatherSwitch = (Switch) weatherContainer.findViewById(R.id.temp_settings_weather_switch);
        weatherSwitch.setChecked(PreferencesHelper.isWeatherEnabled(this.mActivity));
        weatherSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: net.oneplus.h2launcher.quickpage.QuickPageSettingDialog.1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                AnalyticHelper.get().putAnalytics(AnalyticHelper.Tag.MDM_SHELF_TAG, AnalyticHelper.Label.MDM_SHELF_WEATHER_STATUS, String.valueOf(isChecked));
            }
        });
        String confirm = this.mActivity.getResources().getString(R.string.action_confirm);
        String cancel = this.mActivity.getResources().getString(android.R.string.cancel);
        setButton(-1, confirm, new DialogInterface.OnClickListener() { // from class: net.oneplus.h2launcher.quickpage.QuickPageSettingDialog.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int whichButton) {
                boolean wasWeatherEnabled = PreferencesHelper.isWeatherEnabled(QuickPageSettingDialog.this.mActivity);
                boolean isWeatherEnabled = weatherSwitch.isChecked();
                PreferencesHelper.setWeatherEnabled(QuickPageSettingDialog.this.mActivity, isWeatherEnabled);
                String oldTitle = PreferencesHelper.getWelcomeTitle(QuickPageSettingDialog.this.mActivity);
                String newTitle = welcomeTitleEditText.getText().toString();
                if (!newTitle.equals(oldTitle)) {
                    AnalyticHelper.get().putAnalytics(AnalyticHelper.Tag.MDM_SHELF_TAG, AnalyticHelper.Label.MDM_SHELF_GREETINGS, "1");
                }
                PreferencesHelper.setWelcomeTitle(QuickPageSettingDialog.this.mActivity, newTitle);
                WelcomePanel welcomePanel = QuickPageSettingDialog.this.mActivity.getWelcomePanel();
                welcomePanel.getWelcomeTitleView().setText(newTitle);
                if (wasWeatherEnabled != isWeatherEnabled) {
                    welcomePanel.toggleWeatherUpdate(isWeatherEnabled);
                }
            }
        });
        setButton(-2, cancel, new DialogInterface.OnClickListener() { // from class: net.oneplus.h2launcher.quickpage.QuickPageSettingDialog.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int whichButton) {
            }
        });
        if (Utilities.isPackageInstalled(this.mActivity, "net.oneplus.weather") && Utilities.isPackageEnabled(this.mActivity, "net.oneplus.weather")) {
            weatherContainer.setForegroundGravity(16);
            weatherContainer.setOnClickListener(new View.OnClickListener() { // from class: net.oneplus.h2launcher.quickpage.QuickPageSettingDialog.4
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    weatherSwitch.setChecked(!weatherSwitch.isChecked());
                }
            });
            return;
        }
        weatherSwitch.setChecked(false);
        weatherSwitch.setEnabled(false);
        weatherSwitch.setClickable(false);
        TextView weatherRemovedHint = (TextView) weatherContainer.findViewById(R.id.temp_settings_weather_removed_hint);
        weatherRemovedHint.setVisibility(0);
        ViewGroup.LayoutParams params = weatherContainer.getLayoutParams();
        params.height = -2;
        weatherContainer.setLayoutParams(params);
    }
}

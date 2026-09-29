package net.oneplus.h2launcher;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;

/* loaded from: classes.dex */
public class CustomizationSettingsActivity extends FragmentActivity {
    private static final String TAG_CUSTOMIZATION_SETTINGS = "customization_settings";

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        setContentView(R.layout.op_setting_activity_layout);
        FragmentManager fragmentManager = getSupportFragmentManager();
        FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
        CustomizationSettingsFragment fragment = new CustomizationSettingsFragment();
        fragmentTransaction.replace(R.id.fragment_container, fragment, TAG_CUSTOMIZATION_SETTINGS);
        fragmentTransaction.commit();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        finish();
    }
}

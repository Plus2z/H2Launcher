package net.oneplus.h2launcher;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;

@SuppressLint({"ValidFragment"})
/* loaded from: classes.dex */
public class SwitchLayoutDialogFragment extends DialogFragment {
    public SwitchLayoutFragment mSwitchLayoutFragment;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SuppressLint({"ValidFragment"})
    public SwitchLayoutDialogFragment(SwitchLayoutFragment switchLayoutFragment) {
        this.mSwitchLayoutFragment = null;
        this.mSwitchLayoutFragment = switchLayoutFragment;
    }

    @Override // android.support.v4.app.DialogFragment
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setTitle(R.string.settings_actionbar_title_switch_layout).setMessage(R.string.switch_layout_dialog_message).setPositiveButton(R.string.action_confirm, new DialogInterface.OnClickListener() { // from class: net.oneplus.h2launcher.SwitchLayoutDialogFragment.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int id) {
                SwitchLayoutDialogFragment.this.mSwitchLayoutFragment.saveSwitchLayoutSettings();
            }
        }).setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() { // from class: net.oneplus.h2launcher.SwitchLayoutDialogFragment.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int id) {
                SwitchLayoutDialogFragment.this.dismiss();
            }
        });
        return builder.create();
    }
}

package net.oneplus.h2launcher.quickpage;

import android.app.Dialog;
import android.app.DialogFragment;
import android.content.res.TypedArray;
import android.os.Bundle;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class QuickPageDialogFragment extends DialogFragment {
    private static final String ARG_TAG = "tag";
    public static final String DIALOG_SETTING = "dialog_tag_setting";
    private static final String TAG = QuickPageDialogFragment.class.getSimpleName();

    public static QuickPageDialogFragment newInstance(String tag) {
        QuickPageDialogFragment frag = new QuickPageDialogFragment();
        Bundle args = new Bundle();
        args.putString(ARG_TAG, tag);
        frag.setArguments(args);
        return frag;
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        String tag = getArguments().getString(ARG_TAG);
        if (tag == null) {
            Logger.d(TAG, "invalid argument: %s", ARG_TAG);
            return null;
        }
        if (!tag.equals(DIALOG_SETTING)) {
            return null;
        }
        int[] attrs = {R.attr.quickPageAlertDialog};
        TypedArray typedArray = getActivity().getTheme().obtainStyledAttributes(attrs);
        int themeResId = typedArray.getResourceId(0, 0);
        typedArray.recycle();
        if (themeResId == 0) {
            Logger.d(TAG, "invalid quick page alert dialog theme resource id: %d", Integer.valueOf(themeResId));
            return null;
        }
        QuickPageSettingDialog settingDialog = new QuickPageSettingDialog(getContext(), themeResId);
        settingDialog.initDialog();
        settingDialog.setCancelable(true);
        settingDialog.setCanceledOnTouchOutside(true);
        return settingDialog;
    }
}

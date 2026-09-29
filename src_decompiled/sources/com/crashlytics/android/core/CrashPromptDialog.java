package com.crashlytics.android.core;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.widget.ScrollView;
import android.widget.TextView;
import io.fabric.sdk.android.services.settings.PromptSettingsData;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes.dex */
class CrashPromptDialog {
    private final AlertDialog.Builder dialog;
    private final OptInLatch latch;

    /* loaded from: classes.dex */
    interface AlwaysSendCallback {
        void sendUserReportsWithoutPrompting(boolean z);
    }

    /* loaded from: classes.dex */
    private static class OptInLatch {
        private final CountDownLatch latch;
        private boolean send;

        private OptInLatch() {
            this.send = false;
            this.latch = new CountDownLatch(1);
        }

        void setOptIn(boolean optIn) {
            this.send = optIn;
            this.latch.countDown();
        }

        boolean getOptIn() {
            return this.send;
        }

        void await() {
            try {
                this.latch.await();
            } catch (InterruptedException e) {
            }
        }
    }

    public static CrashPromptDialog create(Activity activity, PromptSettingsData promptData, final AlwaysSendCallback alwaysSendCallback) {
        final OptInLatch latch = new OptInLatch();
        DialogStringResolver stringResolver = new DialogStringResolver(activity, promptData);
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        ScrollView scrollView = createDialogView(activity, stringResolver.getMessage());
        DialogInterface.OnClickListener sendClickListener = new DialogInterface.OnClickListener() { // from class: com.crashlytics.android.core.CrashPromptDialog.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                OptInLatch.this.setOptIn(true);
                dialog.dismiss();
            }
        };
        builder.setView(scrollView).setTitle(stringResolver.getTitle()).setCancelable(false).setNeutralButton(stringResolver.getSendButtonTitle(), sendClickListener);
        if (promptData.showCancelButton) {
            DialogInterface.OnClickListener cancelClickListener = new DialogInterface.OnClickListener() { // from class: com.crashlytics.android.core.CrashPromptDialog.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialog, int id) {
                    OptInLatch.this.setOptIn(false);
                    dialog.dismiss();
                }
            };
            builder.setNegativeButton(stringResolver.getCancelButtonTitle(), cancelClickListener);
        }
        if (promptData.showAlwaysSendButton) {
            DialogInterface.OnClickListener alwaysSendClickListener = new DialogInterface.OnClickListener() { // from class: com.crashlytics.android.core.CrashPromptDialog.3
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialog, int id) {
                    AlwaysSendCallback.this.sendUserReportsWithoutPrompting(true);
                    latch.setOptIn(true);
                    dialog.dismiss();
                }
            };
            builder.setPositiveButton(stringResolver.getAlwaysSendButtonTitle(), alwaysSendClickListener);
        }
        return new CrashPromptDialog(builder, latch);
    }

    private static ScrollView createDialogView(Activity activity, String message) {
        float density = activity.getResources().getDisplayMetrics().density;
        int textViewPadding = dipsToPixels(density, 5);
        TextView textView = new TextView(activity);
        textView.setAutoLinkMask(15);
        textView.setText(message);
        textView.setTextAppearance(activity, android.R.style.TextAppearance.Medium);
        textView.setPadding(textViewPadding, textViewPadding, textViewPadding, textViewPadding);
        textView.setFocusable(false);
        ScrollView scrollView = new ScrollView(activity);
        scrollView.setPadding(dipsToPixels(density, 14), dipsToPixels(density, 2), dipsToPixels(density, 10), dipsToPixels(density, 12));
        scrollView.addView(textView);
        return scrollView;
    }

    private static int dipsToPixels(float density, int dips) {
        return (int) (dips * density);
    }

    private CrashPromptDialog(AlertDialog.Builder dialog, OptInLatch latch) {
        this.latch = latch;
        this.dialog = dialog;
    }

    public void show() {
        this.dialog.show();
    }

    public void await() {
        this.latch.await();
    }

    public boolean getOptIn() {
        return this.latch.getOptIn();
    }
}

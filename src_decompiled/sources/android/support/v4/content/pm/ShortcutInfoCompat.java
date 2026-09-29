package android.support.v4.content.pm;

import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ShortcutInfo;
import android.graphics.Bitmap;
import android.graphics.drawable.Icon;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.text.TextUtils;

/* loaded from: classes.dex */
public class ShortcutInfoCompat {
    private ComponentName mActivity;
    private Context mContext;
    private CharSequence mDisabledMessage;
    private Bitmap mIconBitmap;
    private int mIconId;
    private String mId;
    private Intent[] mIntents;
    private CharSequence mLabel;
    private CharSequence mLongLabel;

    private ShortcutInfoCompat() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(25)
    public ShortcutInfo toShortcutInfo() {
        ShortcutInfo.Builder builder = new ShortcutInfo.Builder(this.mContext, this.mId).setShortLabel(this.mLabel).setIntents(this.mIntents);
        if (this.mIconId != 0) {
            builder.setIcon(Icon.createWithResource(this.mContext, this.mIconId));
        } else if (this.mIconBitmap != null) {
            builder.setIcon(Icon.createWithBitmap(this.mIconBitmap));
        }
        if (!TextUtils.isEmpty(this.mLongLabel)) {
            builder.setLongLabel(this.mLongLabel);
        }
        if (!TextUtils.isEmpty(this.mDisabledMessage)) {
            builder.setDisabledMessage(this.mDisabledMessage);
        }
        if (this.mActivity != null) {
            builder.setActivity(this.mActivity);
        }
        return builder.build();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Intent addToIntent(Intent outIntent) {
        outIntent.putExtra("android.intent.extra.shortcut.INTENT", this.mIntents[this.mIntents.length - 1]).putExtra("android.intent.extra.shortcut.NAME", this.mLabel.toString());
        if (this.mIconId != 0) {
            outIntent.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(this.mContext, this.mIconId));
        }
        if (this.mIconBitmap != null) {
            outIntent.putExtra("android.intent.extra.shortcut.ICON", this.mIconBitmap);
        }
        return outIntent;
    }

    /* loaded from: classes.dex */
    public static class Builder {
        private final ShortcutInfoCompat mInfo = new ShortcutInfoCompat();

        public Builder(@NonNull Context context, @NonNull String id) {
            this.mInfo.mContext = context;
            this.mInfo.mId = id;
        }

        @NonNull
        public Builder setShortLabel(@NonNull CharSequence shortLabel) {
            this.mInfo.mLabel = shortLabel;
            return this;
        }

        @NonNull
        public Builder setLongLabel(@NonNull CharSequence longLabel) {
            this.mInfo.mLongLabel = longLabel;
            return this;
        }

        @NonNull
        public Builder setDisabledMessage(@NonNull CharSequence disabledMessage) {
            this.mInfo.mDisabledMessage = disabledMessage;
            return this;
        }

        @NonNull
        public Builder setIntent(@NonNull Intent intent) {
            return setIntents(new Intent[]{intent});
        }

        @NonNull
        public Builder setIntents(@NonNull Intent[] intents) {
            this.mInfo.mIntents = intents;
            return this;
        }

        @NonNull
        public Builder setIcon(@NonNull Bitmap icon) {
            this.mInfo.mIconBitmap = icon;
            return this;
        }

        @NonNull
        public Builder setIcon(@DrawableRes int icon) {
            this.mInfo.mIconId = icon;
            return this;
        }

        @NonNull
        public Builder setActivity(@NonNull ComponentName activity) {
            this.mInfo.mActivity = activity;
            return this;
        }

        @NonNull
        public ShortcutInfoCompat build() {
            if (!TextUtils.isEmpty(this.mInfo.mLabel)) {
                if (this.mInfo.mIntents == null || this.mInfo.mIntents.length == 0) {
                    throw new IllegalArgumentException("Shortcut much have an intent");
                }
                return this.mInfo;
            }
            throw new IllegalArgumentException("Shortcut much have a non-empty label");
        }
    }
}

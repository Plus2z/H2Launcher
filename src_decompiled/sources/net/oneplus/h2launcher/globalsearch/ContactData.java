package net.oneplus.h2launcher.globalsearch;

import android.content.Intent;
import android.net.Uri;

/* loaded from: classes.dex */
public class ContactData {
    private String mDisplayName;
    private String mId;
    private Intent mIntent;
    private Uri mUri;

    public ContactData(String id, String name, Uri iconUri, Intent intent) {
        this.mId = id;
        this.mDisplayName = name;
        this.mUri = iconUri;
        this.mIntent = intent;
    }

    public String getId() {
        return this.mId;
    }

    public String getDisplayName() {
        return this.mDisplayName;
    }

    public Uri getIcon() {
        return this.mUri;
    }

    public Intent getIntent() {
        return this.mIntent;
    }
}

package io.fabric.sdk.android.services.common;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AdvertisingInfo {
    public final String advertisingId;
    public final boolean limitAdTrackingEnabled;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdvertisingInfo(String advertisingId, boolean limitAdTrackingEnabled) {
        this.advertisingId = advertisingId;
        this.limitAdTrackingEnabled = limitAdTrackingEnabled;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        AdvertisingInfo infoToCompare = (AdvertisingInfo) o;
        if (this.limitAdTrackingEnabled != infoToCompare.limitAdTrackingEnabled) {
            return false;
        }
        if (this.advertisingId != null) {
            if (this.advertisingId.equals(infoToCompare.advertisingId)) {
                return true;
            }
        } else if (infoToCompare.advertisingId == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int result = this.advertisingId != null ? this.advertisingId.hashCode() : 0;
        return (result * 31) + (this.limitAdTrackingEnabled ? 1 : 0);
    }
}

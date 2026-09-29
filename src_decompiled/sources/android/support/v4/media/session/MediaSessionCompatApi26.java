package android.support.v4.media.session;

import android.media.session.MediaSession;
import android.support.v4.media.session.MediaSessionCompatApi24;

/* loaded from: classes.dex */
class MediaSessionCompatApi26 {

    /* loaded from: classes.dex */
    public interface Callback extends MediaSessionCompatApi24.Callback {
        void onSetRepeatMode(int i);

        void onSetShuffleModeEnabled(boolean z);
    }

    MediaSessionCompatApi26() {
    }

    public static Object createCallback(Callback callback) {
        return new CallbackProxy(callback);
    }

    public static void setRepeatMode(Object sessionObj, int repeatMode) {
        ((MediaSession) sessionObj).setRepeatMode(repeatMode);
    }

    public static void setShuffleModeEnabled(Object sessionObj, boolean enabled) {
        ((MediaSession) sessionObj).setShuffleModeEnabled(enabled);
    }

    /* loaded from: classes.dex */
    static class CallbackProxy<T extends Callback> extends MediaSessionCompatApi24.CallbackProxy<T> {
        CallbackProxy(T callback) {
            super(callback);
        }

        public void onSetRepeatMode(int repeatMode) {
            ((Callback) this.mCallback).onSetRepeatMode(repeatMode);
        }

        public void onSetShuffleModeEnabled(boolean enabled) {
            ((Callback) this.mCallback).onSetShuffleModeEnabled(enabled);
        }
    }
}

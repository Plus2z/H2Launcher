package android.support.v4.media.session;

import android.media.session.MediaController;
import android.support.v4.media.session.MediaControllerCompatApi21;
import android.support.v4.media.session.MediaControllerCompatApi23;

/* loaded from: classes.dex */
class MediaControllerCompatApi26 {

    /* loaded from: classes.dex */
    public interface Callback extends MediaControllerCompatApi21.Callback {
        void onRepeatModeChanged(int i);

        void onShuffleModeChanged(boolean z);
    }

    MediaControllerCompatApi26() {
    }

    public static Object createCallback(Callback callback) {
        return new CallbackProxy(callback);
    }

    public static int getRepeatMode(Object controllerObj) {
        return ((MediaController) controllerObj).getRepeatMode();
    }

    public static boolean isShuffleModeEnabled(Object controllerObj) {
        return ((MediaController) controllerObj).isShuffleModeEnabled();
    }

    /* loaded from: classes.dex */
    public static class TransportControls extends MediaControllerCompatApi23.TransportControls {
        public static void setRepeatMode(Object controlsObj, int repeatMode) {
            ((MediaController.TransportControls) controlsObj).setRepeatMode(repeatMode);
        }

        public static void setShuffleModeEnabled(Object controlsObj, boolean enabled) {
            ((MediaController.TransportControls) controlsObj).setShuffleModeEnabled(enabled);
        }
    }

    /* loaded from: classes.dex */
    static class CallbackProxy<T extends Callback> extends MediaControllerCompatApi21.CallbackProxy<T> {
        CallbackProxy(T callback) {
            super(callback);
        }

        public void onRepeatModeChanged(int repeatMode) {
            ((Callback) this.mCallback).onRepeatModeChanged(repeatMode);
        }

        public void onShuffleModeChanged(boolean enabled) {
            ((Callback) this.mCallback).onShuffleModeChanged(enabled);
        }
    }
}

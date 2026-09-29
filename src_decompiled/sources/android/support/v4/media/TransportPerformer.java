package android.support.v4.media;

import android.os.SystemClock;
import android.view.KeyEvent;

@Deprecated
/* loaded from: classes.dex */
public abstract class TransportPerformer {
    static final int AUDIOFOCUS_GAIN = 1;
    static final int AUDIOFOCUS_GAIN_TRANSIENT = 2;
    static final int AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK = 3;
    static final int AUDIOFOCUS_LOSS = -1;
    static final int AUDIOFOCUS_LOSS_TRANSIENT = -2;
    static final int AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK = -3;

    @Deprecated
    public abstract long onGetCurrentPosition();

    @Deprecated
    public abstract long onGetDuration();

    @Deprecated
    public abstract boolean onIsPlaying();

    @Deprecated
    public abstract void onPause();

    @Deprecated
    public abstract void onSeekTo(long j);

    @Deprecated
    public abstract void onStart();

    @Deprecated
    public abstract void onStop();

    @Deprecated
    public TransportPerformer() {
    }

    @Deprecated
    public int onGetBufferPercentage() {
        return 100;
    }

    @Deprecated
    public int onGetTransportControlFlags() {
        return 60;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x0004, code lost:
    
        return true;
     */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onMediaButtonDown(int r3, android.view.KeyEvent r4) {
        /*
            r2 = this;
            r1 = 1
            switch(r3) {
                case 79: goto L11;
                case 85: goto L11;
                case 86: goto Ld;
                case 126: goto L5;
                case 127: goto L9;
                default: goto L4;
            }
        L4:
            return r1
        L5:
            r2.onStart()
            goto L4
        L9:
            r2.onPause()
            goto L4
        Ld:
            r2.onStop()
            goto L4
        L11:
            boolean r0 = r2.onIsPlaying()
            if (r0 == 0) goto L1b
            r2.onPause()
            goto L4
        L1b:
            r2.onStart()
            goto L4
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.TransportPerformer.onMediaButtonDown(int, android.view.KeyEvent):boolean");
    }

    @Deprecated
    public boolean onMediaButtonUp(int keyCode, KeyEvent event) {
        return true;
    }

    @Deprecated
    public void onAudioFocusChange(int focusChange) {
        int keyCode = 0;
        switch (focusChange) {
            case -1:
                keyCode = TransportMediator.KEYCODE_MEDIA_PAUSE;
                break;
        }
        if (keyCode != 0) {
            long now = SystemClock.uptimeMillis();
            onMediaButtonDown(keyCode, new KeyEvent(now, now, 0, keyCode, 0));
            onMediaButtonUp(keyCode, new KeyEvent(now, now, 1, keyCode, 0));
        }
    }
}

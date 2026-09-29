package net.oneplus.h2launcher.quickpage.rebound;

import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class SpringChain implements SpringListener {
    private static final int DEFAULT_ATTACHMENT_FRICTION = 10;
    private static final int DEFAULT_ATTACHMENT_TENSION = 70;
    private static final int DEFAULT_MAIN_FRICTION = 6;
    private static final int DEFAULT_MAIN_TENSION = 40;
    static final String TAG = "SpringChain";
    private static int id = 0;
    private final SpringConfig mAttachmentSpringConfig;
    private int mControlSpringIndex;
    private final CopyOnWriteArrayList<SpringListener> mListeners;
    private final SpringConfig mMainSpringConfig;
    private final SpringSystem mSpringSystem;
    private final CopyOnWriteArrayList<Spring> mSprings;

    public static SpringChain create() {
        return new SpringChain();
    }

    public static SpringChain create(int mainTension, int mainFriction, int attachmentTension, int attachmentFriction) {
        return new SpringChain(mainTension, mainFriction, attachmentTension, attachmentFriction);
    }

    private SpringChain() {
        this(40, 6, 70, 10);
    }

    private SpringChain(int mainTension, int mainFriction, int attachmentTension, int attachmentFriction) {
        this.mSpringSystem = SpringSystem.create();
        this.mListeners = new CopyOnWriteArrayList<>();
        this.mSprings = new CopyOnWriteArrayList<>();
        this.mControlSpringIndex = -1;
        this.mMainSpringConfig = SpringConfig.fromOrigamiTensionAndFriction(mainTension, mainFriction);
        this.mAttachmentSpringConfig = SpringConfig.fromOrigamiTensionAndFriction(attachmentTension, attachmentFriction);
    }

    public SpringConfig getMainSpringConfig() {
        return this.mMainSpringConfig;
    }

    public SpringConfig getAttachmentSpringConfig() {
        return this.mAttachmentSpringConfig;
    }

    public SpringChain addSpring(SpringListener listener) {
        Spring spring = this.mSpringSystem.createSpring().addListener(this).setSpringConfig(this.mAttachmentSpringConfig);
        this.mSprings.add(spring);
        this.mListeners.add(listener);
        return this;
    }

    public SpringChain addSpring(int position, SpringListener listener) {
        if (this.mSprings.size() == position) {
            Spring spring = this.mSpringSystem.createSpring().addListener(this).setSpringConfig(this.mAttachmentSpringConfig);
            this.mSprings.add(position, spring);
            Logger.d(TAG, "adding spring at position " + position);
        } else if (this.mSprings.size() < position) {
            Logger.e(TAG, "Error adding spring chain with wrong position " + position);
        }
        if (this.mListeners.size() > position) {
            this.mListeners.set(position, listener);
            Logger.d(TAG, "adding spring listener at position " + position);
        } else if (this.mListeners.size() == position) {
            this.mListeners.add(position, listener);
            Logger.d(TAG, "adding spring listener at position " + position);
        } else {
            Logger.e(TAG, "Error adding spring listener with wrong position " + position);
        }
        return this;
    }

    public void removeSpring(int position) {
        Logger.d(TAG, "Removing spring at position " + position);
        if (position < this.mSprings.size() && position >= 0) {
            this.mSprings.remove(position);
        }
        if (position < this.mListeners.size() && position >= 0) {
            this.mListeners.remove(position);
        }
    }

    public SpringChain setControlSpringIndex(int i) {
        Logger.d(TAG, "setControlSpringIndex:" + i + ", size:" + this.mSprings.size());
        this.mControlSpringIndex = i;
        Spring controlSpring = this.mSprings.get(this.mControlSpringIndex);
        if (controlSpring == null) {
            return null;
        }
        for (Spring spring : this.mSpringSystem.getAllSprings()) {
            spring.setSpringConfig(this.mAttachmentSpringConfig);
            spring.setControlSpring(controlSpring);
        }
        getControlSpring().setSpringConfig(this.mMainSpringConfig);
        return this;
    }

    public int getControlSpringIndex() {
        return this.mControlSpringIndex;
    }

    public Spring getControlSpring() {
        return this.mSprings.get(this.mControlSpringIndex);
    }

    public List<Spring> getAllSprings() {
        return this.mSprings;
    }

    @Override // net.oneplus.h2launcher.quickpage.rebound.SpringListener
    public void onSpringUpdate(Spring spring) {
        int idx = this.mSprings.indexOf(spring);
        if (idx >= 0) {
            SpringListener listener = this.mListeners.get(idx);
            int above = -1;
            int below = -1;
            if (idx == this.mControlSpringIndex) {
                below = idx - 1;
                above = idx + 1;
            } else if (idx < this.mControlSpringIndex) {
                below = idx - 1;
            } else if (idx > this.mControlSpringIndex) {
                above = idx + 1;
            }
            if (above > -1 && above < this.mSprings.size()) {
                this.mSprings.get(above).setEndValue(spring.getCurrentValue());
            }
            if (below > -1 && below < this.mSprings.size()) {
                this.mSprings.get(below).setEndValue(spring.getCurrentValue());
            }
            if (listener != null) {
                listener.onSpringUpdate(spring);
            }
        }
    }

    @Override // net.oneplus.h2launcher.quickpage.rebound.SpringListener
    public void onSpringChainUpdate(Spring spring, Spring springControl) {
        int idx = this.mSprings.indexOf(spring);
        if (idx >= 0) {
            SpringListener listener = this.mListeners.get(idx);
            int above = -1;
            int below = -1;
            if (idx == this.mControlSpringIndex) {
                below = idx - 1;
                above = idx + 1;
            } else if (idx < this.mControlSpringIndex) {
                below = idx - 1;
            } else if (idx > this.mControlSpringIndex) {
                above = idx + 1;
            }
            if (above > -1 && above < this.mSprings.size()) {
                this.mSprings.get(above).setEndValue(spring.getCurrentValue());
            }
            if (below > -1 && below < this.mSprings.size()) {
                this.mSprings.get(below).setEndValue(spring.getCurrentValue());
            }
            Spring controlSpring = this.mSprings.get(this.mControlSpringIndex);
            if (listener != null) {
                listener.onSpringChainUpdate(spring, controlSpring);
            }
        }
    }

    @Override // net.oneplus.h2launcher.quickpage.rebound.SpringListener
    public void onSpringAtRest(Spring spring) {
    }

    @Override // net.oneplus.h2launcher.quickpage.rebound.SpringListener
    public void onSpringActivate(Spring spring) {
    }

    @Override // net.oneplus.h2launcher.quickpage.rebound.SpringListener
    public void onSpringEndStateChange(Spring spring) {
    }
}
